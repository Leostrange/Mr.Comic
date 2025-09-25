.class public final Landroidx/compose/animation/core/AnimationSpecKt;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a,\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0007\u001a@\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a3\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u000c\"\u0004\u0008\u0000\u0010\u00022\u001d\u0010\r\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0002\u0008\u0011H\u0007\u001a3\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0013\"\u0004\u0008\u0000\u0010\u00022\u001d\u0010\r\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0014\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0002\u0008\u0011H\u0007\u001a4\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0016\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0007\u001aH\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0016\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\u001e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u001c\"\u0004\u0008\u0000\u0010\u00022\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0018H\u0007\u001a9\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u001f\"\u0004\u0008\u0000\u0010\u00022\u0008\u0008\u0002\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020!2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u0001H\u0002H\u0007\u00a2\u0006\u0002\u0010$\u001a2\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00020&\"\u0004\u0008\u0000\u0010\u00022\u0008\u0008\u0002\u0010\'\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00182\u0008\u0008\u0002\u0010(\u001a\u00020)H\u0007\u001a9\u0010*\u001a\u0004\u0018\u0001H+\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010+*\u00020,*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H+0-2\u0008\u0010.\u001a\u0004\u0018\u0001H\u0002H\u0002\u00a2\u0006\u0002\u0010/\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00060"
    }
    d2 = {
        "infiniteRepeatable",
        "Landroidx/compose/animation/core/InfiniteRepeatableSpec;",
        "T",
        "animation",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "repeatMode",
        "Landroidx/compose/animation/core/RepeatMode;",
        "initialStartOffset",
        "Landroidx/compose/animation/core/StartOffset;",
        "infiniteRepeatable-9IiC70o",
        "(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;",
        "keyframes",
        "Landroidx/compose/animation/core/KeyframesSpec;",
        "init",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "keyframesWithSpline",
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec;",
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;",
        "repeatable",
        "Landroidx/compose/animation/core/RepeatableSpec;",
        "iterations",
        "",
        "repeatable-91I0pcU",
        "(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/RepeatableSpec;",
        "snap",
        "Landroidx/compose/animation/core/SnapSpec;",
        "delayMillis",
        "spring",
        "Landroidx/compose/animation/core/SpringSpec;",
        "dampingRatio",
        "",
        "stiffness",
        "visibilityThreshold",
        "(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;",
        "tween",
        "Landroidx/compose/animation/core/TweenSpec;",
        "durationMillis",
        "easing",
        "Landroidx/compose/animation/core/Easing;",
        "convert",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "data",
        "(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;",
        "animation-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$convert(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p1, "data"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->convert(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    return-object v0
.end method

.method private static final convert(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;
    .locals 1
    .param p0, "$this$convert"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;)TV;"
        }
    .end annotation

    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    return-object v0
.end method

