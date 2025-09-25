.class public final Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;
.super Ljava/lang/Object;
.source "PullToRefresh.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullToRefresh.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullToRefresh.kt\nandroidx/compose/material3/pulltorefresh/PullToRefreshKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,558:1\n1116#2,6:559\n1116#2,6:567\n1116#2,6:573\n1116#2,6:579\n1116#2,6:585\n1116#2,6:591\n74#3:565\n1#4:566\n137#5,5:597\n262#5,11:602\n81#6:613\n164#7:614\n164#7:615\n154#7:616\n154#7:617\n154#7:618\n154#7:619\n*S KotlinDebug\n*F\n+ 1 PullToRefresh.kt\nandroidx/compose/material3/pulltorefresh/PullToRefreshKt\n*L\n119#1:559,6\n262#1:567,6\n429#1:573,6\n431#1:579,6\n437#1:585,6\n442#1:591,6\n254#1:565\n529#1:597,5\n529#1:602,11\n431#1:613\n538#1:614\n539#1:615\n540#1:616\n541#1:617\n543#1:618\n544#1:619\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0002H\u0002\u001a(\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001a]\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0019\u0008\u0002\u0010$\u001a\u0013\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00190%\u00a2\u0006\u0002\u0008&2\u0008\u0008\u0002\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010)\u001a\u00020\u001c2\u0008\u0008\u0002\u0010*\u001a\u00020\u001cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,\u001a*\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020\u00022\u0008\u0008\u0002\u0010/\u001a\u0002002\u000e\u0008\u0002\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\u001aH\u0007\u001a,\u00102\u001a\u00020!2\u0008\u0008\u0002\u00103\u001a\u00020\u00042\u000e\u0008\u0002\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001aF\u00106\u001a\u00020\u0019*\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00162\u0006\u0010>\u001a\u00020\u0004H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@\u001a>\u0010A\u001a\u00020\u0019*\u0002072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00162\u0006\u0010B\u001a\u00020;2\u0006\u0010>\u001a\u00020\u0004H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010D\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u000c\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u000f\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0010\u0010\u0011\"\u0016\u0010\u0012\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0013\u0010\u0011\"\u0010\u0010\u0014\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006E\u00b2\u0006\n\u0010F\u001a\u00020\u0002X\u008a\u0084\u0002"
    }
    d2 = {
        "AlphaTween",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "ArcRadius",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "ArrowHeight",
        "ArrowWidth",
        "CrossfadeDurationMs",
        "",
        "DragMultiplier",
        "Elevation",
        "MaxAlpha",
        "MaxProgressArc",
        "MinAlpha",
        "SpinnerContainerSize",
        "getSpinnerContainerSize",
        "()F",
        "SpinnerSize",
        "getSpinnerSize",
        "StrokeWidth",
        "ArrowValues",
        "Landroidx/compose/material3/pulltorefresh/ArrowValues;",
        "progress",
        "CircularArrowProgressIndicator",
        "",
        "Lkotlin/Function0;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "CircularArrowProgressIndicator-RPmYEkk",
        "(Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V",
        "PullToRefreshContainer",
        "state",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "indicator",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "containerColor",
        "contentColor",
        "PullToRefreshContainer-wBJOh4Y",
        "(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/Composer;II)V",
        "PullToRefreshState",
        "positionalThresholdPx",
        "initialRefreshing",
        "",
        "enabled",
        "rememberPullToRefreshState",
        "positionalThreshold",
        "rememberPullToRefreshState--orJrPs",
        "(FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        "drawArrow",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "arrow",
        "Landroidx/compose/ui/graphics/Path;",
        "bounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "alpha",
        "values",
        "strokeWidth",
        "drawArrow-uDrxG_w",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;F)V",
        "drawCircularIndicator",
        "arcBounds",
        "drawCircularIndicator-KzyDr3Q",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;Landroidx/compose/ui/geometry/Rect;F)V",
        "material3_release",
        "targetAlpha"
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
.field private static final AlphaTween:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ArcRadius:F

.field private static final ArrowHeight:F

