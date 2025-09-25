.class public final Landroidx/compose/runtime/RecomposeScopeImpl;
.super Ljava/lang/Object;
.source "RecomposeScopeImpl.kt"

# interfaces
.implements Landroidx/compose/runtime/ScopeUpdateScope;
.implements Landroidx/compose/runtime/RecomposeScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/RecomposeScopeImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,444:1\n82#2:445\n1#3:446\n1726#4,3:447\n401#5,4:450\n373#5,6:454\n383#5,3:461\n386#5,2:465\n406#5,2:467\n389#5,6:469\n408#5:475\n449#5:476\n401#5,4:477\n373#5,6:481\n383#5,3:488\n386#5,2:492\n406#5:494\n450#5,2:495\n407#5:497\n389#5,6:498\n408#5:504\n452#5:505\n1810#6:460\n1672#6:464\n1810#6:487\n1672#6:491\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl\n*L\n197#1:445\n353#1:447,3\n371#1:450,4\n371#1:454,6\n371#1:461,3\n371#1:465,2\n371#1:467,2\n371#1:469,6\n371#1:475\n394#1:476\n394#1:477,4\n394#1:481,6\n394#1:488,3\n394#1:492,2\n394#1:494\n394#1:495,2\n394#1:497\n394#1:498,6\n394#1:504\n394#1:505\n371#1:460\n371#1:464\n394#1:487\n394#1:491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 R2\u00020\u00012\u00020\u0002:\u0001RB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010;\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010<\u001a\u00020\u00102\u0006\u0010=\u001a\u00020\u000eJ\u001c\u0010>\u001a\u0010\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0010\u0018\u00010?2\u0006\u0010A\u001a\u00020\u000fJ\u0008\u0010B\u001a\u00020\u0010H\u0016J\u0010\u0010C\u001a\u00020D2\u0008\u0010\u0016\u001a\u0004\u0018\u000103J\u0016\u0010E\u001a\u00020\u00122\u000e\u0010F\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010GJ\u0015\u0010H\u001a\u00020I2\u0006\u0010#\u001a\u00020$H\u0001\u00a2\u0006\u0002\u0008JJ\u000e\u0010K\u001a\u00020\u00122\u0006\u0010L\u001a\u000203J\u0006\u0010M\u001a\u00020\u0010J\u0006\u0010N\u001a\u00020\u0010J\u0006\u0010O\u001a\u00020\u0010J\u000e\u0010P\u001a\u00020\u00102\u0006\u0010A\u001a\u00020\u000fJ\"\u0010Q\u001a\u00020\u00102\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\rH\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0014\"\u0004\u0008\u001d\u0010\u001aR\u000e\u0010\u001e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010\u0014\"\u0004\u0008!\u0010\u001aR\u0011\u0010\"\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0014R\u001a\u0010#\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008%\u0010&R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\'\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010\u0014\"\u0004\u0008)\u0010\u001aR$\u0010*\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\u0014\"\u0004\u0008,\u0010\u001aR$\u0010-\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128@@BX\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u0014\"\u0004\u0008/\u0010\u001aR\"\u00100\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u000302\u0012\u0006\u0012\u0004\u0018\u000103\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u00104\u001a\n\u0012\u0004\u0012\u000203\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u00106\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u0010\u0014\"\u0004\u00088\u0010\u001aR\u0011\u00109\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u0014\u00a8\u0006S"
    }
    d2 = {
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "Landroidx/compose/runtime/ScopeUpdateScope;",
        "Landroidx/compose/runtime/RecomposeScope;",
        "owner",
        "Landroidx/compose/runtime/RecomposeScopeOwner;",
        "(Landroidx/compose/runtime/RecomposeScopeOwner;)V",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "getAnchor",
        "()Landroidx/compose/runtime/Anchor;",
        "setAnchor",
        "(Landroidx/compose/runtime/Anchor;)V",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/runtime/Composer;",
        "",
        "",
        "canRecompose",
        "",
        "getCanRecompose",
        "()Z",
        "currentToken",
        "value",
        "defaultsInScope",
        "getDefaultsInScope",
        "setDefaultsInScope",
        "(Z)V",
        "defaultsInvalid",
        "getDefaultsInvalid",
        "setDefaultsInvalid",
        "flags",
        "forcedRecompose",
        "getForcedRecompose",
        "setForcedRecompose",
        "isConditional",
        "observer",
        "Landroidx/compose/runtime/tooling/RecomposeScopeObserver;",
        "getObserver$annotations",
        "()V",
        "requiresRecompose",
        "getRequiresRecompose",
        "setRequiresRecompose",
        "rereading",
        "getRereading",
        "setRereading",
        "skipped",
        "getSkipped$runtime_release",
        "setSkipped",
        "trackedDependencies",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/runtime/DerivedState;",
        "",
        "trackedInstances",
        "Landroidx/collection/MutableObjectIntMap;",
        "used",
        "getUsed",
        "setUsed",
        "valid",
        "getValid",
        "adoptedBy",
        "compose",
        "composer",
        "end",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composition;",
        "token",
        "invalidate",
        "invalidateForResult",
        "Landroidx/compose/runtime/InvalidationResult;",
        "isInvalidFor",
        "instances",
        "Landroidx/compose/runtime/collection/IdentityArraySet;",
        "observe",
        "Landroidx/compose/runtime/tooling/CompositionObserverHandle;",
        "observe$runtime_release",
        "recordRead",
        "instance",
        "release",
        "rereadTrackedInstances",
        "scopeSkipped",
        "start",
        "updateScope",
        "Companion",
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

.field public static final Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;


# instance fields
.field private anchor:Landroidx/compose/runtime/Anchor;

.field private block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentToken:I

.field private flags:I

.field private observer:Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

.field private owner:Landroidx/compose/runtime/RecomposeScopeOwner;

.field private trackedDependencies:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private trackedInstances:Landroidx/collection/MutableObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/RecomposeScopeImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V
    .locals 0
    .param p1, "owner"    # Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 79
    return-void
.end method

.method public static final synthetic access$getCurrentToken$p(Landroidx/compose/runtime/RecomposeScopeImpl;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    return v0
.end method

.method public static final synthetic access$getObserver$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/compose/runtime/tooling/RecomposeScopeObserver;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->observer:Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    return-object v0
.end method

.method public static final synthetic access$getTrackedDependencies$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/collection/MutableScatterMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    return-object v0
.end method

.method public static final synthetic access$getTrackedInstances$p(Landroidx/compose/runtime/RecomposeScopeImpl;)Landroidx/collection/MutableObjectIntMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    return-object v0
.end method

.method public static final synthetic access$setObserver$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/tooling/RecomposeScopeObserver;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p1, "<set-?>"    # Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    .line 79
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->observer:Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    return-void
.end method

.method public static final synthetic access$setTrackedDependencies$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/collection/MutableScatterMap;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p1, "<set-?>"    # Landroidx/collection/MutableScatterMap;

    .line 79
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method public static final synthetic access$setTrackedInstances$p(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/collection/MutableObjectIntMap;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p1, "<set-?>"    # Landroidx/collection/MutableObjectIntMap;

    .line 79
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    return-void
.end method

.method private static synthetic getObserver$annotations()V
    .locals 0

    return-void
.end method

.method private final getRereading()Z
    .locals 1

    .line 259
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final setRereading(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 264
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 266
    :goto_0
    return-void
.end method

.method private final setSkipped(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 292
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 294
    :goto_0
    return-void
.end method


# virtual methods
.method public final adoptedBy(Landroidx/compose/runtime/RecomposeScopeOwner;)V
    .locals 0
    .param p1, "owner"    # Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 236
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 237
    return-void
.end method

.method public final compose(Landroidx/compose/runtime/Composer;)V
    .locals 4
    .param p1, "composer"    # Landroidx/compose/runtime/Composer;

    .line 181
    nop

    .line 192
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 182
    .local v0, "block":Lkotlin/jvm/functions/Function2;
    iget-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->observer:Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    .line 183
    .local v1, "observer":Landroidx/compose/runtime/tooling/RecomposeScopeObserver;
    const/4 v2, 0x1

    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 183
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 184
    move-object v3, p0

    check-cast v3, Landroidx/compose/runtime/RecomposeScope;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/tooling/RecomposeScopeObserver;->onBeginScopeComposition(Landroidx/compose/runtime/RecomposeScope;)V

    .line 185
    nop

    .line 186
    :try_start_0
    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    move-object v2, p0

    check-cast v2, Landroidx/compose/runtime/RecomposeScope;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/tooling/RecomposeScopeObserver;->onEndScopeComposition(Landroidx/compose/runtime/RecomposeScope;)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v2

    move-object v3, p0

    check-cast v3, Landroidx/compose/runtime/RecomposeScope;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/tooling/RecomposeScopeObserver;->onEndScopeComposition(Landroidx/compose/runtime/RecomposeScope;)V

    throw v2

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 193
    return-void

    .line 192
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid restart scope"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final end(I)Lkotlin/jvm/functions/Function1;
    .locals 30
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/runtime/Composition;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v2, :cond_b

    .local v2, "instances":Landroidx/collection/MutableObjectIntMap;
    const/4 v4, 0x0

    .line 393
    .local v4, "$i$a$-let-RecomposeScopeImpl$end$1":I
    nop

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime_release()Z

    move-result v5

    if-nez v5, :cond_9

    move-object v5, v2

    check-cast v5, Landroidx/collection/ObjectIntMap;

    .local v5, "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v6, 0x0

    .line 476
    .local v6, "$i$f$any":I
    move-object v7, v5

    .local v7, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v8, 0x0

    .line 477
    .local v8, "$i$f$forEach":I
    iget-object v9, v7, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 478
    .local v9, "k$iv$iv":[Ljava/lang/Object;
    iget-object v10, v7, Landroidx/collection/ObjectIntMap;->values:[I

    .line 480
    .local v10, "v$iv$iv":[I
    move-object v11, v7

    .local v11, "this_$iv$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v12, 0x0

    .line 481
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v11, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 482
    .local v13, "m$iv$iv$iv":[J
    array-length v14, v13

    add-int/lit8 v14, v14, -0x2

    .line 484
    .local v14, "lastIndex$iv$iv$iv":I
    const/4 v15, 0x0

    .local v15, "i$iv$iv$iv":I
    const/16 v16, 0x0

    if-gt v15, v14, :cond_6

    .line 485
    :goto_0
    aget-wide v17, v13, v15

    .line 486
    .local v17, "slot$iv$iv$iv":J
    move-wide/from16 v19, v17

    .local v19, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v21, 0x0

    .line 487
    .local v21, "$i$f$maskEmptyOrDeleted":I
    move/from16 v22, v4

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move/from16 v20, v6

    .end local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .end local v5    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v6    # "$i$f$any":I
    .local v3, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v19, "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v20, "$i$f$any":I
    .local v22, "$i$a$-let-RecomposeScopeImpl$end$1":I
    not-long v5, v3

    const/16 v23, 0x7

    shl-long v5, v5, v23

    and-long/2addr v5, v3

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v5, v23

    .line 486
    .end local v3    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v21    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v23

    if-eqz v3, :cond_5

    .line 488
    sub-int v3, v15, v14

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 489
    .local v3, "bitCount$iv$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv$iv":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 490
    const-wide/16 v23, 0xff

    and-long v23, v17, v23

    .local v23, "value$iv$iv$iv$iv":J
    const/4 v6, 0x0

    .line 491
    .local v6, "$i$f$isFull":I
    const-wide/16 v25, 0x80

    cmp-long v21, v23, v25

    const/16 v25, 0x1

    if-gez v21, :cond_0

    move/from16 v6, v25

    goto :goto_2

    :cond_0
    move/from16 v6, v16

    .line 490
    .end local v6    # "$i$f$isFull":I
    .end local v23    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v6, :cond_3

    .line 492
    shl-int/lit8 v6, v15, 0x3

    add-int/2addr v6, v5

    .line 493
    .local v6, "index$iv$iv$iv":I
    move/from16 v21, v6

    .local v21, "index$iv$iv":I
    const/16 v23, 0x0

    .line 494
    .local v23, "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv$iv":I
    aget-object v24, v9, v21

    .local v24, "key$iv":Ljava/lang/Object;
    aget v26, v10, v21

    .local v26, "value$iv":I
    const/16 v27, 0x0

    .line 495
    .local v27, "$i$a$-forEach-ObjectIntMap$any$1$iv":I
    move/from16 v28, v26

    .local v28, "instanceToken":I
    const/16 v29, 0x0

    .line 394
    .local v29, "$i$a$-any-RecomposeScopeImpl$end$1$1":I
    move/from16 v4, v28

    .end local v28    # "instanceToken":I
    .local v4, "instanceToken":I
    if-eq v4, v1, :cond_1

    move/from16 v4, v25

    goto :goto_3

    :cond_1
    move/from16 v4, v16

    .line 495
    .end local v4    # "instanceToken":I
    .end local v29    # "$i$a$-any-RecomposeScopeImpl$end$1$1":I
    :goto_3
    if-eqz v4, :cond_2

    move/from16 v16, v25

    goto :goto_4

    .line 496
    :cond_2
    nop

    .line 494
    .end local v24    # "key$iv":Ljava/lang/Object;
    .end local v26    # "value$iv":I
    .end local v27    # "$i$a$-forEach-ObjectIntMap$any$1$iv":I
    nop

    .line 497
    nop

    .line 493
    .end local v21    # "index$iv$iv":I
    .end local v23    # "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv$iv":I
    nop

    .line 498
    .end local v6    # "index$iv$iv$iv":I
    :cond_3
    const/16 v4, 0x8

    shr-long v17, v17, v4

    .line 489
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 500
    .end local v5    # "j$iv$iv$iv":I
    :cond_4
    if-ne v3, v4, :cond_8

    .line 484
    .end local v3    # "bitCount$iv$iv$iv":I
    .end local v17    # "slot$iv$iv$iv":J
    :cond_5
    if-eq v15, v14, :cond_7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v4, v22

    goto :goto_0

    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v20    # "$i$f$any":I
    .end local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .local v4, "$i$a$-let-RecomposeScopeImpl$end$1":I
    .local v5, "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v6, "$i$f$any":I
    :cond_6
    move/from16 v22, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    .line 503
    .end local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .end local v5    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v6    # "$i$f$any":I
    .end local v15    # "i$iv$iv$iv":I
    .restart local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v20    # "$i$f$any":I
    .restart local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :cond_7
    nop

    .line 504
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv$iv":I
    :cond_8
    nop

    .line 505
    .end local v7    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "k$iv$iv":[Ljava/lang/Object;
    .end local v10    # "v$iv$iv":[I
    nop

    .line 394
    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v20    # "$i$f$any":I
    :goto_4
    if-eqz v16, :cond_a

    .line 395
    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;

    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    goto :goto_5

    .line 394
    .end local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .restart local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :cond_9
    move/from16 v22, v4

    .line 418
    .end local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .restart local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :cond_a
    const/4 v3, 0x0

    .line 393
    :goto_5
    nop

    .line 387
    .end local v2    # "instances":Landroidx/collection/MutableObjectIntMap;
    .end local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    return-object v3
.end method

.method public final getAnchor()Landroidx/compose/runtime/Anchor;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    return-object v0
.end method

.method public final getCanRecompose()Z
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDefaultsInScope()Z
    .locals 1

    .line 124
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDefaultsInvalid()Z
    .locals 1

    .line 138
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getForcedRecompose()Z
    .locals 1

    .line 274
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getRequiresRecompose()Z
    .locals 1

    .line 153
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSkipped$runtime_release()Z
    .locals 1

    .line 287
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getUsed()Z
    .locals 2

    .line 108
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getValid()Z
    .locals 2

    .line 98
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public invalidate()V
    .locals 2

    .line 246
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroidx/compose/runtime/RecomposeScopeOwner;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 247
    :cond_0
    return-void
.end method

.method public final invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroidx/compose/runtime/RecomposeScopeOwner;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    :cond_1
    return-object v0
.end method

.method public final isConditional()Z
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInvalidFor(Landroidx/compose/runtime/collection/IdentityArraySet;)Z
    .locals 14
    .param p1, "instances"    # Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 349
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 350
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v1, :cond_1

    return v0

    .line 351
    .local v1, "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :cond_1
    nop

    .line 352
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 447
    .local v3, "$i$f$all":I
    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v0

    goto :goto_1

    .line 448
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "instance":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 354
    .local v8, "$i$a$-all-RecomposeScopeImpl$isInvalidFor$1":I
    instance-of v9, v7, Landroidx/compose/runtime/DerivedState;

    if-eqz v9, :cond_5

    move-object v9, v7

    check-cast v9, Landroidx/compose/runtime/DerivedState;

    .local v9, "it":Landroidx/compose/runtime/DerivedState;
    const/4 v10, 0x0

    .line 356
    .local v10, "$i$a$-let-RecomposeScopeImpl$isInvalidFor$1$1":I
    nop

    .line 357
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v11

    .line 358
    .local v11, "policy":Landroidx/compose/runtime/SnapshotMutationPolicy;
    :cond_4
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 354
    .end local v9    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v10    # "$i$a$-let-RecomposeScopeImpl$isInvalidFor$1$1":I
    .end local v11    # "policy":Landroidx/compose/runtime/SnapshotMutationPolicy;
    if-eqz v9, :cond_5

    move v9, v0

    goto :goto_0

    :cond_5
    move v9, v5

    .line 448
    .end local v7    # "instance":Ljava/lang/Object;
    .end local v8    # "$i$a$-all-RecomposeScopeImpl$isInvalidFor$1":I
    :goto_0
    if-nez v9, :cond_3

    move v2, v5

    goto :goto_1

    .line 449
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_6
    move v2, v0

    .line 353
    .end local v2    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$all":I
    :goto_1
    if-eqz v2, :cond_7

    .line 362
    return v5

    .line 363
    :cond_7
    return v0
.end method

.method public final observe$runtime_release(Landroidx/compose/runtime/tooling/RecomposeScopeObserver;)Landroidx/compose/runtime/tooling/CompositionObserverHandle;
    .locals 3
    .param p1, "observer"    # Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    .line 197
    invoke-static {}, Landroidx/compose/runtime/RecomposeScopeImplKt;->access$getCallbackLock$p()Ljava/lang/Object;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 445
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 198
    .local v2, "$i$a$-synchronized-RecomposeScopeImpl$observe$1":I
    :try_start_0
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->observer:Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    .line 199
    nop

    .end local v2    # "$i$a$-synchronized-RecomposeScopeImpl$observe$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit v0

    .line 200
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl$observe$2;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl$observe$2;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/tooling/RecomposeScopeObserver;)V

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionObserverHandle;

    return-object v0

    .line 445
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final recordRead(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;

    .line 315
    invoke-direct {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRereading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 317
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v0, v1, v3, v2}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v0

    .line 446
    .local v4, "it":Landroidx/collection/MutableObjectIntMap;
    const/4 v5, 0x0

    .line 317
    .local v5, "$i$a$-also-RecomposeScopeImpl$recordRead$token$1":I
    iput-object v4, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 318
    .end local v4    # "it":Landroidx/collection/MutableObjectIntMap;
    .end local v5    # "$i$a$-also-RecomposeScopeImpl$recordRead$token$1":I
    :cond_1
    iget v4, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    const/4 v5, -0x1

    invoke-virtual {v0, p1, v4, v5}, Landroidx/collection/MutableObjectIntMap;->put(Ljava/lang/Object;II)I

    move-result v0

    .line 317
    nop

    .line 320
    .local v0, "token":I
    iget v4, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    if-ne v0, v4, :cond_2

    .line 321
    return v3

    .line 324
    :cond_2
    instance-of v4, p1, Landroidx/compose/runtime/DerivedState;

    if-eqz v4, :cond_4

    .line 325
    iget-object v4, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v4, :cond_3

    new-instance v4, Landroidx/collection/MutableScatterMap;

    invoke-direct {v4, v1, v3, v2}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v4

    .local v2, "it":Landroidx/collection/MutableScatterMap;
    const/4 v3, 0x0

    .line 326
    .local v3, "$i$a$-also-RecomposeScopeImpl$recordRead$tracked$1":I
    iput-object v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 327
    nop

    .line 325
    .end local v2    # "it":Landroidx/collection/MutableScatterMap;
    .end local v3    # "$i$a$-also-RecomposeScopeImpl$recordRead$tracked$1":I
    nop

    :cond_3
    move-object v2, v4

    .line 328
    .local v2, "tracked":Landroidx/collection/MutableScatterMap;
    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v3}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    .end local v2    # "tracked":Landroidx/collection/MutableScatterMap;
    :cond_4
    return v1
.end method

.method public final release()V
    .locals 2

    .line 223
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/compose/runtime/RecomposeScopeOwner;->recomposeScopeReleased(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 225
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 226
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 228
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->observer:Landroidx/compose/runtime/tooling/RecomposeScopeObserver;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/RecomposeScope;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/tooling/RecomposeScopeObserver;->onScopeDisposed(Landroidx/compose/runtime/RecomposeScope;)V

    .line 229
    :cond_1
    return-void
.end method

.method public final rereadTrackedInstances()V
    .locals 25

    .line 367
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_7

    move-object v2, v0

    .local v2, "owner":Landroidx/compose/runtime/RecomposeScopeOwner;
    const/4 v3, 0x0

    .line 368
    .local v3, "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1":I
    iget-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v0, :cond_7

    move-object v4, v0

    .local v4, "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    const/4 v5, 0x0

    .line 369
    .local v5, "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 370
    nop

    .line 371
    :try_start_0
    move-object v7, v4

    check-cast v7, Landroidx/collection/ObjectIntMap;

    .local v7, "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v8, 0x0

    .line 450
    .local v8, "$i$f$forEach":I
    iget-object v9, v7, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 451
    .local v9, "k$iv":[Ljava/lang/Object;
    iget-object v10, v7, Landroidx/collection/ObjectIntMap;->values:[I

    .line 453
    .local v10, "v$iv":[I
    move-object v11, v7

    .local v11, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v12, 0x0

    .line 454
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v11, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 455
    .local v13, "m$iv$iv":[J
    array-length v14, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v14, v14, -0x2

    .line 457
    .local v14, "lastIndex$iv$iv":I
    const/4 v15, 0x0

    .local v15, "i$iv$iv":I
    if-gt v15, v14, :cond_4

    .line 458
    :goto_0
    :try_start_1
    aget-wide v16, v13, v15

    .line 459
    .local v16, "slot$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v20, 0x0

    .line 460
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v0, v18

    move-object/from16 v19, v7

    .end local v7    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v18    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v0, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v19, "this_$iv":Landroidx/collection/ObjectIntMap;
    not-long v6, v0

    const/16 v21, 0x7

    shl-long v6, v6, v21

    and-long/2addr v6, v0

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v6, v21

    .line 459
    .end local v0    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v21

    if-eqz v0, :cond_3

    .line 461
    sub-int v0, v15, v14

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 462
    .local v0, "bitCount$iv$iv":I
    const/4 v6, 0x0

    .local v6, "j$iv$iv":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 463
    const-wide/16 v21, 0xff

    and-long v21, v16, v21

    .local v21, "value$iv$iv$iv":J
    const/4 v7, 0x0

    .line 464
    .local v7, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v20, v21, v23

    if-gez v20, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 463
    .end local v7    # "$i$f$isFull":I
    .end local v21    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v7, :cond_1

    .line 465
    shl-int/lit8 v7, v15, 0x3

    add-int/2addr v7, v6

    .line 466
    .local v7, "index$iv$iv":I
    move/from16 v20, v7

    .local v20, "index$iv":I
    const/16 v21, 0x0

    .line 467
    .local v21, "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv":I
    aget-object v22, v9, v20

    aget v23, v10, v20

    move-object/from16 v23, v22

    .local v23, "value":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 372
    .local v22, "$i$a$-forEach-RecomposeScopeImpl$rereadTrackedInstances$1$1$1":I
    move-object/from16 v1, v23

    .end local v23    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/RecomposeScopeOwner;->recordReadOf(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    nop

    .line 467
    .end local v1    # "value":Ljava/lang/Object;
    .end local v22    # "$i$a$-forEach-RecomposeScopeImpl$rereadTrackedInstances$1$1$1":I
    nop

    .line 468
    nop

    .line 466
    .end local v20    # "index$iv":I
    .end local v21    # "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv":I
    nop

    .line 469
    .end local v7    # "index$iv$iv":I
    :cond_1
    const/16 v1, 0x8

    shr-long v16, v16, v1

    .line 462
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 471
    .end local v6    # "j$iv$iv":I
    :cond_2
    if-ne v0, v1, :cond_6

    .line 457
    .end local v0    # "bitCount$iv$iv":I
    .end local v16    # "slot$iv$iv":J
    :cond_3
    if-eq v15, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, v19

    goto :goto_0

    .line 375
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "v$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv":I
    .end local v15    # "i$iv$iv":I
    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_3

    .line 457
    .local v7, "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v8    # "$i$f$forEach":I
    .restart local v9    # "k$iv":[Ljava/lang/Object;
    .restart local v10    # "v$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .restart local v14    # "lastIndex$iv$iv":I
    .restart local v15    # "i$iv$iv":I
    :cond_4
    move-object/from16 v19, v7

    .line 474
    .end local v7    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v15    # "i$iv$iv":I
    .restart local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_5
    nop

    .line 475
    .end local v11    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 375
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "v$iv":[I
    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct {v1, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 376
    nop

    .line 377
    nop

    .line 368
    .end local v4    # "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    .end local v5    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    goto :goto_4

    .line 375
    .restart local v4    # "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    .restart local v5    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    :catchall_1
    move-exception v0

    :goto_3
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    throw v0

    .line 367
    .end local v2    # "owner":Landroidx/compose/runtime/RecomposeScopeOwner;
    .end local v3    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1":I
    .end local v4    # "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    .end local v5    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    :cond_7
    :goto_4
    nop

    .line 379
    return-void
.end method

.method public final scopeSkipped()V
    .locals 1

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setSkipped(Z)V

    .line 308
    return-void
.end method

.method public final setAnchor(Landroidx/compose/runtime/Anchor;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/Anchor;

    .line 91
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    return-void
.end method

.method public final setDefaultsInScope(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 129
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 131
    :goto_0
    return-void
.end method

.method public final setDefaultsInvalid(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 143
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 145
    :goto_0
    return-void
.end method

.method public final setForcedRecompose(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 279
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 281
    :goto_0
    return-void
.end method

.method public final setRequiresRecompose(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 158
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 160
    :goto_0
    return-void
.end method

.method public final setUsed(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_0

    .line 113
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 115
    :goto_0
    return-void
.end method

.method public final start(I)V
    .locals 1
    .param p1, "token"    # I

    .line 302
    iput p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setSkipped(Z)V

    .line 304
    return-void
.end method

.method public updateScope(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    return-void
.end method
