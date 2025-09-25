.class public final Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;
.super Ljava/lang/Object;
.source "Utils.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.android.kt\nandroidx/compose/ui/tooling/animation/clock/Utils_androidKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,281:1\n1360#2:282\n1446#2,5:283\n1#3:288\n174#4:289\n164#4:290\n154#4:291\n*S KotlinDebug\n*F\n+ 1 Utils.android.kt\nandroidx/compose/ui/tooling/animation/clock/Utils_androidKt\n*L\n60#1:282\n60#1:283,5\n183#1:289\n183#1:290\n183#1:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\u001a\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u001a\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0000\u001a5\u0010\n\u001a\n\u0012\u0004\u0012\u0002H\u000c\u0018\u00010\u000b\"\u0004\u0008\u0000\u0010\u000c2\u0006\u0010\r\u001a\u0002H\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0000\u00a2\u0006\u0002\u0010\u0011\u001a&\u0010\u0012\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0013R\u0006\u0012\u0002\u0008\u00030\u00140\u0001*\u0006\u0012\u0002\u0008\u00030\u0014H\u0000\u001aH\u0010\u0015\u001a\u00020\u0016\"\u0004\u0008\u0000\u0010\u000c\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0018*\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\u00170\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0006H\u0000\u001a>\u0010\u0015\u001a\u00020\u0016\"\u0004\u0008\u0000\u0010\u000c\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0018*\u0012\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\u00170\u001eR\u00020\u001f2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0000\u001aB\u0010\u0015\u001a\u00020\u0016\"\u0004\u0008\u0000\u0010\u000c\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0018\"\u0004\u0008\u0002\u0010!*\u0018\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\u00170\u0013R\u0008\u0012\u0004\u0012\u0002H!0\u00142\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0006H\u0000\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\"\u00b2\u0006\u001a\u0010#\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u000c\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0018X\u008a\u0084\u0002\u00b2\u0006&\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u000c0%\"\u0004\u0008\u0000\u0010\u000c\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0018X\u008a\u0084\u0002\u00b2\u0006&\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u000c0%\"\u0004\u0008\u0000\u0010\u000c\"\u0008\u0008\u0001\u0010\u0017*\u00020\u0018X\u008a\u0084\u0002"
    }
    d2 = {
        "IGNORE_TRANSITIONS",
        "",
        "",
        "getIGNORE_TRANSITIONS",
        "()Ljava/util/List;",
        "millisToNanos",
        "",
        "timeMs",
        "nanosToMillis",
        "timeNs",
        "parseParametersToValue",
        "Landroidx/compose/ui/tooling/animation/states/TargetState;",
        "T",
        "currentValue",
        "par1",
        "",
        "par2",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/ui/tooling/animation/states/TargetState;",
        "allAnimations",
        "Landroidx/compose/animation/core/Transition$TransitionAnimationState;",
        "Landroidx/compose/animation/core/Transition;",
        "createTransitionInfo",
        "Landroidx/compose/animation/tooling/TransitionInfo;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/Animation;",
        "label",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "stepMs",
        "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;",
        "Landroidx/compose/animation/core/InfiniteTransition;",
        "endTimeMs",
        "S",
        "ui-tooling_release",
        "startTimeMs",
        "values",
        ""
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final IGNORE_TRANSITIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "TransformOriginInterruptionHandling"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->IGNORE_TRANSITIONS:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createTransitionInfo$lambda$1(Lkotlin/Lazy;)J
    .locals 2
    .param p0, "$startTimeMs$delegate"    # Lkotlin/Lazy;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo$lambda$1(Lkotlin/Lazy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;
    .locals 9
    .param p0, "$this$allAnimations"    # Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "*>;)",
            "Ljava/util/List<",
            "Landroidx/compose/animation/core/Transition<",
            "*>.TransitionAnimationState<**>;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTransitions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 284
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/animation/core/Transition;

    .local v7, "it":Landroidx/compose/animation/core/Transition;
    const/4 v8, 0x0

    .line 60
    .local v8, "$i$a$-flatMap-Utils_androidKt$allAnimations$descendantAnimations$1":I
    invoke-static {v7}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->allAnimations(Landroidx/compose/animation/core/Transition;)Ljava/util/List;

    move-result-object v7

    .line 284
    .end local v7    # "it":Landroidx/compose/animation/core/Transition;
    .end local v8    # "$i$a$-flatMap-Utils_androidKt$allAnimations$descendantAnimations$1":I
    check-cast v7, Ljava/lang/Iterable;

    .line 285
    .local v7, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 287
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v7    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 282
    nop

    .line 60
    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    move-object v0, v2

    .line 61
    .local v0, "descendantAnimations":Ljava/util/List;
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getAnimations()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static final createTransitionInfo(Landroidx/compose/animation/core/Animation;Ljava/lang/String;Landroidx/compose/animation/core/AnimationSpec;J)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 14
    .param p0, "$this$createTransitionInfo"    # Landroidx/compose/animation/core/Animation;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "stepMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;J)",
            "Landroidx/compose/animation/tooling/TransitionInfo;"
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Landroidx/compose/animation/core/Animation;->getDurationNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->nanosToMillis(J)J

    move-result-wide v0

    .line 91
    .local v0, "endTimeMs":J
    new-instance v2, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;

    move-object/from16 v10, p2

    invoke-direct {v2, v10}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v11

    .line 112
    .local v11, "startTimeMs$delegate":Lkotlin/Lazy;
    new-instance v9, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;

    move-object v2, v9

    move-object v3, p0

    move-wide v4, v0

    move-wide/from16 v6, p3

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;-><init>(Landroidx/compose/animation/core/Animation;JJLkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v9}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v12

    .line 127
    .local v12, "values$delegate":Lkotlin/Lazy;
    new-instance v13, Landroidx/compose/animation/tooling/TransitionInfo;

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v11}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo$lambda$1(Lkotlin/Lazy;)J

    move-result-wide v5

    invoke-static {v12}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo$lambda$2(Lkotlin/Lazy;)Ljava/util/Map;

    move-result-object v9

    .line 127
    move-object v2, v13

    move-object v3, p1

    move-wide v7, v0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/animation/tooling/TransitionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;)V

    return-object v13