.method public static final synthetic infiniteRepeatable(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;
    .locals 7
    .param p0, "animation"    # Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .param p1, "repeatMode"    # Landroidx/compose/animation/core/RepeatMode;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This method has been deprecated in favor of the infinite repeatable function that accepts start offset."
    .end annotation

    .line 777
    new-instance v6, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public static synthetic infiniteRepeatable$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;ILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;
    .locals 0

    .line 774
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 776
    sget-object p1, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 774
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final infiniteRepeatable-9IiC70o(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;
    .locals 7
    .param p0, "animation"    # Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .param p1, "repeatMode"    # Landroidx/compose/animation/core/RepeatMode;
    .param p2, "initialStartOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/RepeatMode;",
            "J)",
            "Landroidx/compose/animation/core/InfiniteRepeatableSpec<",
            "TT;>;"
        }
    .end annotation

    .line 766
    new-instance v6, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public static synthetic infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;
    .locals 0

    .line 761
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 763
    sget-object p1, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 761
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 764
    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-static {p3, p3, p4, p2}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide p2

    .line 761
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;
    .locals 2
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/animation/core/KeyframesSpec<",
            "TT;>;"
        }
    .end annotation

    .line 679
    new-instance v0, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-direct {v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    return-object v0
.end method

.method public static final keyframesWithSpline(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesWithSplineSpec;
    .locals 2
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec<",
            "TT;>;"
        }
    .end annotation

    .line 697
    new-instance v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;

    .line 698
    new-instance v1, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-direct {v1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;-><init>()V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-direct {v0, v1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;-><init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V

    .line 699
    return-object v0
.end method

.method public static final synthetic repeatable(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)Landroidx/compose/animation/core/RepeatableSpec;
    .locals 8
    .param p0, "iterations"    # I
    .param p1, "animation"    # Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .param p2, "repeatMode"    # Landroidx/compose/animation/core/RepeatMode;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This method has been deprecated in favor of the repeatable function that accepts start offset."
    .end annotation

    .line 741
    new-instance v7, Landroidx/compose/animation/core/RepeatableSpec;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static synthetic repeatable$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;ILjava/lang/Object;)Landroidx/compose/animation/core/RepeatableSpec;
    .locals 0

    .line 737
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 740
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 737
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->repeatable(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)Landroidx/compose/animation/core/RepeatableSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final repeatable-91I0pcU(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/RepeatableSpec;
    .locals 8
    .param p0, "iterations"    # I
    .param p1, "animation"    # Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .param p2, "repeatMode"    # Landroidx/compose/animation/core/RepeatMode;
    .param p3, "initialStartOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/RepeatMode;",
            "J)",
            "Landroidx/compose/animation/core/RepeatableSpec<",
            "TT;>;"
        }
    .end annotation

    .line 729
    new-instance v7, Landroidx/compose/animation/core/RepeatableSpec;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static synthetic repeatable-91I0pcU$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/RepeatableSpec;
    .locals 0

    .line 723
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 726
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 723
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 727
    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static {p5, p5, p3, p4}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide p3

    .line 723
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/AnimationSpecKt;->repeatable-91I0pcU(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/RepeatableSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final snap(I)Landroidx/compose/animation/core/SnapSpec;
    .locals 1
    .param p0, "delayMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/compose/animation/core/SnapSpec<",
            "TT;>;"
        }
    .end annotation

    .line 785
    new-instance v0, Landroidx/compose/animation/core/SnapSpec;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    return-object v0
.end method

.method public static synthetic snap$default(IILjava/lang/Object;)Landroidx/compose/animation/core/SnapSpec;
    .locals 0

    .line 785
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Landroidx/compose/animation/core/AnimationSpecKt;->snap(I)Landroidx/compose/animation/core/SnapSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;
    .locals 1
    .param p0, "dampingRatio"    # F
    .param p1, "stiffness"    # F
    .param p2, "visibilityThreshold"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(FFTT;)",
            "Landroidx/compose/animation/core/SpringSpec<",
            "TT;>;"
        }
    .end annotation

    .line 661
    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;
    .locals 0

    .line 656
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 657
    const/high16 p0, 0x3f800000    # 1.0f

    .line 656
    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    .line 658
    const p1, 0x44bb8000    # 1500.0f

    .line 656
    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    .line 659
    const/4 p2, 0x0

    .line 656
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;
    .locals 1
    .param p0, "durationMillis"    # I
    .param p1, "delayMillis"    # I
    .param p2, "easing"    # Landroidx/compose/animation/core/Easing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Landroidx/compose/animation/core/Easing;",
            ")",
            "Landroidx/compose/animation/core/TweenSpec<",
            "TT;>;"
        }
    .end annotation

    .line 644
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    return-object v0
.end method

.method public static synthetic tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;
    .locals 0

    .line 640
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 641
    const/16 p0, 0x12c

    .line 640
    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    .line 642
    const/4 p1, 0x0

    .line 640
    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    .line 643
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p2

    .line 640
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    return-object p0
.end method