.field private static final ArrowWidth:F

.field private static final CrossfadeDurationMs:I = 0x64

.field private static final DragMultiplier:F = 0.5f

.field private static final Elevation:F

.field private static final MaxAlpha:F = 1.0f

.field private static final MaxProgressArc:F = 0.8f

.field private static final MinAlpha:F = 0.3f

.field private static final SpinnerContainerSize:F

.field private static final SpinnerSize:F

.field private static final StrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 538
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .local v0, "$this$dp$iv":D
    const/4 v2, 0x0

    .line 614
    .local v2, "$i$f$getDp":I
    double-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 538
    .end local v0    # "$this$dp$iv":D
    .end local v2    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->StrokeWidth:F

    .line 539
    const-wide/high16 v0, 0x4016000000000000L    # 5.5

    .restart local v0    # "$this$dp$iv":D
    const/4 v2, 0x0

    .line 615
    .restart local v2    # "$i$f$getDp":I
    double-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 539
    .end local v0    # "$this$dp$iv":D
    .end local v2    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArcRadius:F

    .line 540
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 540
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->SpinnerSize:F

    .line 541
    const/16 v0, 0x28

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 617
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 541
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->SpinnerContainerSize:F

    .line 542
    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel2-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->Elevation:F

    .line 543
    const/16 v0, 0xa

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 618
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 543
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowWidth:F

    .line 544
    const/4 v0, 0x5

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 619
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 544
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowHeight:F

    .line 549
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->AlphaTween:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method private static final ArrowValues(F)Landroidx/compose/material3/pulltorefresh/ArrowValues;
    .locals 10
    .param p0, "progress"    # F

    .line 486
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v4, 0x5

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const/4 v4, 0x3

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 488
    .local v1, "adjustedPercent":F
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v0

    .line 490
    .local v4, "overshootPercent":F
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v3, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 492
    .local v3, "linearTension":F
    float-to-double v5, v3

    const/4 v7, 0x2

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 495
    .local v5, "tensionPercent":F
    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v1

    .line 496
    .local v6, "endTrim":F
    const/high16 v7, -0x41800000    # -0.25f

    mul-float/2addr v2, v1

    add-float/2addr v2, v7

    add-float/2addr v2, v5

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v2, v7

    .line 497
    .local v2, "rotation":F
    const/16 v7, 0x168

    int-to-float v7, v7

    mul-float v8, v2, v7

    .line 498
    .local v8, "startAngle":F
    add-float v9, v2, v6

    mul-float/2addr v9, v7

    .line 499
    .local v9, "endAngle":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 501
    .local v0, "scale":F
    new-instance v7, Landroidx/compose/material3/pulltorefresh/ArrowValues;

    invoke-direct {v7, v2, v8, v9, v0}, Landroidx/compose/material3/pulltorefresh/ArrowValues;-><init>(FFFF)V

    return-object v7
.end method