.end method

.method public static final createTransitionInfo(Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JJ)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 12
    .param p0, "$this$createTransitionInfo"    # Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
    .param p1, "stepMs"    # J
    .param p3, "endTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState<",
            "TT;TV;>;JJ)",
            "Landroidx/compose/animation/tooling/TransitionInfo;"
        }
    .end annotation

    .line 141
    const-wide/16 v8, 0x0

    .line 142
    .local v8, "startTimeMs":J
    new-instance v10, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$4;

    move-object v0, v10

    move-wide v1, v8

    move-object v3, p0

    move-wide v4, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$4;-><init>(JLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JJ)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v10}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v10

    .line 157
    .local v10, "values$delegate":Lkotlin/Lazy;
    new-instance v11, Landroidx/compose/animation/tooling/TransitionInfo;

    .line 158
    invoke-virtual {p0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v10}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo$lambda$3(Lkotlin/Lazy;)Ljava/util/Map;

    move-result-object v7

    .line 157
    move-object v0, v11

    move-wide v3, v8

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/tooling/TransitionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;)V

    return-object v11
.end method

.method public static final createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 3
    .param p0, "$this$createTransitionInfo"    # Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .param p1, "stepMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;J)",
            "Landroidx/compose/animation/tooling/TransitionInfo;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimation()Landroidx/compose/animation/core/TargetBasedAnimation;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/Animation;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo(Landroidx/compose/animation/core/Animation;Ljava/lang/String;Landroidx/compose/animation/core/AnimationSpec;J)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic createTransitionInfo$default(Landroidx/compose/animation/core/Animation;Ljava/lang/String;Landroidx/compose/animation/core/AnimationSpec;JILjava/lang/Object;)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 0

    .line 84
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 88
    const-wide/16 p3, 0x1

    .line 84
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo(Landroidx/compose/animation/core/Animation;Ljava/lang/String;Landroidx/compose/animation/core/AnimationSpec;J)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTransitionInfo$default(Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JJILjava/lang/Object;)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 0

    .line 136
    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    .line 138
    const-wide/16 p1, 0x1

    .line 136
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo(Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JJ)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTransitionInfo$default(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JILjava/lang/Object;)Landroidx/compose/animation/tooling/TransitionInfo;
    .locals 0

    .line 72
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 73
    const-wide/16 p1, 0x1

    .line 72
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo(Landroidx/compose/animation/core/Transition$TransitionAnimationState;J)Landroidx/compose/animation/tooling/TransitionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final createTransitionInfo$lambda$1(Lkotlin/Lazy;)J
    .locals 2
    .param p0, "$startTimeMs$delegate"    # Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final createTransitionInfo$lambda$2(Lkotlin/Lazy;)Ljava/util/Map;
    .locals 1
    .param p0, "$values$delegate"    # Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Lazy<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 112
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static final createTransitionInfo$lambda$3(Lkotlin/Lazy;)Ljava/util/Map;
    .locals 1
    .param p0, "$values$delegate"    # Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Lazy<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 142
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static final getIGNORE_TRANSITIONS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->IGNORE_TRANSITIONS:Ljava/util/List;

    return-object v0
