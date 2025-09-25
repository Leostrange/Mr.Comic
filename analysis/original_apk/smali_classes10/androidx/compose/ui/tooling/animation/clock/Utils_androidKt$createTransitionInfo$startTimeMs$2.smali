.class final Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo(Landroidx/compose/animation/core/Animation;Ljava/lang/String;Landroidx/compose/animation/core/AnimationSpec;J)Landroidx/compose/animation/tooling/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "invoke",
        "()Ljava/lang/Long;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 4

    .line 92
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 93
    instance-of v1, v0, Landroidx/compose/animation/core/TweenSpec;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/TweenSpec;->getDelay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 94
    :cond_0
    instance-of v1, v0, Landroidx/compose/animation/core/SnapSpec;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/SnapSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/SnapSpec;->getDelay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 95
    :cond_1
    instance-of v1, v0, Landroidx/compose/animation/core/KeyframesSpec;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/KeyframesSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec;->getConfig()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDelayMillis()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :cond_2
    instance-of v1, v0, Landroidx/compose/animation/core/RepeatableSpec;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    .line 97
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/RepeatableSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/RepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->getOffsetType-Eo1U57Q(J)I

    move-result v0

    sget-object v1, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {v1}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffsetType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/RepeatableSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/RepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->getOffsetMillis-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_4
    instance-of v1, v0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    if-eqz v1, :cond_6

    .line 103
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->getOffsetType-Eo1U57Q(J)I

    move-result v0

    sget-object v1, Landroidx/compose/animation/core/StartOffsetType;->Companion:Landroidx/compose/animation/core/StartOffsetType$Companion;

    invoke-virtual {v1}, Landroidx/compose/animation/core/StartOffsetType$Companion;->getDelay-Eo1U57Q()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffsetType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->getInitialStartOffset-Rmkjzm4()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/animation/core/StartOffset;->getOffsetMillis-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_6
    instance-of v0, v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-interface {v0}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDelayMillis()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Number;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$startTimeMs$2;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