.method private static final CircularArrowProgressIndicator-RPmYEkk(Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 23
    .param p0, "progress"    # Lkotlin/jvm/functions/Function0;
    .param p1, "color"    # J
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 428
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p4

    const v0, -0x21f5381a    # -2.5000536E18f

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularArrowProgressIndicator)P(1,0:c#ui.graphics.Color)428@15876L61,430@16038L88,433@16148L74,436@16300L118,441@16456L443,434@16227L672:PullToRefresh.kt#djiw08"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v9, 0x30

    if-nez v2, :cond_3

    invoke-interface {v5, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    move v2, v1

    .end local v1    # "$dirty":I
    .local v2, "$dirty":I
    and-int/lit8 v1, v2, 0x13

    const/16 v10, 0x12

    if-ne v1, v10, :cond_5

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 452
    :cond_4
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v2

    move-object v1, v5

    goto/16 :goto_c

    .line 428
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string/jumbo v10, "androidx.compose.material3.pulltorefresh.CircularArrowProgressIndicator (PullToRefresh.kt:427)"

    invoke-static {v0, v2, v1, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    const v0, -0x271aed6a

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):PullToRefresh.kt#9igjgp"

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 429
    move-object v1, v5

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    move v10, v15

    .local v10, "invalid$iv":Z
    const/4 v11, 0x0

    .line 573
    .local v11, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 574
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_7

    .line 575
    const/4 v14, 0x0

    .line 429
    .local v14, "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$path$1":I
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v16

    move-object/from16 p3, v16

    .line 566
    .local p3, "$this$CircularArrowProgressIndicator_RPmYEkk_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    const/16 v17, 0x0

    .line 429
    .local v17, "$i$a$-apply-PullToRefreshKt$CircularArrowProgressIndicator$path$1$1":I
    sget-object v18, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getEvenOdd-Rg-k1Os()I

    move-result v4

    move-object/from16 v3, p3

    .end local p3    # "$this$CircularArrowProgressIndicator_RPmYEkk_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    .local v3, "$this$CircularArrowProgressIndicator_RPmYEkk_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    invoke-interface {v3, v4}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 575
    .end local v3    # "$this$CircularArrowProgressIndicator_RPmYEkk_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    .end local v14    # "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$path$1":I
    .end local v17    # "$i$a$-apply-PullToRefreshKt$CircularArrowProgressIndicator$path$1$1":I
    move-object/from16 v3, v16

    .line 576
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 577
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_3

    .line 578
    :cond_7
    move-object v3, v12

    .line 574
    :goto_3
    nop

    .line 573
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 429
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "invalid$iv":Z
    .end local v11    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/ui/graphics/Path;

    .local v3, "path":Landroidx/compose/ui/graphics/Path;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v1, -0x271aecc8

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 431
    move-object v1, v5

    .restart local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v4, v15

    .local v4, "invalid$iv":Z
    const/4 v10, 0x0

    .line 579
    .local v10, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 580
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_8

    .line 581
    const/4 v13, 0x0

    .line 432
    .local v13, "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$targetAlpha$2":I
    new-instance v14, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$targetAlpha$2$1;

    invoke-direct {v14, v6}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$targetAlpha$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 581
    .end local v13    # "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$targetAlpha$2":I
    nop

    .line 582
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 583
    nop

    .end local v13    # "value$iv":Ljava/lang/Object;
    goto :goto_4

    .line 584
    :cond_8
    move-object v13, v11

    .line 580
    :goto_4
    nop

    .line 579
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 431
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "invalid$iv":Z
    .end local v10    # "$i$f$cache":I
    move-object/from16 v20, v13

    check-cast v20, Landroidx/compose/runtime/State;

    .local v20, "targetAlpha$delegate":Landroidx/compose/runtime/State;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 434
    invoke-static/range {v20 .. v20}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->CircularArrowProgressIndicator_RPmYEkk$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v10

    sget-object v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->AlphaTween:Landroidx/compose/animation/core/TweenSpec;

    move-object v11, v1

    check-cast v11, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x30

    const/16 v17, 0x1c

    move v4, v15

    move-object v15, v5

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    .line 436
    .local v10, "alphaState":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 437
    const v11, -0x271aebc2    # -2.01500082E15f

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v11, v2, 0xe

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    move v11, v4

    .local v11, "invalid$iv":Z
    :goto_5
    move-object v12, v5

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 585
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 586
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_b

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v14, v4, :cond_a

    goto :goto_6

    .line 590
    :cond_a
    move-object v4, v14

    goto :goto_7

    .line 587
    :cond_b
    :goto_6
    const/4 v4, 0x0

    .line 437
    .local v4, "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$1":I
    new-instance v15, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$1$1;

    invoke-direct {v15, v6}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 587
    .end local v4    # "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$1":I
    move-object v4, v15

    .line 588
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 589
    nop

    .line 586
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 585
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 437
    .end local v11    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v11, 0x1

    invoke-static {v1, v11, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 441
    sget v4, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->SpinnerSize:F

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v1, -0x271aeb26

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0xe

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    move v15, v11

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    :goto_8
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v15

    and-int/lit8 v1, v2, 0x70

    const/16 v4, 0x20

    if-ne v1, v4, :cond_d

    move v15, v11

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    :goto_9
    or-int/2addr v0, v15

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 442
    move v11, v0

    .restart local v11    # "invalid$iv":Z
    move-object v13, v5

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 591
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 592
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_f

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_e

    goto :goto_a

    .line 596
    :cond_e
    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 p3, v10

    move-object v0, v15

    const/4 v10, 0x0

    goto :goto_b

    .line 593
    :cond_f
    :goto_a
    const/16 v17, 0x0

    .line 442
    .local v17, "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$2":I
    new-instance v18, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$2$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v19, v2

    .end local v2    # "$dirty":I
    .local v19, "$dirty":I
    move-object v2, v10

    move-object/from16 v21, v3

    move-object/from16 p3, v10

    const/4 v10, 0x0

    .end local v3    # "path":Landroidx/compose/ui/graphics/Path;
    .end local v10    # "alphaState":Landroidx/compose/runtime/State;
    .local v21, "path":Landroidx/compose/ui/graphics/Path;
    .local p3, "alphaState":Landroidx/compose/runtime/State;
    move-wide/from16 v3, p1

    move-object/from16 v22, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$2$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/Path;)V

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 593
    .end local v17    # "$i$a$-cache-PullToRefreshKt$CircularArrowProgressIndicator$2":I
    move-object/from16 v0, v18

    .line 594
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 595
    nop

    .line 592
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 591
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 442
    .end local v11    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 435
    move-object/from16 v1, v22

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v12, v0, v1, v10}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 452
    .end local v20    # "targetAlpha$delegate":Landroidx/compose/runtime/State;
    .end local v21    # "path":Landroidx/compose/ui/graphics/Path;
    .end local p3    # "alphaState":Landroidx/compose/runtime/State;
    :cond_10
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$3;

    invoke-direct {v2, v6, v7, v8, v9}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$CircularArrowProgressIndicator$3;-><init>(Lkotlin/jvm/functions/Function0;JI)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method private static final CircularArrowProgressIndicator_RPmYEkk$lambda$6(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$targetAlpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 613
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 431
    return v0
.end method

.method public static final PullToRefreshContainer-wBJOh4Y(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "state"    # Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "indicator"    # Lkotlin/jvm/functions/Function3;
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "containerColor"    # J
    .param p6, "contentColor"    # J
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 116
    move-object/from16 v11, p0

    move/from16 v12, p9

    const v0, -0x2fcd327e    # -1.19992504E10f

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(PullToRefreshContainer)P(5,3,2,4,0:c#ui.graphics.Color,1:c#ui.graphics.Color)113@4939L14,114@5003L12,118@5222L91,121@5318L650:PullToRefresh.kt#djiw08"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, p10, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v12, 0xc00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit16 v8, v12, 0x6000

    if-nez v8, :cond_e

    and-int/lit8 v8, p10, 0x10

    if-nez v8, :cond_c

    move-wide/from16 v8, p4

    invoke-interface {v13, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v8, p4

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v1, v10

    goto :goto_9

    :cond_e
    move-wide/from16 v8, p4

    :goto_9
    const/high16 v10, 0x30000

    and-int/2addr v10, v12

    if-nez v10, :cond_11

    and-int/lit8 v10, p10, 0x20

    if-nez v10, :cond_f

    move-wide/from16 v14, p6

    invoke-interface {v13, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v14, p6

    :cond_10
    const/high16 v10, 0x10000

    :goto_a
    or-int/2addr v1, v10

    goto :goto_b

    :cond_11
    move-wide/from16 v14, p6

    :goto_b
    const v10, 0x12493

    and-int/2addr v10, v1

    const v0, 0x12492

    if-ne v10, v0, :cond_13

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    .line 140
    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, v1

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-wide/from16 v19, v14

    move-object v14, v3

    move-object v15, v5

    goto/16 :goto_11

    .line 116
    :cond_13
    :goto_c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v10, -0x70001

    const v17, -0xe001

    if-eqz v0, :cond_17

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    .line 115
    :cond_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_15

    and-int v1, v1, v17

    :cond_15
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_16

    and-int v0, v1, v10

    move v1, v0

    move-object v0, v3

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_f

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_16
    move-object v0, v3

    goto :goto_f

    .line 116
    :cond_17
    :goto_d
    if-eqz v2, :cond_18

    .line 109
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 116
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object v0, v3

    .line 109
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    if-eqz v4, :cond_19

    sget-object v2, Landroidx/compose/material3/pulltorefresh/ComposableSingletons$PullToRefreshKt;->INSTANCE:Landroidx/compose/material3/pulltorefresh/ComposableSingletons$PullToRefreshKt;

    invoke-virtual {v2}, Landroidx/compose/material3/pulltorefresh/ComposableSingletons$PullToRefreshKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function3;

    move-result-object v2

    move-object v5, v2

    .end local p2    # "indicator":Lkotlin/jvm/functions/Function3;
    .local v5, "indicator":Lkotlin/jvm/functions/Function3;
    :cond_19
    if-eqz v6, :cond_1a

    .line 113
    sget-object v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    move-object v7, v2

    .end local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_1a
    and-int/lit8 v2, p10, 0x10

    const/4 v3, 0x6

    if-eqz v2, :cond_1b

    .line 114
    sget-object v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    invoke-virtual {v2, v13, v3}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    .end local p4    # "containerColor":J
    .local v8, "containerColor":J
    and-int v1, v1, v17

    :cond_1b
    and-int/lit8 v2, p10, 0x20

    if-eqz v2, :cond_1c

    .line 115
    sget-object v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    invoke-virtual {v2, v13, v3}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->getContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    .end local p6    # "contentColor":J
    .local v2, "contentColor":J
    and-int/2addr v1, v10

    move-wide v14, v2

    .end local v2    # "contentColor":J
    .local v14, "contentColor":J
    :cond_1c
    :goto_f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 116
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.pulltorefresh.PullToRefreshContainer (PullToRefresh.kt:115)"

    const v4, -0x2fcd327e    # -1.19992504E10f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const v2, 0x2cc7cbea

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):PullToRefresh.kt#9igjgp"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    move v3, v2

    .local v3, "invalid$iv":Z
    move-object v4, v13

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 559
    .local v6, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 560
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v10, v2, :cond_1e

    .line 561
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-cache-PullToRefreshKt$PullToRefreshContainer$showElevation$1":I
    move/from16 v17, v1

    .end local v1    # "$dirty":I
    .local v17, "$dirty":I
    new-instance v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshContainer$showElevation$1$1;

    invoke-direct {v1, v11}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshContainer$showElevation$1$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 561
    .end local v2    # "$i$a$-cache-PullToRefreshKt$PullToRefreshContainer$showElevation$1":I
    nop

    .line 562
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 563
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_10

    .line 564
    .end local v17    # "$dirty":I
    .local v1, "$dirty":I
    :cond_1e
    move/from16 v17, v1

    .end local v1    # "$dirty":I
    .restart local v17    # "$dirty":I
    move-object v1, v10

    .line 560
    :goto_10
    nop

    .line 559
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 119
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/runtime/State;

    .local v1, "showElevation":Landroidx/compose/runtime/State;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 122
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    new-instance v3, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshContainer$1;

    move-object/from16 p1, v3

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-object/from16 p4, v1

    move-object/from16 p5, v7

    move-wide/from16 p6, v8

    move-object/from16 p8, v5

    invoke-direct/range {p1 .. p8}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshContainer$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/Shape;JLkotlin/jvm/functions/Function3;)V

    const v4, 0x37c370c2

    const/4 v6, 0x1

    invoke-static {v13, v4, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    sget v4, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    const/4 v6, 0x0

    or-int/2addr v4, v6

    or-int/lit8 v4, v4, 0x30

    invoke-static {v2, v3, v13, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 140
    .end local v1    # "showElevation":Landroidx/compose/runtime/State;
    :cond_1f
    move-object/from16 v16, v7

    move-wide/from16 v19, v14

    move/from16 v21, v17

    move-object v14, v0

    move-object v15, v5

    move-wide/from16 v17, v8

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v5    # "indicator":Lkotlin/jvm/functions/Function3;
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "containerColor":J
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "indicator":Lkotlin/jvm/functions/Function3;
    .local v16, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v17, "containerColor":J
    .local v19, "contentColor":J
    .local v21, "$dirty":I
    :goto_11
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_20

    new-instance v22, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshContainer$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move/from16 v9, p9

    move-object v11, v10

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshContainer$2;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/graphics/Shape;JJII)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_20
    return-void
.end method

.method public static final PullToRefreshState(FZLkotlin/jvm/functions/Function0;)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .locals 1
    .param p0, "positionalThresholdPx"    # F
    .param p1, "initialRefreshing"    # Z
    .param p2, "enabled"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;"
        }
    .end annotation

    .line 286
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 286
    invoke-direct {v0, p1, p0, p2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;-><init>(ZFLkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    .line 290
    return-object v0
.end method

.method public static synthetic PullToRefreshState$default(FZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .locals 0

    .line 282
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    .line 284
    const/4 p1, 0x0

    .line 282
    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 285
    sget-object p2, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshState$1;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$PullToRefreshState$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 282
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->PullToRefreshState(FZLkotlin/jvm/functions/Function0;)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ArrowValues(F)Landroidx/compose/material3/pulltorefresh/ArrowValues;
    .locals 1
    .param p0, "progress"    # F

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowValues(F)Landroidx/compose/material3/pulltorefresh/ArrowValues;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$CircularArrowProgressIndicator-RPmYEkk(Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "progress"    # Lkotlin/jvm/functions/Function0;
    .param p1, "color"    # J
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->CircularArrowProgressIndicator-RPmYEkk(Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$drawArrow-uDrxG_w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;F)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "arrow"    # Landroidx/compose/ui/graphics/Path;
    .param p2, "bounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "color"    # J
    .param p5, "alpha"    # F
    .param p6, "values"    # Landroidx/compose/material3/pulltorefresh/ArrowValues;
    .param p7, "strokeWidth"    # F

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->drawArrow-uDrxG_w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;F)V

    return-void
.end method

.method public static final synthetic access$drawCircularIndicator-KzyDr3Q(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;Landroidx/compose/ui/geometry/Rect;F)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "color"    # J
    .param p3, "alpha"    # F
    .param p4, "values"    # Landroidx/compose/material3/pulltorefresh/ArrowValues;
    .param p5, "arcBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p6, "strokeWidth"    # F

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->drawCircularIndicator-KzyDr3Q(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;Landroidx/compose/ui/geometry/Rect;F)V

    return-void
.end method

.method public static final synthetic access$getArcRadius$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArcRadius:F

    return v0
.end method

.method public static final synthetic access$getElevation$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->Elevation:F

    return v0
.end method

.method public static final synthetic access$getStrokeWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->StrokeWidth:F

    return v0
.end method

.method private static final drawArrow-uDrxG_w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;F)V
    .locals 32
    .param p0, "$this$drawArrow_u2duDrxG_w"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "arrow"    # Landroidx/compose/ui/graphics/Path;
    .param p2, "bounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "color"    # J
    .param p5, "alpha"    # F
    .param p6, "values"    # Landroidx/compose/material3/pulltorefresh/ArrowValues;
    .param p7, "strokeWidth"    # F

    .line 512
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p7

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 513
    const/4 v1, 0x0

    invoke-interface {v11, v1, v1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 515
    nop

    .line 516
    sget v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowWidth:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 517
    sget v3, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowHeight:F

    invoke-interface {v0, v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v3

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    .line 515
    invoke-interface {v11, v2, v3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 519
    sget v2, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowWidth:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-interface {v11, v2, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    .line 522
    .local v13, "radius":F
    sget v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->ArrowWidth:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getScale()F

    move-result v3

    mul-float/2addr v1, v3

    div-float v14, v1, v2

    .line 523
    .local v14, "inset":F
    nop

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    add-float/2addr v1, v13

    sub-float/2addr v1, v14

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-interface {v0, v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 524
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    .line 523
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    .line 529
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getEndAngle()F

    move-result v1

    invoke-interface {v0, v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    sub-float v15, v1, v2

    .local v15, "degrees$iv":F
    move-object/from16 v16, p0

    .line 597
    .local v16, "$this$rotate_u2dRg1IO4c_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    nop

    .line 599
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v9

    .line 597
    .local v9, "pivot$iv":J
    const/16 v17, 0x0

    .line 601
    .local v17, "$i$f$rotate-Rg1IO4c":I
    move-object/from16 v18, v16

    .local v18, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v19, 0x0

    .line 602
    .local v19, "$i$f$withTransform":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v8

    .local v8, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/16 v20, 0x0

    .line 606
    .local v20, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v6

    .line 607
    .local v6, "previousSize$iv$iv":J
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 608
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    .local v1, "$this$rotate_Rg1IO4c_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/4 v2, 0x0

    .line 601
    .local v2, "$i$a$-withTransform-DrawScopeKt$rotate$1$iv":I
    invoke-interface {v1, v15, v9, v10}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->rotate-Uv8p0NA(FJ)V

    .line 608
    .end local v1    # "$this$rotate_Rg1IO4c_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v2    # "$i$a$-withTransform-DrawScopeKt$rotate$1$iv":I
    nop

    .line 609
    move-object/from16 v5, v18

    .local v5, "$this$drawArrow_uDrxG_w_u24lambda_u249":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v21, 0x0

    .line 530
    .local v21, "$i$a$-rotate-Rg1IO4c$default-PullToRefreshKt$drawArrow$1":I
    new-instance v1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v5, v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1e

    const/16 v29, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x30

    const/16 v26, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-object/from16 v27, v5

    .end local v5    # "$this$drawArrow_uDrxG_w_u24lambda_u249":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .local v27, "$this$drawArrow_uDrxG_w_u24lambda_u249":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    move/from16 v5, p5

    move-wide/from16 v30, v6

    .end local v6    # "previousSize$iv$iv":J
    .local v30, "previousSize$iv$iv":J
    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v22, v8

    .end local v8    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v22, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    move/from16 v8, v24

    move-wide/from16 v23, v9

    .end local v9    # "pivot$iv":J
    .local v23, "pivot$iv":J
    move/from16 v9, v25

    move-object/from16 v10, v26

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 531
    nop

    .line 609
    .end local v21    # "$i$a$-rotate-Rg1IO4c$default-PullToRefreshKt$drawArrow$1":I
    .end local v27    # "$this$drawArrow_uDrxG_w_u24lambda_u249":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    nop

    .line 610
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 611
    move-object/from16 v1, v22

    move-wide/from16 v2, v30

    .end local v22    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v30    # "previousSize$iv$iv":J
    .local v1, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v2, "previousSize$iv$iv":J
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 612
    nop

    .line 602
    .end local v1    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v2    # "previousSize$iv$iv":J
    .end local v20    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    nop

    .line 612
    nop

    .line 601
    .end local v18    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v19    # "$i$f$withTransform":I
    nop

    .line 532
    .end local v15    # "degrees$iv":F
    .end local v16    # "$this$rotate_u2dRg1IO4c_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v17    # "$i$f$rotate-Rg1IO4c":I
    .end local v23    # "pivot$iv":J
    return-void
.end method

.method private static final drawCircularIndicator-KzyDr3Q(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/material3/pulltorefresh/ArrowValues;Landroidx/compose/ui/geometry/Rect;F)V
    .locals 18
    .param p0, "$this$drawCircularIndicator_u2dKzyDr3Q"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "color"    # J
    .param p3, "alpha"    # F
    .param p4, "values"    # Landroidx/compose/material3/pulltorefresh/ArrowValues;
    .param p5, "arcBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p6, "strokeWidth"    # F

    .line 464
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getStartAngle()F

    move-result v3

    .line 465
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getEndAngle()F

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/material3/pulltorefresh/ArrowValues;->getStartAngle()F

    move-result v1

    sub-float v4, v0, v1

    .line 467
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v6

    .line 468
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v8

    .line 469
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 470
    move-object/from16 v5, p0

    move/from16 v1, p6

    invoke-interface {v5, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v11

    .line 469
    const/4 v12, 0x0

    .line 471
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v13

    .line 469
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1a

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 461
    nop

    .line 462
    nop

    .line 464
    nop

    .line 465
    nop

    .line 466
    const/4 v10, 0x0

    .line 467
    nop

    .line 468
    nop

    .line 463
    nop

    .line 469
    move-object v11, v0

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 461
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x300

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v5, v10

    move/from16 v10, p3

    invoke-static/range {v0 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 474
    return-void
.end method

.method public static final getSpinnerContainerSize()F
    .locals 1

    .line 541
    sget v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->SpinnerContainerSize:F

    return v0
.end method

.method public static final getSpinnerSize()F
    .locals 1

    .line 540
    sget v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->SpinnerSize:F

    return v0
.end method

.method public static final rememberPullToRefreshState--orJrPs(FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .locals 11
    .param p0, "positionalThreshold"    # F
    .param p1, "enabled"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;"
        }
    .end annotation

    const v0, 0x73590316

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberPullToRefreshState)P(1:c#ui.unit.Dp)253@9584L7,261@9888L176,255@9680L384:PullToRefresh.kt#djiw08"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->getPositionalThreshold-D9Ej5fM()F

    move-result p0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 252
    sget-object p4, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$1;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$1;

    move-object p1, p4

    check-cast p1, Lkotlin/jvm/functions/Function0;

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 253
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.material3.pulltorefresh.rememberPullToRefreshState (PullToRefresh.kt:252)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 254
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/CompositionLocal;

    .local p4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .line 565
    .local v1, "$i$f$getCurrent":I
    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 254
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$getCurrent":I
    .end local p4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    move-object p4, v2

    check-cast p4, Landroidx/compose/ui/unit/Density;

    .line 255
    .local p4, "density":Landroidx/compose/ui/unit/Density;
    move-object v0, p4

    .line 566
    .local v0, "$this$rememberPullToRefreshState__orJrPs_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 255
    .local v1, "$i$a$-with-PullToRefreshKt$rememberPullToRefreshState$positionalThresholdPx$1":I
    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .line 257
    .end local v1    # "$i$a$-with-PullToRefreshKt$rememberPullToRefreshState$positionalThresholdPx$1":I
    .local v0, "positionalThresholdPx":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 258
    sget-object v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;->Companion:Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion;

    .line 259
    nop

    .line 260
    nop

    .line 258
    invoke-virtual {v1, v0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl$Companion;->Saver(FLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    const/4 v4, 0x0

    const v1, 0x2ff964e7

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):PullToRefresh.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    and-int/lit8 v5, p3, 0x70

    xor-int/lit8 v5, v5, 0x30

    const/16 v6, 0x20

    if-le v5, v6, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    and-int/lit8 v5, p3, 0x30

    if-ne v5, v6, :cond_5

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    or-int/2addr v1, v5

    .line 262
    move-object v5, p2

    .local v1, "invalid$iv":Z
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 567
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 568
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_7

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_6

    goto :goto_1

    .line 572
    :cond_6
    move-object v9, v7

    goto :goto_2

    .line 569
    :cond_7
    :goto_1
    const/4 v9, 0x0

    .line 262
    .local v9, "$i$a$-cache-PullToRefreshKt$rememberPullToRefreshState$2":I
    new-instance v10, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;

    invoke-direct {v10, v0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt$rememberPullToRefreshState$2$1;-><init>(FLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 569
    .end local v9    # "$i$a$-cache-PullToRefreshKt$rememberPullToRefreshState$2":I
    move-object v9, v10

    .line 570
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 571
    nop

    .line 568
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 567
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 262
    .end local v1    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object v5, v9

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 256
    move-object v6, p2

    invoke-static/range {v2 .. v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