.end method

.method public static final millisToNanos(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .line 53
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static final nanosToMillis(J)J
    .locals 4
    .param p0, "timeNs"    # J

    .line 48
    const v0, 0xf423f

    int-to-long v0, v0

    add-long/2addr v0, p0

    const v2, 0xf4240

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static final parseParametersToValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/ui/tooling/animation/states/TargetState;
    .locals 19
    .param p0, "currentValue"    # Ljava/lang/Object;
    .param p1, "par1"    # Ljava/lang/Object;
    .param p2, "par2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/ui/tooling/animation/states/TargetState<",
            "TT;>;"
        }
    .end annotation

    .line 170
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return-object v4

    .line 197
    :cond_0
    invoke-static/range {p0 .. p2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$parseDp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/ui/tooling/animation/states/TargetState;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v4, v5

    .line 288
    .local v4, "it":Landroidx/compose/ui/tooling/animation/states/TargetState;
    const/4 v5, 0x0

    .line 197
    .local v5, "$i$a$-let-Utils_androidKt$parseParametersToValue$1":I
    return-object v4

    .line 199
    .end local v4    # "it":Landroidx/compose/ui/tooling/animation/states/TargetState;
    .end local v5    # "$i$a$-let-Utils_androidKt$parseParametersToValue$1":I
    :cond_1
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$parametersAreValid(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    .line 201
    :cond_2
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p0 .. p2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$parametersHasTheSameType(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    new-instance v4, Landroidx/compose/ui/tooling/animation/states/TargetState;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 205
    :cond_3
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_c

    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_c

    .line 206
    nop

    .line 207
    nop

    .line 208
    :try_start_0
    instance-of v5, v1, Landroidx/compose/ui/unit/IntSize;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Int"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    :try_start_1
    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    .line 209
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v9

    .line 210
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v6

    .line 208
    invoke-direct {v5, v9, v6}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    :cond_4
    instance-of v5, v1, Landroidx/compose/ui/unit/IntOffset;

    if-eqz v5, :cond_5

    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    .line 214
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v9

    .line 215
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v6

    .line 213
    invoke-direct {v5, v9, v6}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    instance-of v5, v1, Landroidx/compose/ui/geometry/Size;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.Float"

    if-eqz v5, :cond_6

    :try_start_2
    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    .line 219
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v9

    .line 220
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v8, v6}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v6

    .line 218
    invoke-direct {v5, v9, v6}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    :cond_6
    instance-of v5, v1, Landroidx/compose/ui/geometry/Offset;

    if-eqz v5, :cond_7

    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    .line 224
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v9

    .line 225
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v10, v3

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v8, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v6

    .line 223
    invoke-direct {v5, v9, v6}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 228
    :cond_7
    instance-of v5, v1, Landroidx/compose/ui/geometry/Rect;

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v5, :cond_8

    .line 229
    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    .line 230
    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    .line 231
    move-object v12, v2

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 232
    move-object v13, v2

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 233
    move-object v14, v2

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 234
    move-object v15, v2

    check-cast v15, Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 230
    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 236
    new-instance v12, Landroidx/compose/ui/geometry/Rect;

    .line 237
    move-object v13, v3

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 238
    move-object v13, v3

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 239
    move-object v13, v3

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 240
    move-object v13, v3

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 236
    invoke-direct {v12, v8, v7, v10, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 229
    invoke-direct {v5, v11, v12}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_8
    instance-of v5, v1, Landroidx/compose/ui/graphics/Color;

    if-eqz v5, :cond_9

    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    .line 246
    move-object v11, v2

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 247
    move-object v11, v2

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 248
    move-object v11, v2

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 249
    move-object v11, v2

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 245
    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/graphics/ColorKt;->Color$default(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v11

    .line 252
    move-object v12, v3

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 253
    move-object v8, v3

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 254
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 255
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 251
    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/graphics/ColorKt;->Color$default(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    .line 244
    invoke-direct {v5, v11, v6}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_9
    instance-of v5, v1, Landroidx/compose/ui/unit/Dp;

    if-eqz v5, :cond_a

    .line 260
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$parseDp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/ui/tooling/animation/states/TargetState;

    move-result-object v5

    goto :goto_0

    .line 263
    :cond_a
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$parametersAreValid(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 264
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$parametersHasTheSameType(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 265
    new-instance v5, Landroidx/compose/ui/tooling/animation/states/TargetState;

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    :goto_0
    nop

    .line 265
    const-string/jumbo v6, "null cannot be cast to non-null type androidx.compose.ui.tooling.animation.states.TargetState<T of androidx.compose.ui.tooling.animation.clock.Utils_androidKt.parseParametersToValue>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    return-object v5

    .line 266
    :cond_b
    return-object v4

    .line 275
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 276
    .local v5, "_":Ljava/lang/NullPointerException;
    return-object v4

    .line 273
    .end local v5    # "_":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 274
    .local v5, "_":Ljava/lang/IllegalArgumentException;
    return-object v4

    .line 271
    .end local v5    # "_":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 272
    .local v5, "_":Ljava/lang/ClassCastException;
    return-object v4

    .line 269
    .end local v5    # "_":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    move-object v5, v0

    .line 270
    .local v5, "_":Ljava/lang/IndexOutOfBoundsException;
    return-object v4

    .line 279
    .end local v5    # "_":Ljava/lang/IndexOutOfBoundsException;
    :cond_c
    return-object v4
.end method

.method private static final parseParametersToValue$getDp(Ljava/lang/Object;)Landroidx/compose/ui/unit/Dp;
    .locals 5
    .param p0, "par"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p0, Landroidx/compose/ui/unit/Dp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "$this$dp$iv":F
    const/4 v2, 0x0

    .line 289
    .local v2, "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 183
    .end local v0    # "$this$dp$iv":F
    .end local v2    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .local v2, "$this$dp$iv":D
    const/4 v0, 0x0

    .line 290
    .local v0, "$i$f$getDp":I
    double-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 183
    .end local v0    # "$i$f$getDp":I
    .end local v2    # "$this$dp$iv":D
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 291
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    goto :goto_6

    .line 183
    :cond_6
    move-object v1, v0

    :cond_7
    :goto_6
    return-object v1
.end method

.method private static final parseParametersToValue$parametersAreValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "par1"    # Ljava/lang/Object;
    .param p1, "par2"    # Ljava/lang/Object;

    .line 174
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final parseParametersToValue$parametersHasTheSameType(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "par1"    # Ljava/lang/Object;
    .param p2, "par2"    # Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final parseParametersToValue$parseDp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/ui/tooling/animation/states/TargetState;
    .locals 3
    .param p0, "$currentValue"    # Ljava/lang/Object;
    .param p1, "par1"    # Ljava/lang/Object;
    .param p2, "par2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/ui/tooling/animation/states/TargetState<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .line 187
    instance-of v0, p0, Landroidx/compose/ui/unit/Dp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/unit/Dp;

    if-eqz v0, :cond_1

    instance-of v0, p2, Landroidx/compose/ui/unit/Dp;

    if-eqz v0, :cond_1

    .line 189
    new-instance v1, Landroidx/compose/ui/tooling/animation/states/TargetState;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$getDp(Ljava/lang/Object;)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    .line 191
    .local v0, "dp1":Landroidx/compose/ui/unit/Dp;
    invoke-static {p2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->parseParametersToValue$getDp(Ljava/lang/Object;)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    .line 192
    .local v2, "dp2":Landroidx/compose/ui/unit/Dp;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 193
    new-instance v1, Landroidx/compose/ui/tooling/animation/states/TargetState;

    invoke-direct {v1, v0, v2}, Landroidx/compose/ui/tooling/animation/states/TargetState;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    nop

    .line 188
    .end local v0    # "dp1":Landroidx/compose/ui/unit/Dp;
    .end local v2    # "dp2":Landroidx/compose/ui/unit/Dp;
    :goto_0
    return-object v1

    .line 187
    :cond_3
    :goto_1
    return-object v1
.end method
