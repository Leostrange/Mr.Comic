.class public final Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "ProgressIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material3/ProgressIndicatorKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,703:1\n1116#2,6:704\n1116#2,6:710\n1116#2,6:716\n1116#2,6:722\n1116#2,6:728\n1116#2,6:734\n1116#2,6:741\n1116#2,6:747\n1116#2,6:754\n1116#2,6:760\n74#3:740\n74#3:753\n75#4,7:766\n92#4:775\n58#4:776\n154#5:773\n154#5:774\n*S KotlinDebug\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material3/ProgressIndicatorKt\n*L\n86#1:704,6\n90#1:710,6\n94#1:716,6\n176#1:722,6\n218#1:728,6\n354#1:734,6\n360#1:741,6\n364#1:747,6\n452#1:754,6\n493#1:760,6\n355#1:740\n397#1:753\n578#1:766,7\n649#1:775\n649#1:776\n300#1:773\n640#1:774\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u001aR\u0010%\u001a\u00020&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00010(2\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\u0008\u0008\u0002\u0010-\u001a\u00020+2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00101\u001a0\u0010%\u001a\u00020&2\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u0005H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103\u001aD\u0010%\u001a\u00020&2\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\u0008\u0008\u0002\u0010-\u001a\u00020+2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001a8\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00012\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u0005H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107\u001aL\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00012\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\u0008\u0008\u0002\u0010-\u001a\u00020+2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00108\u001aH\u00109\u001a\u00020&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00010(2\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010-\u001a\u00020+2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010;\u001a0\u00109\u001a\u00020&2\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010-\u001a\u00020+H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=\u001a:\u00109\u001a\u00020&2\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010-\u001a\u00020+2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?\u001a8\u00109\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00012\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010-\u001a\u00020+H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010A\u001aB\u00109\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00012\u0008\u0008\u0002\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010-\u001a\u00020+2\u0008\u0008\u0002\u0010.\u001a\u00020/H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010B\u001a6\u0010C\u001a\u00020&*\u00020D2\u0006\u0010E\u001a\u00020\u00012\u0006\u0010F\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010G\u001a\u00020HH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010J\u001a&\u0010K\u001a\u00020&*\u00020D2\u0006\u0010*\u001a\u00020+2\u0006\u0010G\u001a\u00020HH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010M\u001a6\u0010N\u001a\u00020&*\u00020D2\u0006\u0010E\u001a\u00020\u00012\u0006\u0010F\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010G\u001a\u00020HH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008O\u0010J\u001a>\u0010P\u001a\u00020&*\u00020D2\u0006\u0010E\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010G\u001a\u00020HH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010R\u001a>\u0010S\u001a\u00020&*\u00020D2\u0006\u0010T\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010.\u001a\u00020/H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008V\u0010W\u001a.\u0010X\u001a\u00020&*\u00020D2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010.\u001a\u00020/H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Y\u0010Z\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0016\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0017\u0010\u0007\"\u0016\u0010\u0018\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0019\u0010\u0007\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010#\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\"\u000e\u0010$\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006["
    }
    d2 = {
        "BaseRotationAngle",
        "",
        "CircularEasing",
        "Landroidx/compose/animation/core/CubicBezierEasing;",
        "CircularIndicatorDiameter",
        "Landroidx/compose/ui/unit/Dp;",
        "getCircularIndicatorDiameter",
        "()F",
        "F",
        "FirstLineHeadDelay",
        "",
        "FirstLineHeadDuration",
        "FirstLineHeadEasing",
        "FirstLineTailDelay",
        "FirstLineTailDuration",
        "FirstLineTailEasing",
        "HeadAndTailAnimationDuration",
        "HeadAndTailDelayDuration",
        "IncreaseSemanticsBounds",
        "Landroidx/compose/ui/Modifier;",
        "JumpRotationAngle",
        "LinearAnimationDuration",
        "LinearIndicatorHeight",
        "getLinearIndicatorHeight",
        "LinearIndicatorWidth",
        "getLinearIndicatorWidth",
        "RotationAngleOffset",
        "RotationDuration",
        "RotationsPerCycle",
        "SecondLineHeadDelay",
        "SecondLineHeadDuration",
        "SecondLineHeadEasing",
        "SecondLineTailDelay",
        "SecondLineTailDuration",
        "SecondLineTailEasing",
        "SemanticsBoundsPadding",
        "StartAngleOffset",
        "CircularProgressIndicator",
        "",
        "progress",
        "Lkotlin/Function0;",
        "modifier",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "strokeWidth",
        "trackColor",
        "strokeCap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "CircularProgressIndicator-DUhRLBM",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V",
        "CircularProgressIndicator-aM-cp0Q",
        "(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V",
        "CircularProgressIndicator-LxG7B9w",
        "(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V",
        "CircularProgressIndicator-MBs18nI",
        "(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V",
        "(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator",
        "LinearProgressIndicator-_5eSR-E",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator-RIQooxk",
        "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator-2cYBFYY",
        "(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V",
        "LinearProgressIndicator-eaDK9VM",
        "(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V",
        "(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V",
        "drawCircularIndicator",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "startAngle",
        "sweep",
        "stroke",
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "drawCircularIndicator-42QJj7c",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "drawCircularIndicatorTrack",
        "drawCircularIndicatorTrack-bw27NRU",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "drawDeterminateCircularIndicator",
        "drawDeterminateCircularIndicator-42QJj7c",
        "drawIndeterminateCircularIndicator",
        "drawIndeterminateCircularIndicator-hrjfTZI",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V",
        "drawLinearIndicator",
        "startFraction",
        "endFraction",
        "drawLinearIndicator-qYKTg0g",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V",
        "drawLinearIndicatorTrack",
        "drawLinearIndicatorTrack-AZGd3zU",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V",
        "material3_release"
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
.field private static final BaseRotationAngle:F = 286.0f

.field private static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final CircularIndicatorDiameter:F

.field private static final FirstLineHeadDelay:I = 0x0

.field private static final FirstLineHeadDuration:I = 0x2ee

.field private static final FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final FirstLineTailDelay:I = 0x14d

.field private static final FirstLineTailDuration:I = 0x352

.field private static final FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final HeadAndTailAnimationDuration:I = 0x29a

.field private static final HeadAndTailDelayDuration:I = 0x29a

.field private static final IncreaseSemanticsBounds:Landroidx/compose/ui/Modifier;

.field private static final JumpRotationAngle:F = 290.0f

.field private static final LinearAnimationDuration:I = 0x708

.field private static final LinearIndicatorHeight:F

.field private static final LinearIndicatorWidth:F

.field private static final RotationAngleOffset:F = 216.0f

.field private static final RotationDuration:I = 0x534

.field private static final RotationsPerCycle:I = 0x5

.field private static final SecondLineHeadDelay:I = 0x3e8

.field private static final SecondLineHeadDuration:I = 0x237

.field private static final SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final SecondLineTailDelay:I = 0x4f3

.field private static final SecondLineTailDuration:I = 0x215

.field private static final SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final SemanticsBoundsPadding:F

.field private static final StartAngleOffset:F = -90.0f


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 300
    const/16 v0, 0xa

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 773
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 300
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    .line 321
    nop

    .line 301
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 302
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 320
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$2;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 321
    sget v1, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->IncreaseSemanticsBounds:Landroidx/compose/ui/Modifier;

    .line 640
    const/16 v0, 0xf0

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 774
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 640
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 643
    sget-object v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->getTrackHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 649
    sget-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->getSize-D9Ej5fM()F

    move-result v0

    sget-object v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v1

    .local v1, "arg0$iv":F
    const/4 v2, 0x2

    .local v2, "other$iv":I
    const/4 v3, 0x0

    .line 775
    .local v3, "$i$f$times-u2uoSUM":I
    int-to-float v5, v2

    mul-float/2addr v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 649
    .end local v1    # "arg0$iv":F
    .end local v2    # "other$iv":I
    .end local v3    # "$i$f$times-u2uoSUM":I
    nop

    .local v0, "arg0$iv":F
    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 776
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 649
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 668
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 669
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 670
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v0, v4, v4, v5, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 671
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v0, v5, v4, v6, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 702
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v2, v4, v1, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final CircularProgressIndicator-DUhRLBM(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "progress"    # F
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "color"    # J
    .param p4, "strokeWidth"    # F
    .param p5, "trackColor"    # J
    .param p7, "strokeCap"    # I
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Use the overload that takes `progress` as a lambda"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "CircularProgressIndicator(\nprogress = { progress },\nmodifier = modifier,\ncolor = color,\nstrokeWidth = strokeWidth,\ntrackColor = trackColor,\nstrokeCap = strokeCap,\n)"
            imports = {}
        .end subannotation
    .end annotation

    .line 492
    move/from16 v11, p0

    move/from16 v12, p9

    const v0, -0x57c1d8cf

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.unit.Dp,5:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)487@19401L13,489@19535L18,492@19684L12,491@19642L188:ProgressIndicator.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

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

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, p10, 0x4

    if-nez v5, :cond_6

    move-wide/from16 v5, p2

    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v5, p2

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    goto :goto_5

    :cond_8
    move-wide/from16 v5, p2

    :goto_5
    and-int/lit8 v7, p10, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v8, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_b

    move/from16 v8, p4

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move/from16 v8, p4

    :goto_7
    and-int/lit16 v9, v12, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, p10, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v13, p5

    invoke-interface {v10, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v13, p5

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_e
    move-wide/from16 v13, p5

    :goto_9
    and-int/lit8 v9, p10, 0x20

    const/high16 v15, 0x30000

    if-eqz v9, :cond_f

    or-int/2addr v1, v15

    move/from16 v15, p7

    goto :goto_b

    :cond_f
    and-int/2addr v15, v12

    if-nez v15, :cond_11

    move/from16 v15, p7

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move/from16 v15, p7

    :goto_b
    const v16, 0x12493

    and-int v3, v1, v16

    const v0, 0x12492

    if-ne v3, v0, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    .line 499
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, v1

    move/from16 v16, v8

    move-wide/from16 v17, v13

    move/from16 v19, v15

    move-object v13, v4

    move-wide v14, v5

    goto/16 :goto_13

    .line 492
    :cond_13
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v3, -0xe001

    if-eqz v0, :cond_17

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    .line 491
    :cond_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_15

    and-int/lit16 v1, v1, -0x381

    :cond_15
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_16

    and-int v0, v1, v3

    move-wide v1, v13

    move v3, v15

    move-object/from16 v24, v4

    move v4, v0

    move-object/from16 v0, v24

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_f

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_16
    move-object v0, v4

    move v3, v15

    move v4, v1

    move-wide v1, v13

    goto :goto_f

    .line 492
    :cond_17
    :goto_d
    if-eqz v2, :cond_18

    .line 487
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 492
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object v0, v4

    .line 487
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v2, p10, 0x4

    const/4 v4, 0x6

    if-eqz v2, :cond_19

    .line 488
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v2, v10, v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .end local p2    # "color":J
    .local v5, "color":J
    and-int/lit16 v1, v1, -0x381

    :cond_19
    if-eqz v7, :cond_1a

    .line 489
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v2

    move v8, v2

    .end local p4    # "strokeWidth":F
    .local v8, "strokeWidth":F
    :cond_1a
    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_1b

    .line 490
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v2, v10, v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v13

    .end local p5    # "trackColor":J
    .local v13, "trackColor":J
    and-int/2addr v1, v3

    :cond_1b
    if-eqz v9, :cond_1c

    .line 491
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularDeterminateStrokeCap-KaPHkGw()I

    move-result v2

    move v4, v1

    move v3, v2

    move-wide v1, v13

    .end local p7    # "strokeCap":I
    .local v2, "strokeCap":I
    goto :goto_f

    .line 490
    .end local v2    # "strokeCap":I
    .restart local p7    # "strokeCap":I
    :cond_1c
    move v4, v1

    move-wide v1, v13

    move v3, v15

    .line 491
    .end local v13    # "trackColor":J
    .end local p7    # "strokeCap":I
    .local v1, "trackColor":J
    .local v3, "strokeCap":I
    .local v4, "$dirty":I
    :goto_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 492
    const/4 v7, -0x1

    const-string/jumbo v9, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:491)"

    const v13, -0x57c1d8cf

    invoke-static {v13, v4, v7, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const v7, 0x30fcc3e4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember):ProgressIndicator.kt#9igjgp"

    invoke-static {v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v7, v4, 0xe

    const/4 v9, 0x4

    if-ne v7, v9, :cond_1e

    const/4 v7, 0x1

    goto :goto_10

    :cond_1e
    const/4 v7, 0x0

    .line 493
    :goto_10
    nop

    .local v7, "invalid$iv":Z
    move-object v9, v10

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 760
    .local v13, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 761
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_20

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v7

    .end local v7    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v14, v7, :cond_1f

    goto :goto_11

    .line 765
    :cond_1f
    move-object v7, v14

    goto :goto_12

    .line 761
    .end local p1    # "invalid$iv":Z
    .restart local v7    # "invalid$iv":Z
    :cond_20
    move/from16 p1, v7

    .line 762
    .end local v7    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_11
    const/4 v7, 0x0

    .line 493
    .local v7, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$6":I
    move/from16 p2, v7

    .end local v7    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$6":I
    .local p2, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$6":I
    new-instance v7, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6$1;

    invoke-direct {v7, v11}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6$1;-><init>(F)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 762
    .end local p2    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$6":I
    nop

    .line 763
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 764
    nop

    .line 761
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_12
    nop

    .line 760
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 493
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 494
    nop

    .line 495
    nop

    .line 496
    nop

    .line 497
    nop

    .line 498
    and-int/lit8 v7, v4, 0x70

    and-int/lit16 v9, v4, 0x380

    or-int/2addr v7, v9

    and-int/lit16 v9, v4, 0x1c00

    or-int/2addr v7, v9

    const v9, 0xe000

    and-int/2addr v9, v4

    or-int/2addr v7, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v4

    or-int v22, v7, v9

    const/16 v23, 0x0

    .line 492
    move-object v14, v0

    move-wide v15, v5

    move/from16 v17, v8

    move-wide/from16 v18, v1

    move/from16 v20, v3

    move-object/from16 v21, v10

    invoke-static/range {v13 .. v23}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-DUhRLBM(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 499
    :cond_21
    move-object v13, v0

    move-wide/from16 v17, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide v14, v5

    move/from16 v16, v8

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "trackColor":J
    .end local v3    # "strokeCap":I
    .end local v4    # "$dirty":I
    .end local v5    # "color":J
    .end local v8    # "strokeWidth":F
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "color":J
    .local v16, "strokeWidth":F
    .local v17, "trackColor":J
    .local v19, "strokeCap":I
    .local v20, "$dirty":I
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_22

    new-instance v21, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$7;

    move-object/from16 v0, v21

    move/from16 v1, p0

    move-object v2, v13

    move-wide v3, v14

    move/from16 v5, v16

    move-wide/from16 v6, v17

    move/from16 v8, v19

    move-object v11, v9

    move/from16 v9, p9

    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$7;-><init>(FLandroidx/compose/ui/Modifier;JFJIII)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_22
    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14
    return-void
.end method

.method public static final CircularProgressIndicator-DUhRLBM(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "progress"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "color"    # J
    .param p4, "strokeWidth"    # F
    .param p5, "trackColor"    # J
    .param p7, "strokeCap"    # I
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "JFJI",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 353
    move-object/from16 v11, p0

    move/from16 v12, p9

    const v0, -0x2d665253

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.unit.Dp,5:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)348@14143L13,350@14277L18,353@14410L31,*354@14477L7,359@14631L102,363@14785L243,357@14558L470:ProgressIndicator.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

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

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, p10, 0x4

    if-nez v5, :cond_6

    move-wide/from16 v7, p2

    invoke-interface {v13, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p2

    :goto_5
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v9, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    move/from16 v9, p4

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v1, v10

    goto :goto_7

    :cond_b
    move/from16 v9, p4

    :goto_7
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, p10, 0x10

    if-nez v10, :cond_c

    move-wide/from16 v6, p5

    invoke-interface {v13, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v6, p5

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    goto :goto_9

    :cond_e
    move-wide/from16 v6, p5

    :goto_9
    and-int/lit8 v8, p10, 0x20

    const/high16 v10, 0x30000

    if-eqz v8, :cond_f

    or-int/2addr v1, v10

    move/from16 v10, p7

    goto :goto_b

    :cond_f
    and-int/2addr v10, v12

    if-nez v10, :cond_11

    move/from16 v10, p7

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move/from16 v10, p7

    :goto_b
    const v15, 0x12493

    and-int/2addr v15, v1

    const v14, 0x12492

    if-ne v15, v14, :cond_13

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_c

    .line 371
    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v14, p2

    move/from16 v18, v1

    move-object v11, v4

    move-wide/from16 v16, v6

    move/from16 v19, v9

    move v12, v10

    goto/16 :goto_1a

    .line 353
    :cond_13
    :goto_c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v14, v12, 0x1

    const v15, -0xe001

    if-eqz v14, :cond_17

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_d

    .line 352
    :cond_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_15

    and-int/lit16 v1, v1, -0x381

    :cond_15
    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_16

    and-int/2addr v1, v15

    :cond_16
    move-object v2, v4

    move-wide/from16 v4, p2

    goto :goto_10

    .line 353
    :cond_17
    :goto_d
    if-eqz v2, :cond_18

    .line 348
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 353
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object v2, v4

    .line 348
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v4, p10, 0x4

    const/4 v14, 0x6

    if-eqz v4, :cond_19

    .line 349
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v13, v14}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    .end local p2    # "color":J
    .local v17, "color":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_f

    .line 348
    .end local v17    # "color":J
    .restart local p2    # "color":J
    :cond_19
    move-wide/from16 v17, p2

    .line 349
    .end local p2    # "color":J
    .restart local v17    # "color":J
    :goto_f
    if-eqz v5, :cond_1a

    .line 350
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v4

    move v9, v4

    .end local p4    # "strokeWidth":F
    .local v9, "strokeWidth":F
    :cond_1a
    and-int/lit8 v4, p10, 0x10

    if-eqz v4, :cond_1b

    .line 351
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v13, v14}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p5    # "trackColor":J
    .local v4, "trackColor":J
    and-int/2addr v1, v15

    move-wide v6, v4

    .end local v4    # "trackColor":J
    .local v6, "trackColor":J
    :cond_1b
    if-eqz v8, :cond_1c

    .line 352
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularDeterminateStrokeCap-KaPHkGw()I

    move-result v4

    move v10, v4

    move-wide/from16 v4, v17

    .end local p7    # "strokeCap":I
    .local v4, "strokeCap":I
    goto :goto_10

    .line 351
    .end local v4    # "strokeCap":I
    .restart local p7    # "strokeCap":I
    :cond_1c
    move-wide/from16 v4, v17

    .line 352
    .end local v17    # "color":J
    .end local p7    # "strokeCap":I
    .local v4, "color":J
    .local v10, "strokeCap":I
    :goto_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 353
    const/4 v8, -0x1

    const-string/jumbo v14, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:352)"

    invoke-static {v0, v1, v8, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const v0, 0x30fcaf4a

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):ProgressIndicator.kt#9igjgp"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v8, v1, 0xe

    if-ne v8, v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    .line 354
    :goto_11
    nop

    .local v3, "invalid$iv":Z
    move-object v8, v13

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 734
    .local v17, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 735
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_20

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_1f

    goto :goto_12

    .line 739
    :cond_1f
    move/from16 p2, v3

    move-object v3, v14

    goto :goto_13

    .line 736
    :cond_20
    :goto_12
    const/4 v15, 0x0

    .line 354
    .local v15, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$coercedProgress$1":I
    move/from16 p2, v3

    .end local v3    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    new-instance v3, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$coercedProgress$1$1;

    invoke-direct {v3, v11}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$coercedProgress$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 736
    .end local v15    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$coercedProgress$1":I
    nop

    .line 737
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 738
    nop

    .line 735
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 734
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 354
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "coercedProgress":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 355
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x0

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .line 740
    .local v15, "$i$f$getCurrent":I
    const v11, 0x789c5f52

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 355
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$getCurrent":I
    move-object v8, v11

    check-cast v8, Landroidx/compose/ui/unit/Density;

    .local v8, "$this$CircularProgressIndicator_DUhRLBM_u24lambda_u246":Landroidx/compose/ui/unit/Density;
    const/4 v11, 0x0

    .line 356
    .local v11, "$i$a$-with-ProgressIndicatorKt$CircularProgressIndicator$stroke$1":I
    new-instance v12, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v8, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1a

    const/16 v24, 0x0

    move-object/from16 v17, v12

    move/from16 v20, v10

    invoke-direct/range {v17 .. v24}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 355
    .end local v8    # "$this$CircularProgressIndicator_DUhRLBM_u24lambda_u246":Landroidx/compose/ui/unit/Density;
    .end local v11    # "$i$a$-with-ProgressIndicatorKt$CircularProgressIndicator$stroke$1":I
    move-object v8, v12

    .line 359
    .local v8, "stroke":Landroidx/compose/ui/graphics/drawscope/Stroke;
    nop

    .line 360
    const v11, 0x30fcb027

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "invalid$iv":Z
    move-object v12, v13

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 741
    .local v14, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 742
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_22

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v9

    .end local v9    # "strokeWidth":F
    .local v19, "strokeWidth":F
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v15, v9, :cond_21

    goto :goto_14

    .line 746
    :cond_21
    move-object v9, v15

    goto :goto_15

    .line 742
    .end local v19    # "strokeWidth":F
    .restart local v9    # "strokeWidth":F
    :cond_22
    move/from16 v19, v9

    .line 743
    .end local v9    # "strokeWidth":F
    .restart local v19    # "strokeWidth":F
    :goto_14
    const/4 v9, 0x0

    .line 360
    .local v9, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$1":I
    move/from16 p2, v9

    .end local v9    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$1":I
    .local p2, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$1":I
    new-instance v9, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1$1;

    invoke-direct {v9, v3}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 743
    .end local p2    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$1":I
    nop

    .line 744
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 745
    nop

    .line 742
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_15
    nop

    .line 741
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 360
    .end local v11    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v11, 0x1

    invoke-static {v2, v11, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 363
    sget v12, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v12, 0x30fcb0c1

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    const v12, 0xe000

    and-int/2addr v12, v1

    xor-int/lit16 v12, v12, 0x6000

    const/16 v14, 0x4000

    if-le v12, v14, :cond_23

    invoke-interface {v13, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-nez v12, :cond_24

    :cond_23
    and-int/lit16 v12, v1, 0x6000

    const/16 v14, 0x4000

    if-ne v12, v14, :cond_25

    :cond_24
    move v12, v11

    goto :goto_16

    :cond_25
    const/4 v12, 0x0

    :goto_16
    or-int/2addr v0, v12

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v0, v12

    and-int/lit16 v12, v1, 0x380

    xor-int/lit16 v12, v12, 0x180

    const/16 v14, 0x100

    if-le v12, v14, :cond_26

    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-nez v12, :cond_27

    :cond_26
    and-int/lit16 v12, v1, 0x180

    const/16 v14, 0x100

    if-ne v12, v14, :cond_28

    :cond_27
    move v15, v11

    goto :goto_17

    :cond_28
    const/4 v15, 0x0

    :goto_17
    or-int/2addr v0, v15

    .line 364
    move-object v11, v13

    .local v0, "invalid$iv":Z
    .local v11, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 747
    .local v12, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 748
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_2a

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v0

    .end local v0    # "invalid$iv":Z
    .local p8, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_29

    goto :goto_18

    .line 752
    :cond_29
    move-object v0, v14

    goto :goto_19

    .line 748
    .end local p8    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_2a
    move/from16 p8, v0

    .line 749
    .end local v0    # "invalid$iv":Z
    .restart local p8    # "invalid$iv":Z
    :goto_18
    const/4 v0, 0x0

    .line 364
    .local v0, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$2":I
    new-instance v16, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$2$1;

    move-object/from16 p1, v16

    move-object/from16 p2, v3

    move-wide/from16 p3, v6

    move-object/from16 p5, v8

    move-wide/from16 p6, v4

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$2$1;-><init>(Lkotlin/jvm/functions/Function0;JLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 749
    .end local v0    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$2":I
    move-object/from16 v0, v16

    .line 750
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 751
    nop

    .line 748
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_19
    nop

    .line 747
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 364
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local p8    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 358
    const/4 v11, 0x0

    invoke-static {v9, v0, v13, v11}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 371
    .end local v3    # "coercedProgress":Lkotlin/jvm/functions/Function0;
    .end local v8    # "stroke":Landroidx/compose/ui/graphics/drawscope/Stroke;
    :cond_2b
    move/from16 v18, v1

    move-object v11, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move v12, v10

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "color":J
    .end local v6    # "trackColor":J
    .end local v10    # "strokeCap":I
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "strokeCap":I
    .local v14, "color":J
    .local v16, "trackColor":J
    .local v18, "$dirty":I
    :goto_1a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v20, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v3, v14

    move/from16 v5, v19

    move-wide/from16 v6, v16

    move v8, v12

    move/from16 v9, p9

    move-object/from16 p1, v11

    move-object v11, v10

    .end local v11    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJIII)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1b

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v11    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2c
    move-object/from16 p1, v11

    .end local v11    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1b
    return-void
.end method

.method public static final CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "color"    # J
    .param p3, "strokeWidth"    # F
    .param p4, "trackColor"    # J
    .param p6, "strokeCap"    # I
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 396
    move/from16 v10, p8

    const v0, -0x6e80f9f

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,3:c#ui.unit.Dp,4:c#ui.graphics.Color,2:c#ui.graphics.StrokeCap)391@16088L13,393@16222L18,*396@16366L7,400@16465L28,402@16622L278,414@17014L230,425@17361L346,436@17740L355,451@18209L628,447@18100L737:ProgressIndicator.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    const/4 v12, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v12

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_5

    and-int/lit8 v4, p9, 0x2

    if-nez v4, :cond_3

    move-wide/from16 v4, p1

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p1

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v4, p1

    :goto_3
    and-int/lit8 v6, p9, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v7, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_8

    move/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move/from16 v7, p3

    :goto_5
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, p9, 0x8

    if-nez v8, :cond_9

    move-wide/from16 v8, p4

    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v8, p4

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_b
    move-wide/from16 v8, p4

    :goto_7
    and-int/lit8 v16, p9, 0x10

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v13, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_e

    move/from16 v13, p6

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v1, v1, v18

    goto :goto_9

    :cond_e
    move/from16 v13, p6

    :goto_9
    and-int/lit16 v14, v1, 0x2493

    const/16 v15, 0x2492

    if-ne v14, v15, :cond_10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_a

    .line 470
    :cond_f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v31, v1

    move-wide v14, v4

    move/from16 v34, v7

    move-wide/from16 v16, v8

    move v10, v13

    move-object v13, v3

    goto/16 :goto_15

    .line 396
    :cond_10
    :goto_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v14, v10, 0x1

    if-eqz v14, :cond_14

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_b

    .line 395
    :cond_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_12

    and-int/lit8 v1, v1, -0x71

    :cond_12
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_13

    and-int/lit16 v1, v1, -0x1c01

    :cond_13
    move v6, v1

    move-wide v14, v4

    move/from16 v16, v13

    move-object v13, v3

    move-wide/from16 v35, v8

    move v9, v7

    move-wide/from16 v7, v35

    goto :goto_e

    .line 396
    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    .line 391
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_c

    .line 396
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move-object v2, v3

    .line 391
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_c
    and-int/lit8 v3, p9, 0x2

    const/4 v14, 0x6

    if-eqz v3, :cond_16

    .line 392
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v11, v14}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p1    # "color":J
    .local v3, "color":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_d

    .line 391
    .end local v3    # "color":J
    .restart local p1    # "color":J
    :cond_16
    move-wide v3, v4

    .line 392
    .end local p1    # "color":J
    .restart local v3    # "color":J
    :goto_d
    if-eqz v6, :cond_17

    .line 393
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v5

    move v7, v5

    .end local p3    # "strokeWidth":F
    .local v7, "strokeWidth":F
    :cond_17
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_18

    .line 394
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v11, v14}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .end local p4    # "trackColor":J
    .local v5, "trackColor":J
    and-int/lit16 v1, v1, -0x1c01

    move-wide v8, v5

    .end local v5    # "trackColor":J
    .local v8, "trackColor":J
    :cond_18
    if-eqz v16, :cond_19

    .line 395
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularIndeterminateStrokeCap-KaPHkGw()I

    move-result v5

    move v6, v1

    move-object v13, v2

    move-wide v14, v3

    move/from16 v16, v5

    move-wide/from16 v35, v8

    move v9, v7

    move-wide/from16 v7, v35

    .end local p6    # "strokeCap":I
    .local v5, "strokeCap":I
    goto :goto_e

    .line 394
    .end local v5    # "strokeCap":I
    .restart local p6    # "strokeCap":I
    :cond_19
    move v6, v1

    move-wide v14, v3

    move/from16 v16, v13

    move-object v13, v2

    move-wide/from16 v35, v8

    move v9, v7

    move-wide/from16 v7, v35

    .line 395
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "color":J
    .end local v8    # "trackColor":J
    .end local p6    # "strokeCap":I
    .local v6, "$dirty":I
    .local v7, "trackColor":J
    .local v9, "strokeWidth":F
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "color":J
    .local v16, "strokeCap":I
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 396
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:395)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 397
    :cond_1a
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 753
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 397
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .local v0, "$this$CircularProgressIndicator_LxG7B9w_u24lambda_u249":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 398
    .local v1, "$i$a$-with-ProgressIndicatorKt$CircularProgressIndicator$stroke$2":I
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1a

    const/16 v21, 0x0

    move-object/from16 p0, v2

    move/from16 p1, v3

    move/from16 p2, v4

    move/from16 p3, v16

    move/from16 p4, v5

    move-object/from16 p5, v19

    move/from16 p6, v20

    move-object/from16 p7, v21

    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 397
    .end local v0    # "$this$CircularProgressIndicator_LxG7B9w_u24lambda_u249":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-ProgressIndicatorKt$CircularProgressIndicator$stroke$2":I
    move-object v0, v2

    .line 401
    .local v0, "stroke":Landroidx/compose/ui/graphics/drawscope/Stroke;
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v5, v11, v4, v3}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v30

    .line 403
    .local v30, "transition":Landroidx/compose/animation/core/InfiniteTransition;
    nop

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 405
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 406
    sget-object v1, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v20

    .line 409
    nop

    .line 408
    nop

    .line 410
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v1

    .line 408
    const/16 v3, 0x1a04

    invoke-static {v3, v4, v1, v12, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 407
    const/4 v3, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-wide/from16 p3, v21

    move/from16 p5, v23

    move-object/from16 p6, v24

    invoke-static/range {p1 .. p6}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v21

    const/16 v22, 0x0

    sget v1, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v1, v1, 0x1b0

    sget v3, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    or-int v23, v1, v3

    const/16 v24, 0x10

    .line 403
    move-object/from16 v1, v30

    const/16 v25, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v31, v6

    .end local v6    # "$dirty":I
    .local v31, "$dirty":I
    move-object/from16 v6, v22

    move-wide/from16 v32, v7

    .end local v7    # "trackColor":J
    .local v32, "trackColor":J
    move-object v7, v11

    move/from16 v8, v23

    move/from16 v34, v9

    .end local v9    # "strokeWidth":F
    .local v34, "strokeWidth":F
    move/from16 v9, v24

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 415
    .local v1, "currentRotation":Landroidx/compose/runtime/State;
    nop

    .line 416
    const/4 v2, 0x0

    .line 417
    const/high16 v3, 0x438f0000    # 286.0f

    .line 420
    nop

    .line 419
    nop

    .line 421
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v4

    .line 419
    const/16 v5, 0x534

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v12, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 418
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x6

    const/4 v12, 0x0

    move-object/from16 p0, v4

    move-object/from16 p1, v5

    move-wide/from16 p2, v8

    move/from16 p4, v6

    move-object/from16 p5, v12

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    sget v6, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v6, v6, 0x1b0

    sget v8, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v8, v8, 0x9

    or-int/2addr v6, v8

    const/16 v8, 0x8

    .line 415
    move-object/from16 p0, v30

    move/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v11

    move/from16 p6, v6

    move/from16 p7, v8

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 426
    .local v2, "baseRotation":Landroidx/compose/runtime/State;
    nop

    .line 427
    const/4 v3, 0x0

    .line 428
    const/high16 v4, 0x43910000    # 290.0f

    .line 430
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 429
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x6

    const/16 v19, 0x0

    move-object/from16 p0, v5

    move-object/from16 p1, v6

    move-wide/from16 p2, v8

    move/from16 p4, v12

    move-object/from16 p5, v19

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v5

    sget v8, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v8, v8, 0x1b0

    sget v9, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v9, v9, 0x9

    or-int/2addr v8, v9

    const/16 v9, 0x8

    .line 426
    move-object/from16 p0, v30

    move/from16 p1, v3

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v11

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 437
    .local v3, "endAngle":Landroidx/compose/runtime/State;
    nop

    .line 438
    const/4 v4, 0x0

    .line 439
    const/high16 v5, 0x43910000    # 290.0f

    .line 441
    sget-object v6, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v6}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 440
    const/4 v8, 0x0

    const-wide/16 v19, 0x0

    const/4 v9, 0x6

    const/4 v12, 0x0

    move-object/from16 p0, v6

    move-object/from16 p1, v8

    move-wide/from16 p2, v19

    move/from16 p4, v9

    move-object/from16 p5, v12

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v6

    sget v9, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v9, v9, 0x1b0

    sget v12, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v12, v12, 0x9

    or-int/2addr v9, v12

    const/16 v12, 0x8

    .line 437
    move-object/from16 p0, v30

    move/from16 p1, v4

    move/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v8

    move-object/from16 p5, v11

    move/from16 p6, v9

    move/from16 p7, v12

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 449
    .local v4, "startAngle":Landroidx/compose/runtime/State;
    nop

    .line 450
    invoke-static {v13}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 451
    sget v6, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v6, 0x30fcbe21

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember):ProgressIndicator.kt#9igjgp"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, v31

    .end local v31    # "$dirty":I
    .restart local v6    # "$dirty":I
    and-int/lit16 v8, v6, 0x1c00

    xor-int/lit16 v8, v8, 0xc00

    const/16 v9, 0x800

    if-le v8, v9, :cond_1b

    move-wide/from16 v8, v32

    .end local v32    # "trackColor":J
    .restart local v8    # "trackColor":J
    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-nez v12, :cond_1c

    goto :goto_f

    .end local v8    # "trackColor":J
    .restart local v32    # "trackColor":J
    :cond_1b
    move-wide/from16 v8, v32

    .end local v32    # "trackColor":J
    .restart local v8    # "trackColor":J
    :goto_f
    and-int/lit16 v12, v6, 0xc00

    const/16 v7, 0x800

    if-ne v12, v7, :cond_1d

    :cond_1c
    move/from16 v7, v25

    goto :goto_10

    :cond_1d
    const/4 v7, 0x0

    :goto_10
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v7, v12

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v7, v12

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v7, v12

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v7, v12

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v7, v12

    and-int/lit16 v12, v6, 0x380

    const/16 v10, 0x100

    if-ne v12, v10, :cond_1e

    move/from16 v10, v25

    goto :goto_11

    :cond_1e
    const/4 v10, 0x0

    :goto_11
    or-int/2addr v7, v10

    and-int/lit8 v10, v6, 0x70

    xor-int/lit8 v10, v10, 0x30

    const/16 v12, 0x20

    if-le v10, v12, :cond_1f

    invoke-interface {v11, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-nez v10, :cond_20

    :cond_1f
    and-int/lit8 v10, v6, 0x30

    const/16 v12, 0x20

    if-ne v10, v12, :cond_21

    :cond_20
    goto :goto_12

    :cond_21
    const/16 v25, 0x0

    :goto_12
    or-int v7, v7, v25

    .line 452
    nop

    .local v7, "invalid$iv":Z
    move-object v10, v11

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 754
    .local v12, "$i$f$cache":I
    move/from16 v31, v6

    .end local v6    # "$dirty":I
    .restart local v31    # "$dirty":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 755
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_23

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p0, v7

    .end local v7    # "invalid$iv":Z
    .local p0, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_22

    goto :goto_13

    .line 759
    :cond_22
    move-object v7, v6

    goto :goto_14

    .line 755
    .end local p0    # "invalid$iv":Z
    .restart local v7    # "invalid$iv":Z
    :cond_23
    move/from16 p0, v7

    .line 756
    .end local v7    # "invalid$iv":Z
    .restart local p0    # "invalid$iv":Z
    :goto_13
    const/4 v7, 0x0

    .line 452
    .local v7, "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$4":I
    new-instance v18, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$4$1;

    move-object/from16 v19, v18

    move-wide/from16 v20, v8

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v2

    move/from16 v27, v34

    move-wide/from16 v28, v14

    invoke-direct/range {v19 .. v29}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$4$1;-><init>(JLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;FJ)V

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 756
    .end local v7    # "$i$a$-cache-ProgressIndicatorKt$CircularProgressIndicator$4":I
    move-object/from16 v7, v18

    .line 757
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 758
    nop

    .line 755
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 754
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 452
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local p0    # "invalid$iv":Z
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 448
    const/4 v6, 0x0

    invoke-static {v5, v7, v11, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 470
    .end local v0    # "stroke":Landroidx/compose/ui/graphics/drawscope/Stroke;
    .end local v1    # "currentRotation":Landroidx/compose/runtime/State;
    .end local v2    # "baseRotation":Landroidx/compose/runtime/State;
    .end local v3    # "endAngle":Landroidx/compose/runtime/State;
    .end local v4    # "startAngle":Landroidx/compose/runtime/State;
    .end local v30    # "transition":Landroidx/compose/animation/core/InfiniteTransition;
    :cond_24
    move/from16 v10, v16

    move-wide/from16 v16, v8

    .end local v8    # "trackColor":J
    .local v10, "strokeCap":I
    .local v16, "trackColor":J
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_25

    new-instance v18, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5;

    move-object/from16 v0, v18

    move-object v1, v13

    move-wide v2, v14

    move/from16 v4, v34

    move-wide/from16 v5, v16

    move v7, v10

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5;-><init>(Landroidx/compose/ui/Modifier;JFJIII)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_25
    return-void
.end method

.method public static final synthetic CircularProgressIndicator-MBs18nI(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0, "progress"    # F
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "color"    # J
    .param p4, "strokeWidth"    # F
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 509
    move/from16 v8, p6

    const v0, 0x1802de6c

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.unit.Dp)506@20085L13,513@20298L18,508@20172L219:ProgressIndicator.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0x6

    if-nez v2, :cond_2

    move/from16 v6, p0

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move/from16 v6, p0

    :goto_1
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v4, v8, 0x180

    if-nez v4, :cond_8

    and-int/lit8 v4, p7, 0x4

    if-nez v4, :cond_6

    move-wide/from16 v4, p2

    invoke-interface {v7, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v4, p2

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v4, p2

    :goto_5
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v10, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_b

    move/from16 v10, p4

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_b
    move/from16 v10, p4

    :goto_7
    and-int/lit16 v11, v1, 0x493

    const/16 v12, 0x492

    if-ne v11, v12, :cond_d

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_8

    .line 516
    :cond_c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v13, v1

    move-object v9, v3

    move v12, v10

    move-wide v10, v4

    goto/16 :goto_d

    .line 509
    :cond_d
    :goto_8
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v8, 0x1

    const/4 v12, 0x6

    if-eqz v11, :cond_10

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_9

    .line 508
    :cond_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_f

    and-int/lit16 v1, v1, -0x381

    :cond_f
    move-object v2, v3

    move-wide v3, v4

    move v5, v10

    goto :goto_c

    .line 509
    :cond_10
    :goto_9
    if-eqz v2, :cond_11

    .line 506
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_a

    .line 509
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move-object v2, v3

    .line 506
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_a
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_12

    .line 507
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v7, v12}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p2    # "color":J
    .local v3, "color":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_b

    .line 506
    .end local v3    # "color":J
    .restart local p2    # "color":J
    :cond_12
    move-wide v3, v4

    .line 507
    .end local p2    # "color":J
    .restart local v3    # "color":J
    :goto_b
    if-eqz v9, :cond_13

    .line 508
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v5

    .end local p4    # "strokeWidth":F
    .local v5, "strokeWidth":F
    goto :goto_c

    .line 507
    .end local v5    # "strokeWidth":F
    .restart local p4    # "strokeWidth":F
    :cond_13
    move v5, v10

    .line 508
    .end local p4    # "strokeWidth":F
    .restart local v5    # "strokeWidth":F
    :goto_c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 509
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:508)"

    invoke-static {v0, v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 510
    :cond_14
    nop

    .line 511
    nop

    .line 512
    nop

    .line 513
    nop

    .line 514
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0, v7, v12}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    .line 515
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularDeterminateStrokeCap-KaPHkGw()I

    move-result v16

    and-int/lit8 v0, v1, 0xe

    const/high16 v9, 0x30000

    or-int/2addr v0, v9

    and-int/lit8 v9, v1, 0x70

    or-int/2addr v0, v9

    and-int/lit16 v9, v1, 0x380

    or-int/2addr v0, v9

    and-int/lit16 v9, v1, 0x1c00

    or-int v18, v0, v9

    const/16 v19, 0x0

    .line 509
    move/from16 v9, p0

    move-object v10, v2

    move-wide v11, v3

    move v13, v5

    move-object/from16 v17, v7

    invoke-static/range {v9 .. v19}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-DUhRLBM(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 516
    :cond_15
    move v13, v1

    move-object v9, v2

    move-wide v10, v3

    move v12, v5

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "color":J
    .end local v5    # "strokeWidth":F
    .local v9, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "color":J
    .local v12, "strokeWidth":F
    .local v13, "$dirty":I
    :goto_d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_16

    new-instance v15, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$8;

    move-object v0, v15

    move/from16 v1, p0

    move-object v2, v9

    move-wide v3, v10

    move v5, v12

    move/from16 v6, p6

    move-object/from16 v16, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$8;-><init>(FLandroidx/compose/ui/Modifier;JFII)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_e

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_16
    move-object/from16 v16, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_e
    return-void
.end method

.method public static final synthetic CircularProgressIndicator-aM-cp0Q(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "color"    # J
    .param p3, "strokeWidth"    # F
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 524
    move/from16 v7, p5

    const v0, 0x3875079c

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.unit.Dp)521@20600L13,527@20799L18,523@20687L207:ProgressIndicator.kt#uh7d8r"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v7, 0x30

    if-nez v4, :cond_5

    and-int/lit8 v4, p6, 0x2

    if-nez v4, :cond_3

    move-wide/from16 v4, p1

    invoke-interface {v6, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p1

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v1, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v4, p1

    :goto_3
    and-int/lit8 v8, p6, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v9, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_8

    move/from16 v9, p3

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v1, v10

    goto :goto_5

    :cond_8
    move/from16 v9, p3

    :goto_5
    and-int/lit16 v10, v1, 0x93

    const/16 v11, 0x92

    if-ne v10, v11, :cond_a

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_6

    .line 530
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v12, v1

    move-object v8, v3

    move v11, v9

    move-wide v9, v4

    goto/16 :goto_b

    .line 524
    :cond_a
    :goto_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v7, 0x1

    const/4 v11, 0x6

    if-eqz v10, :cond_d

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_7

    .line 523
    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_c

    and-int/lit8 v1, v1, -0x71

    :cond_c
    move-object v2, v3

    move-wide v3, v4

    move v5, v9

    goto :goto_a

    .line 524
    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    .line 521
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_8

    .line 524
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_e
    move-object v2, v3

    .line 521
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_8
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_f

    .line 522
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v6, v11}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p1    # "color":J
    .local v3, "color":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_9

    .line 521
    .end local v3    # "color":J
    .restart local p1    # "color":J
    :cond_f
    move-wide v3, v4

    .line 522
    .end local p1    # "color":J
    .restart local v3    # "color":J
    :goto_9
    if-eqz v8, :cond_10

    .line 523
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularStrokeWidth-D9Ej5fM()F

    move-result v5

    .end local p3    # "strokeWidth":F
    .local v5, "strokeWidth":F
    goto :goto_a

    .line 522
    .end local v5    # "strokeWidth":F
    .restart local p3    # "strokeWidth":F
    :cond_10
    move v5, v9

    .line 523
    .end local p3    # "strokeWidth":F
    .restart local v5    # "strokeWidth":F
    :goto_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 524
    const/4 v8, -0x1

    const-string/jumbo v9, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:523)"

    invoke-static {v0, v1, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 525
    :cond_11
    nop

    .line 526
    nop

    .line 527
    nop

    .line 528
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0, v6, v11}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    .line 529
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getCircularIndeterminateStrokeCap-KaPHkGw()I

    move-result v14

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0x6000

    and-int/lit8 v8, v1, 0x70

    or-int/2addr v0, v8

    and-int/lit16 v8, v1, 0x380

    or-int v16, v0, v8

    const/16 v17, 0x0

    .line 524
    move-object v8, v2

    move-wide v9, v3

    move v11, v5

    move-object v15, v6

    invoke-static/range {v8 .. v17}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 530
    :cond_12
    move v12, v1

    move-object v8, v2

    move-wide v9, v3

    move v11, v5

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "color":J
    .end local v5    # "strokeWidth":F
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    .local v9, "color":J
    .local v11, "strokeWidth":F
    .local v12, "$dirty":I
    :goto_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_13

    new-instance v14, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$9;

    move-object v0, v14

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move/from16 v5, p5

    move-object v15, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$9;-><init>(Landroidx/compose/ui/Modifier;JFII)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_13
    move-object v15, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_c
    return-void
.end method

.method public static final LinearProgressIndicator-2cYBFYY(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "color"    # J
    .param p3, "trackColor"    # J
    .param p5, "strokeCap"    # I
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 122
    move/from16 v9, p7

    const v0, -0x1c6c634f

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.StrokeCap)118@5518L11,119@5581L16,122@5702L28,126@5984L320,137@6348L320,148@6713L324,159@7082L324,175@7581L660,170@7411L830:ProgressIndicator.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_5

    and-int/lit8 v4, p8, 0x2

    if-nez v4, :cond_3

    move-wide/from16 v4, p1

    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p1

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v4, p1

    :goto_3
    and-int/lit16 v6, v9, 0x180

    const/16 v12, 0x100

    if-nez v6, :cond_8

    and-int/lit8 v6, p8, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p3

    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v12

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p3

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p3

    :goto_5
    and-int/lit8 v8, p8, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v14, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v14, v9, 0xc00

    if-nez v14, :cond_b

    move/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v1, v15

    goto :goto_7

    :cond_b
    move/from16 v14, p5

    :goto_7
    and-int/lit16 v15, v1, 0x493

    const/16 v11, 0x492

    if-ne v15, v11, :cond_d

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_8

    .line 198
    :cond_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v11, v3

    move-wide/from16 v28, v4

    move-wide v12, v6

    move/from16 v24, v14

    move v14, v1

    goto/16 :goto_14

    .line 122
    :cond_d
    :goto_8
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_11

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_9

    .line 121
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_f

    and-int/lit8 v1, v1, -0x71

    :cond_f
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_10

    and-int/lit16 v1, v1, -0x381

    :cond_10
    move-object v11, v3

    move-wide v7, v6

    move/from16 v24, v14

    move v6, v1

    move-wide v14, v4

    goto :goto_d

    .line 122
    :cond_11
    :goto_9
    if-eqz v2, :cond_12

    .line 118
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_a

    .line 122
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_12
    move-object v2, v3

    .line 118
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_a
    and-int/lit8 v3, p8, 0x2

    const/4 v11, 0x6

    if-eqz v3, :cond_13

    .line 119
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v10, v11}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p1    # "color":J
    .local v3, "color":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_b

    .line 118
    .end local v3    # "color":J
    .restart local p1    # "color":J
    :cond_13
    move-wide v3, v4

    .line 119
    .end local p1    # "color":J
    .restart local v3    # "color":J
    :goto_b
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_14

    .line 120
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v10, v11}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .end local p3    # "trackColor":J
    .local v5, "trackColor":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_c

    .line 119
    .end local v5    # "trackColor":J
    .restart local p3    # "trackColor":J
    :cond_14
    move-wide v5, v6

    .line 120
    .end local p3    # "trackColor":J
    .restart local v5    # "trackColor":J
    :goto_c
    if-eqz v8, :cond_15

    .line 121
    sget-object v7, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v7

    move-object v11, v2

    move-wide v14, v3

    move/from16 v24, v7

    move-wide v7, v5

    move v6, v1

    .end local p5    # "strokeCap":I
    .local v7, "strokeCap":I
    goto :goto_d

    .line 120
    .end local v7    # "strokeCap":I
    .restart local p5    # "strokeCap":I
    :cond_15
    move-object v11, v2

    move-wide v7, v5

    move/from16 v24, v14

    move v6, v1

    move-wide v14, v3

    .line 121
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "color":J
    .end local v5    # "trackColor":J
    .end local p5    # "strokeCap":I
    .local v6, "$dirty":I
    .local v7, "trackColor":J
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "color":J
    .local v24, "strokeCap":I
    :goto_d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 122
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:121)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    nop

    .line 123
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v10, v5, v4}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v0

    .line 127
    .local v0, "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    nop

    .line 128
    const/4 v2, 0x0

    .line 129
    const/high16 v3, 0x3f800000    # 1.0f

    .line 131
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 130
    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v16

    move-wide/from16 p2, v17

    move/from16 p4, v19

    move-object/from16 p5, v20

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v16

    const/16 v17, 0x0

    sget v1, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v1, v1, 0x1b0

    sget v18, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v18, v18, 0x9

    or-int v18, v1, v18

    const/16 v19, 0x8

    .line 127
    move-object v1, v0

    move/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move v13, v6

    .end local v6    # "$dirty":I
    .local v13, "$dirty":I
    move-object v6, v10

    move-wide/from16 v25, v7

    .end local v7    # "trackColor":J
    .local v25, "trackColor":J
    move/from16 v7, v18

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 138
    .local v8, "firstLineHead":Landroidx/compose/runtime/State;
    nop

    .line 139
    nop

    .line 140
    nop

    .line 142
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 141
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    move-wide/from16 p2, v5

    move/from16 p4, v7

    move-object/from16 p5, v17

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/4 v5, 0x0

    sget v1, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v1, v1, 0x1b0

    sget v6, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v6, v6, 0x9

    or-int v7, v1, v6

    const/16 v17, 0x8

    .line 138
    move-object v1, v0

    move-object v6, v10

    move-object/from16 v27, v8

    .end local v8    # "firstLineHead":Landroidx/compose/runtime/State;
    .local v27, "firstLineHead":Landroidx/compose/runtime/State;
    move/from16 v8, v17

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 149
    .local v8, "firstLineTail":Landroidx/compose/runtime/State;
    nop

    .line 150
    nop

    .line 151
    nop

    .line 153
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 152
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/16 v17, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    move-wide/from16 p2, v5

    move/from16 p4, v7

    move-object/from16 p5, v17

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/4 v5, 0x0

    sget v1, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v1, v1, 0x1b0

    sget v6, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v6, v6, 0x9

    or-int v7, v1, v6

    const/16 v17, 0x8

    .line 149
    move-object v1, v0

    move-object v6, v10

    move-object/from16 v28, v8

    .end local v8    # "firstLineTail":Landroidx/compose/runtime/State;
    .local v28, "firstLineTail":Landroidx/compose/runtime/State;
    move/from16 v8, v17

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 160
    .local v8, "secondLineHead":Landroidx/compose/runtime/State;
    nop

    .line 161
    nop

    .line 162
    nop

    .line 164
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 163
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/16 v17, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    move-wide/from16 p2, v5

    move/from16 p4, v7

    move-object/from16 p5, v17

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/4 v5, 0x0

    sget v1, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v1, v1, 0x1b0

    sget v6, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v6, v6, 0x9

    or-int v7, v1, v6

    const/16 v17, 0x8

    .line 160
    move-object v1, v0

    move-object v6, v10

    move-object/from16 v29, v8

    .end local v8    # "secondLineHead":Landroidx/compose/runtime/State;
    .local v29, "secondLineHead":Landroidx/compose/runtime/State;
    move/from16 v8, v17

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 172
    .local v1, "secondLineTail":Landroidx/compose/runtime/State;
    nop

    .line 173
    sget-object v2, Landroidx/compose/material3/ProgressIndicatorKt;->IncreaseSemanticsBounds:Landroidx/compose/ui/Modifier;

    invoke-interface {v11, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 174
    invoke-static {v2}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 175
    sget v3, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    sget v4, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, -0x50610b9d

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):ProgressIndicator.kt#9igjgp"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v3, v13, 0x380

    xor-int/lit16 v3, v3, 0x180

    if-le v3, v12, :cond_17

    move-wide/from16 v5, v25

    .end local v25    # "trackColor":J
    .restart local v5    # "trackColor":J
    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_e

    .end local v5    # "trackColor":J
    .restart local v25    # "trackColor":J
    :cond_17
    move-wide/from16 v5, v25

    .end local v25    # "trackColor":J
    .restart local v5    # "trackColor":J
    :goto_e
    and-int/lit16 v3, v13, 0x180

    if-ne v3, v12, :cond_19

    :cond_18
    move/from16 v3, v20

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    :goto_f
    and-int/lit16 v4, v13, 0x1c00

    const/16 v7, 0x800

    if-ne v4, v7, :cond_1a

    move/from16 v4, v20

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    or-int/2addr v3, v4

    move-object/from16 v4, v27

    .end local v27    # "firstLineHead":Landroidx/compose/runtime/State;
    .local v4, "firstLineHead":Landroidx/compose/runtime/State;
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    move-object/from16 v7, v28

    .end local v28    # "firstLineTail":Landroidx/compose/runtime/State;
    .local v7, "firstLineTail":Landroidx/compose/runtime/State;
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    and-int/lit8 v8, v13, 0x70

    xor-int/lit8 v8, v8, 0x30

    const/16 v12, 0x20

    if-le v8, v12, :cond_1b

    invoke-interface {v10, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-nez v8, :cond_1c

    :cond_1b
    and-int/lit8 v8, v13, 0x30

    const/16 v12, 0x20

    if-ne v8, v12, :cond_1d

    :cond_1c
    goto :goto_11

    :cond_1d
    const/16 v20, 0x0

    :goto_11
    or-int v3, v3, v20

    move-object/from16 v8, v29

    .end local v29    # "secondLineHead":Landroidx/compose/runtime/State;
    .restart local v8    # "secondLineHead":Landroidx/compose/runtime/State;
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    .line 176
    move-object v12, v10

    .local v3, "invalid$iv":Z
    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 722
    .local v25, "$i$f$cache":I
    move-object/from16 p0, v0

    .end local v0    # "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    .local p0, "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 723
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_1f

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v3

    .end local v3    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1e

    goto :goto_12

    .line 727
    :cond_1e
    move-object v3, v0

    move-wide/from16 v28, v14

    goto :goto_13

    .line 723
    .end local p1    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_1f
    move/from16 p1, v3

    .line 724
    .end local v3    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_12
    const/4 v3, 0x0

    .line 176
    .local v3, "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$4":I
    new-instance v27, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$4$1;

    move-wide/from16 v28, v14

    .end local v14    # "color":J
    .local v28, "color":J
    move-object/from16 v14, v27

    move-wide v15, v5

    move/from16 v17, v24

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-wide/from16 v20, v28

    move-object/from16 v22, v8

    move-object/from16 v23, v1

    invoke-direct/range {v14 .. v23}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$4$1;-><init>(JILandroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    check-cast v27, Lkotlin/jvm/functions/Function1;

    .line 724
    .end local v3    # "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$4":I
    move-object/from16 v3, v27

    .line 725
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 726
    nop

    .line 723
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 722
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 176
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 171
    const/4 v0, 0x0

    invoke-static {v2, v3, v10, v0}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 198
    .end local v1    # "secondLineTail":Landroidx/compose/runtime/State;
    .end local v4    # "firstLineHead":Landroidx/compose/runtime/State;
    .end local v7    # "firstLineTail":Landroidx/compose/runtime/State;
    .end local v8    # "secondLineHead":Landroidx/compose/runtime/State;
    .end local p0    # "infiniteTransition":Landroidx/compose/animation/core/InfiniteTransition;
    :cond_20
    move v14, v13

    move-wide v12, v5

    .end local v5    # "trackColor":J
    .end local v13    # "$dirty":I
    .local v12, "trackColor":J
    .local v14, "$dirty":I
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_21

    new-instance v16, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$5;

    move-object/from16 v0, v16

    move-object v1, v11

    move-wide/from16 v2, v28

    move-wide v4, v12

    move/from16 v6, v24

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$5;-><init>(Landroidx/compose/ui/Modifier;JJIII)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method public static final synthetic LinearProgressIndicator-RIQooxk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "color"    # J
    .param p3, "trackColor"    # J
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 247
    move/from16 v8, p6

    const v0, 0x22e72f03

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.graphics.Color)244@9718L11,245@9781L16,246@9803L126:ProgressIndicator.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_5

    and-int/lit8 v4, p7, 0x2

    if-nez v4, :cond_3

    move-wide/from16 v4, p1

    invoke-interface {v7, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p1

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v4, p1

    :goto_3
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p7, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v9, p3

    invoke-interface {v7, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v9, p3

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-wide/from16 v9, p3

    :goto_5
    and-int/lit16 v6, v1, 0x93

    const/16 v11, 0x92

    if-ne v6, v11, :cond_a

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    .line 252
    :cond_9
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v14, v1

    move-wide v12, v9

    move-object v9, v3

    move-wide v10, v4

    goto/16 :goto_b

    .line 247
    :cond_a
    :goto_6
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_e

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    .line 246
    :cond_b
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_c

    and-int/lit8 v1, v1, -0x71

    :cond_c
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_d

    and-int/lit16 v1, v1, -0x381

    :cond_d
    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v9

    goto :goto_a

    .line 247
    :cond_e
    :goto_7
    if-eqz v2, :cond_f

    .line 244
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_8

    .line 247
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_f
    move-object v2, v3

    .line 244
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_8
    and-int/lit8 v3, p7, 0x2

    const/4 v6, 0x6

    if-eqz v3, :cond_10

    .line 245
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v7, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p1    # "color":J
    .local v3, "color":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_9

    .line 244
    .end local v3    # "color":J
    .restart local p1    # "color":J
    :cond_10
    move-wide v3, v4

    .line 245
    .end local p1    # "color":J
    .restart local v3    # "color":J
    :goto_9
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_11

    .line 246
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v7, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .end local p3    # "trackColor":J
    .local v5, "trackColor":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_a

    .line 245
    .end local v5    # "trackColor":J
    .restart local p3    # "trackColor":J
    :cond_11
    move-wide v5, v9

    .line 246
    .end local p3    # "trackColor":J
    .restart local v5    # "trackColor":J
    :goto_a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 247
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:246)"

    invoke-static {v0, v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 248
    :cond_12
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v14

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0xc00

    and-int/lit8 v9, v1, 0x70

    or-int/2addr v0, v9

    and-int/lit16 v9, v1, 0x380

    or-int v16, v0, v9

    const/16 v17, 0x0

    .line 247
    move-object v9, v2

    move-wide v10, v3

    move-wide v12, v5

    move-object v15, v7

    invoke-static/range {v9 .. v17}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-2cYBFYY(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 252
    :cond_13
    move v14, v1

    move-object v9, v2

    move-wide v10, v3

    move-wide v12, v5

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "color":J
    .end local v5    # "trackColor":J
    .local v9, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "color":J
    .local v12, "trackColor":J
    .local v14, "$dirty":I
    :goto_b
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_14

    new-instance v16, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$9;

    move-object/from16 v0, v16

    move-object v1, v9

    move-wide v2, v10

    move-wide v4, v12

    move/from16 v6, p6

    move-object/from16 v17, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$9;-><init>(Landroidx/compose/ui/Modifier;JJII)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_14
    move-object/from16 v17, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_c
    return-void
.end method

.method public static final LinearProgressIndicator-_5eSR-E(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "progress"    # F
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "color"    # J
    .param p4, "trackColor"    # J
    .param p6, "strokeCap"    # I
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Use the overload that takes `progress` as a lambda"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "LinearProgressIndicator(\nprogress = { progress },\nmodifier = modifier,\ncolor = color,\ntrackColor = trackColor,\nstrokeCap = strokeCap,\n)"
            imports = {}
        .end subannotation
    .end annotation

    .line 217
    move/from16 v10, p0

    move/from16 v11, p8

    const v0, 0x35f79b61

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)213@8723L11,214@8786L16,217@8918L12,216@8878L155:ProgressIndicator.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, p9, 0x4

    if-nez v5, :cond_6

    move-wide/from16 v5, p2

    invoke-interface {v9, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v5, p2

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    goto :goto_5

    :cond_8
    move-wide/from16 v5, p2

    :goto_5
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, p9, 0x8

    if-nez v7, :cond_9

    move-wide/from16 v7, p4

    invoke-interface {v9, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p4

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v1, v12

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p4

    :goto_7
    and-int/lit8 v12, p9, 0x10

    if-eqz v12, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v13, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v11, 0x6000

    if-nez v13, :cond_e

    move/from16 v13, p6

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move/from16 v13, p6

    :goto_9
    and-int/lit16 v14, v1, 0x2493

    const/16 v15, 0x2492

    if-ne v14, v15, :cond_10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_a

    .line 223
    :cond_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v1

    move-object v12, v4

    move-wide v15, v7

    move/from16 v17, v13

    move-wide v13, v5

    goto/16 :goto_13

    .line 217
    :cond_10
    :goto_a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_14

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_b

    .line 216
    :cond_11
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_12

    and-int/lit16 v1, v1, -0x381

    :cond_12
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_13

    and-int/lit16 v1, v1, -0x1c01

    :cond_13
    move-object v2, v4

    move-wide v4, v5

    move-wide v6, v7

    move v8, v13

    goto :goto_f

    .line 217
    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    .line 213
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_c

    .line 217
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move-object v2, v4

    .line 213
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_c
    and-int/lit8 v4, p9, 0x4

    const/4 v14, 0x6

    if-eqz v4, :cond_16

    .line 214
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v9, v14}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p2    # "color":J
    .local v4, "color":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_d

    .line 213
    .end local v4    # "color":J
    .restart local p2    # "color":J
    :cond_16
    move-wide v4, v5

    .line 214
    .end local p2    # "color":J
    .restart local v4    # "color":J
    :goto_d
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_17

    .line 215
    sget-object v6, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v6, v9, v14}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    .end local p4    # "trackColor":J
    .local v6, "trackColor":J
    and-int/lit16 v1, v1, -0x1c01

    goto :goto_e

    .line 214
    .end local v6    # "trackColor":J
    .restart local p4    # "trackColor":J
    :cond_17
    move-wide v6, v7

    .line 215
    .end local p4    # "trackColor":J
    .restart local v6    # "trackColor":J
    :goto_e
    if-eqz v12, :cond_18

    .line 216
    sget-object v8, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v8

    .end local p6    # "strokeCap":I
    .local v8, "strokeCap":I
    goto :goto_f

    .line 215
    .end local v8    # "strokeCap":I
    .restart local p6    # "strokeCap":I
    :cond_18
    move v8, v13

    .line 216
    .end local p6    # "strokeCap":I
    .restart local v8    # "strokeCap":I
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 217
    const/4 v12, -0x1

    const-string/jumbo v13, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:216)"

    invoke-static {v0, v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    const v0, -0x50610664

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):ProgressIndicator.kt#9igjgp"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v1, 0xe

    if-ne v0, v3, :cond_1a

    const/4 v0, 0x1

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    .line 218
    :goto_10
    move-object v3, v9

    .local v0, "invalid$iv":Z
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 728
    .local v12, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 729
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1c

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_1b

    goto :goto_11

    .line 733
    :cond_1b
    move/from16 p1, v0

    move-object v0, v13

    goto :goto_12

    .line 730
    :cond_1c
    :goto_11
    const/4 v15, 0x0

    .line 218
    .local v15, "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$6":I
    move/from16 p1, v0

    .end local v0    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$6$1;

    invoke-direct {v0, v10}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$6$1;-><init>(F)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 730
    .end local v15    # "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$6":I
    nop

    .line 731
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 732
    nop

    .line 729
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_12
    nop

    .line 728
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 218
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    and-int/lit8 v0, v1, 0x70

    and-int/lit16 v3, v1, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v1

    or-int v20, v0, v3

    const/16 v21, 0x0

    .line 217
    move-object v13, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v12 .. v21}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-_5eSR-E(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 223
    :cond_1d
    move/from16 v18, v1

    move-object v12, v2

    move-wide v13, v4

    move-wide v15, v6

    move/from16 v17, v8

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "color":J
    .end local v6    # "trackColor":J
    .end local v8    # "strokeCap":I
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "color":J
    .local v15, "trackColor":J
    .local v17, "strokeCap":I
    .local v18, "$dirty":I
    :goto_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1e

    new-instance v19, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$7;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move-object v2, v12

    move-wide v3, v13

    move-wide v5, v15

    move/from16 v7, v17

    move-object v10, v8

    move/from16 v8, p8

    move-object/from16 v20, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$7;-><init>(FLandroidx/compose/ui/Modifier;JJIII)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1e
    move-object/from16 v20, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14
    return-void
.end method

.method public static final LinearProgressIndicator-_5eSR-E(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "progress"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "color"    # J
    .param p4, "trackColor"    # J
    .param p6, "strokeCap"    # I
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "JJI",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 85
    move-object/from16 v10, p0

    move/from16 v11, p8

    const v0, -0x6b1bec9b

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.StrokeCap)81@3829L11,82@3892L16,85@4010L31,89@4162L102,93@4334L196,86@4046L484:ProgressIndicator.kt#uh7d8r"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, p9, 0x4

    if-nez v5, :cond_6

    move-wide/from16 v7, p2

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p2

    :goto_5
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_b

    and-int/lit8 v5, p9, 0x8

    if-nez v5, :cond_9

    move-wide/from16 v13, p4

    invoke-interface {v12, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v13, p4

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_b
    move-wide/from16 v13, p4

    :goto_7
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v11, 0x6000

    if-nez v6, :cond_e

    move/from16 v6, p6

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_e
    move/from16 v6, p6

    :goto_9
    and-int/lit16 v15, v1, 0x2493

    const/16 v9, 0x2492

    if-ne v15, v9, :cond_10

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_a

    .line 99
    :cond_f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v1

    move/from16 v18, v6

    move-wide/from16 v16, v13

    move-object v13, v4

    move-wide v14, v7

    goto/16 :goto_18

    .line 85
    :cond_10
    :goto_a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_14

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_b

    .line 84
    :cond_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_12

    and-int/lit16 v1, v1, -0x381

    :cond_12
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_13

    and-int/lit16 v1, v1, -0x1c01

    :cond_13
    move-object v2, v4

    goto :goto_d

    .line 85
    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    .line 81
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_c

    .line 85
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move-object v2, v4

    .line 81
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_c
    and-int/lit8 v4, p9, 0x4

    const/4 v9, 0x6

    if-eqz v4, :cond_16

    .line 82
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v12, v9}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    .end local p2    # "color":J
    .local v7, "color":J
    and-int/lit16 v1, v1, -0x381

    :cond_16
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_17

    .line 83
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4, v12, v9}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v13

    .end local p4    # "trackColor":J
    .local v13, "trackColor":J
    and-int/lit16 v1, v1, -0x1c01

    :cond_17
    if-eqz v5, :cond_18

    .line 84
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v4

    move v6, v4

    .end local p6    # "strokeCap":I
    .local v6, "strokeCap":I
    :cond_18
    :goto_d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 85
    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:84)"

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    const v0, -0x50611990

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):ProgressIndicator.kt#9igjgp"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v1, 0xe

    if-ne v4, v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    .line 86
    :goto_e
    nop

    .local v3, "invalid$iv":Z
    move-object v4, v12

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 704
    .local v15, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 705
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_1c

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_1b

    goto :goto_f

    .line 709
    :cond_1b
    move/from16 p3, v3

    move-object v3, v5

    goto :goto_10

    .line 706
    :cond_1c
    :goto_f
    const/4 v9, 0x0

    .line 86
    .local v9, "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$coercedProgress$1":I
    move/from16 p3, v3

    .end local v3    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    new-instance v3, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$coercedProgress$1$1;

    invoke-direct {v3, v10}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$coercedProgress$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 706
    .end local v9    # "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$coercedProgress$1":I
    nop

    .line 707
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 708
    nop

    .line 705
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_10
    nop

    .line 704
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 86
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "coercedProgress":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 88
    nop

    .line 89
    sget-object v4, Landroidx/compose/material3/ProgressIndicatorKt;->IncreaseSemanticsBounds:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 90
    const v5, -0x506118f8

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid$iv":Z
    move-object v9, v12

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 710
    .restart local v15    # "$i$f$cache":I
    move-object/from16 p3, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p3, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 711
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_1e

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v5

    .end local v5    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_1d

    goto :goto_11

    .line 715
    :cond_1d
    move-object/from16 p5, v2

    goto :goto_12

    .line 711
    .end local p4    # "invalid$iv":Z
    .restart local v5    # "invalid$iv":Z
    :cond_1e
    move/from16 p4, v5

    .line 712
    .end local v5    # "invalid$iv":Z
    .restart local p4    # "invalid$iv":Z
    :goto_11
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$1":I
    move-object/from16 p5, v2

    .end local v2    # "it$iv":Ljava/lang/Object;
    .local p5, "it$iv":Ljava/lang/Object;
    new-instance v2, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;

    invoke-direct {v2, v3}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 712
    .end local v5    # "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$1":I
    nop

    .line 713
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 714
    nop

    .line 711
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_12
    nop

    .line 710
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p5    # "it$iv":Ljava/lang/Object;
    nop

    .line 90
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v5, 0x1

    invoke-static {v4, v5, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 93
    sget v4, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    sget v9, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    invoke-static {v2, v4, v9}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, -0x5061184c

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v0, v1, 0x1c00

    xor-int/lit16 v0, v0, 0xc00

    const/16 v4, 0x800

    if-le v0, v4, :cond_1f

    invoke-interface {v12, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    and-int/lit16 v0, v1, 0xc00

    const/16 v4, 0x800

    if-ne v0, v4, :cond_21

    :cond_20
    move v0, v5

    goto :goto_13

    :cond_21
    const/4 v0, 0x0

    :goto_13
    const v4, 0xe000

    and-int/2addr v4, v1

    const/16 v9, 0x4000

    if-ne v4, v9, :cond_22

    move v4, v5

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    :goto_14
    or-int/2addr v0, v4

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    and-int/lit16 v4, v1, 0x380

    xor-int/lit16 v4, v4, 0x180

    const/16 v9, 0x100

    if-le v4, v9, :cond_23

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    and-int/lit16 v4, v1, 0x180

    const/16 v9, 0x100

    if-ne v4, v9, :cond_25

    :cond_24
    move v9, v5

    goto :goto_15

    :cond_25
    const/4 v9, 0x0

    :goto_15
    or-int/2addr v0, v9

    .line 94
    nop

    .local v0, "invalid$iv":Z
    move-object v4, v12

    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 716
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 717
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_27

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_26

    goto :goto_16

    .line 721
    :cond_26
    move-object v0, v9

    goto :goto_17

    .line 717
    .end local p2    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_27
    move/from16 p2, v0

    .line 718
    .end local v0    # "invalid$iv":Z
    .restart local p2    # "invalid$iv":Z
    :goto_16
    const/4 v0, 0x0

    .line 94
    .local v0, "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$2":I
    new-instance v16, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;

    move-object/from16 v18, v16

    move-wide/from16 v19, v13

    move/from16 v21, v6

    move-object/from16 v22, v3

    move-wide/from16 v23, v7

    invoke-direct/range {v18 .. v24}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;-><init>(JILkotlin/jvm/functions/Function0;J)V

    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 718
    .end local v0    # "$i$a$-cache-ProgressIndicatorKt$LinearProgressIndicator$2":I
    move-object/from16 v0, v16

    .line 719
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 720
    nop

    .line 717
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 716
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 94
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 87
    const/4 v4, 0x0

    invoke-static {v2, v0, v12, v4}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 99
    .end local v3    # "coercedProgress":Lkotlin/jvm/functions/Function0;
    :cond_28
    move/from16 v19, v1

    move/from16 v18, v6

    move-wide/from16 v16, v13

    move-object/from16 v13, p3

    move-wide v14, v7

    .end local v1    # "$dirty":I
    .end local v6    # "strokeCap":I
    .end local v7    # "color":J
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "color":J
    .local v16, "trackColor":J
    .local v18, "strokeCap":I
    .local v19, "$dirty":I
    :goto_18
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_29

    new-instance v20, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v14

    move-wide/from16 v5, v16

    move/from16 v7, v18

    move/from16 v8, p8

    move-object v10, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIII)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_29
    return-void
.end method

.method public static final synthetic LinearProgressIndicator-eaDK9VM(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0, "progress"    # F
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "color"    # J
    .param p4, "trackColor"    # J
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 233
    move/from16 v9, p7

    const v0, -0x1637364d

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LinearProgressIndicator)P(2,1,0:c#ui.graphics.Color,3:c#ui.graphics.Color)230@9286L11,231@9349L16,232@9371L140:ProgressIndicator.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_2

    move/from16 v7, p0

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move/from16 v7, p0

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v4, v9, 0x180

    if-nez v4, :cond_8

    and-int/lit8 v4, p8, 0x4

    if-nez v4, :cond_6

    move-wide/from16 v4, p2

    invoke-interface {v8, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v4, p2

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-wide/from16 v4, p2

    :goto_5
    and-int/lit16 v6, v9, 0xc00

    if-nez v6, :cond_b

    and-int/lit8 v6, p8, 0x8

    if-nez v6, :cond_9

    move-wide/from16 v10, p4

    invoke-interface {v8, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v10, p4

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-wide/from16 v10, p4

    :goto_7
    and-int/lit16 v6, v1, 0x493

    const/16 v12, 0x492

    if-ne v6, v12, :cond_d

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_8

    .line 239
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v15, v1

    move-wide v13, v10

    move-object v10, v3

    move-wide v11, v4

    goto/16 :goto_d

    .line 233
    :cond_d
    :goto_8
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_9

    .line 232
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_f

    and-int/lit16 v1, v1, -0x381

    :cond_f
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_10

    and-int/lit16 v1, v1, -0x1c01

    :cond_10
    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v10

    goto :goto_c

    .line 233
    :cond_11
    :goto_9
    if-eqz v2, :cond_12

    .line 230
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_a

    .line 233
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_12
    move-object v2, v3

    .line 230
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_a
    and-int/lit8 v3, p8, 0x4

    const/4 v6, 0x6

    if-eqz v3, :cond_13

    .line 231
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v3, v8, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p2    # "color":J
    .local v3, "color":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_b

    .line 230
    .end local v3    # "color":J
    .restart local p2    # "color":J
    :cond_13
    move-wide v3, v4

    .line 231
    .end local p2    # "color":J
    .restart local v3    # "color":J
    :goto_b
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_14

    .line 232
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v5, v8, v6}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .end local p4    # "trackColor":J
    .local v5, "trackColor":J
    and-int/lit16 v1, v1, -0x1c01

    goto :goto_c

    .line 231
    .end local v5    # "trackColor":J
    .restart local p4    # "trackColor":J
    :cond_14
    move-wide v5, v10

    .line 232
    .end local p4    # "trackColor":J
    .restart local v5    # "trackColor":J
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 233
    const/4 v10, -0x1

    const-string/jumbo v11, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:232)"

    invoke-static {v0, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 234
    :cond_15
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearStrokeCap-KaPHkGw()I

    move-result v16

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0x6000

    and-int/lit8 v10, v1, 0x70

    or-int/2addr v0, v10

    and-int/lit16 v10, v1, 0x380

    or-int/2addr v0, v10

    and-int/lit16 v10, v1, 0x1c00

    or-int v18, v0, v10

    const/16 v19, 0x0

    .line 233
    move/from16 v10, p0

    move-object v11, v2

    move-wide v12, v3

    move-wide v14, v5

    move-object/from16 v17, v8

    invoke-static/range {v10 .. v19}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-_5eSR-E(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 239
    :cond_16
    move v15, v1

    move-object v10, v2

    move-wide v11, v3

    move-wide v13, v5

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "color":J
    .end local v5    # "trackColor":J
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    .local v11, "color":J
    .local v13, "trackColor":J
    .local v15, "$dirty":I
    :goto_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v5

    if-eqz v5, :cond_17

    new-instance v16, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$8;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move-object v2, v10

    move-wide v3, v11

    move-object v9, v5

    move-wide v5, v13

    move/from16 v7, p7

    move-object/from16 v17, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$8;-><init>(FLandroidx/compose/ui/Modifier;JJII)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_e

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_17
    move-object/from16 v17, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_e
    return-void
.end method

.method public static final synthetic access$drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "color"    # J
    .param p3, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method public static final synthetic access$drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startAngle"    # F
    .param p2, "sweep"    # F
    .param p3, "color"    # J
    .param p5, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method public static final synthetic access$drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startAngle"    # F
    .param p2, "strokeWidth"    # F
    .param p3, "sweep"    # F
    .param p4, "color"    # J
    .param p6, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method public static final synthetic access$drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startFraction"    # F
    .param p2, "endFraction"    # F
    .param p3, "color"    # J
    .param p5, "strokeWidth"    # F
    .param p6, "strokeCap"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    return-void
.end method

.method public static final synthetic access$drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "color"    # J
    .param p3, "strokeWidth"    # F
    .param p4, "strokeCap"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ProgressIndicatorKt;->drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V

    return-void
.end method

.method public static final synthetic access$getCircularEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getFirstLineHeadEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getFirstLineTailEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getSecondLineHeadEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getSecondLineTailEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$getSemanticsBoundsPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    return v0
.end method

.method private static final drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 19
    .param p0, "$this$drawCircularIndicator_u2d42QJj7c"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startAngle"    # F
    .param p2, "sweep"    # F
    .param p3, "color"    # J
    .param p5, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 540
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 541
    .local v0, "diameterOffset":F
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    .line 542
    .local v2, "arcDimen":F
    nop

    .line 543
    nop

    .line 544
    nop

    .line 545
    nop

    .line 546
    const/4 v8, 0x0

    .line 547
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    .line 548
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v11

    .line 542
    const/4 v13, 0x0

    .line 549
    move-object/from16 v14, p5

    check-cast v14, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 542
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x340

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v3 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 551
    return-void
.end method

.method private static final drawCircularIndicatorTrack-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 6
    .param p0, "$this$drawCircularIndicatorTrack_u2dbw27NRU"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "color"    # J
    .param p3, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 556
    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method private static final drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0
    .param p0, "$this$drawDeterminateCircularIndicator_u2d42QJj7c"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startAngle"    # F
    .param p2, "sweep"    # F
    .param p3, "color"    # J
    .param p5, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 563
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method

.method private static final drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 9
    .param p0, "$this$drawIndeterminateCircularIndicator_u2dhrjfTZI"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startAngle"    # F
    .param p2, "strokeWidth"    # F
    .param p3, "sweep"    # F
    .param p4, "color"    # J
    .param p6, "stroke"    # Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 572
    invoke-virtual {p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_0
    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .local v0, "arg0$iv":F
    const/4 v1, 0x2

    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 766
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 578
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    nop

    .local v0, "other$iv":F
    const/4 v1, 0x0

    .line 772
    .local v1, "$i$f$div-0680j_4":I
    div-float v0, p2, v0

    .line 578
    .end local v0    # "other$iv":F
    .end local v1    # "$i$f$div-0680j_4":I
    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 572
    :goto_0
    nop

    .line 583
    .local v0, "strokeCapOffset":F
    add-float v7, p1, v0

    .line 587
    .local v7, "adjustedStartAngle":F
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 589
    .local v8, "adjustedSweep":F
    move-object v1, p0

    move v2, v7

    move v3, v8

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 590
    return-void
.end method

.method private static final drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V
    .locals 26
    .param p0, "$this$drawLinearIndicator_u2dqYKTg0g"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "startFraction"    # F
    .param p2, "endFraction"    # F
    .param p3, "color"    # J
    .param p5, "strokeWidth"    # F
    .param p6, "strokeCap"    # I

    .line 261
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    .line 262
    .local v0, "width":F
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    .line 264
    .local v1, "height":F
    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 266
    .local v3, "yOffset":F
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 267
    .local v4, "isLtr":Z
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    move/from16 v6, p1

    goto :goto_1

    :cond_1
    sub-float v6, v5, p2

    :goto_1
    mul-float/2addr v6, v0

    .line 268
    .local v6, "barStart":F
    if-eqz v4, :cond_2

    move/from16 v5, p2

    goto :goto_2

    :cond_2
    sub-float v5, v5, p1

    :goto_2
    mul-float/2addr v5, v0

    .line 271
    .local v5, "barEnd":F
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v7

    move/from16 v15, p6

    invoke-static {v15, v7}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_5

    cmpl-float v7, v1, v0

    if-lez v7, :cond_3

    goto/16 :goto_3

    .line 276
    :cond_3
    div-float v2, p5, v2

    .line 277
    .local v2, "strokeCapOffset":F
    sub-float v7, v0, v2

    invoke-static {v2, v7}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    .line 278
    .local v7, "coerceRange":Lkotlin/ranges/ClosedFloatingPointRange;
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    invoke-static {v8, v7}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .line 279
    .local v13, "adjustedBarStart":F
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    invoke-static {v8, v7}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v14

    .line 281
    .local v14, "adjustedBarEnd":F
    sub-float v8, p2, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 283
    nop

    .line 284
    nop

    .line 285
    invoke-static {v13, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    .line 286
    invoke-static {v14, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v16

    .line 287
    nop

    .line 288
    nop

    .line 283
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1e0

    const/16 v23, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move/from16 v24, v13

    move/from16 v25, v14

    .end local v13    # "adjustedBarStart":F
    .end local v14    # "adjustedBarEnd":F
    .local v24, "adjustedBarStart":F
    .local v25, "adjustedBarEnd":F
    move-wide/from16 v13, v16

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    invoke-static/range {v8 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_4

    .line 281
    .end local v24    # "adjustedBarStart":F
    .end local v25    # "adjustedBarEnd":F
    .restart local v13    # "adjustedBarStart":F
    .restart local v14    # "adjustedBarEnd":F
    :cond_4
    move/from16 v24, v13

    move/from16 v25, v14

    .end local v13    # "adjustedBarStart":F
    .end local v14    # "adjustedBarEnd":F
    .restart local v24    # "adjustedBarStart":F
    .restart local v25    # "adjustedBarEnd":F
    goto :goto_4

    .line 273
    .end local v2    # "strokeCapOffset":F
    .end local v7    # "coerceRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .end local v24    # "adjustedBarStart":F
    .end local v25    # "adjustedBarEnd":F
    :cond_5
    :goto_3
    invoke-static {v6, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    invoke-static {v5, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1f0

    const/16 v22, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move/from16 v15, p5

    invoke-static/range {v8 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 292
    :goto_4
    return-void
.end method

.method private static final drawLinearIndicatorTrack-AZGd3zU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V
    .locals 7
    .param p0, "$this$drawLinearIndicatorTrack_u2dAZGd3zU"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "color"    # J
    .param p3, "strokeWidth"    # F
    .param p4, "strokeCap"    # I

    .line 298
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ProgressIndicatorKt;->drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V

    return-void
.end method

.method public static final getCircularIndicatorDiameter()F
    .locals 1

    .line 648
    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    return v0
.end method

.method public static final getLinearIndicatorHeight()F
    .locals 1

    .line 643
    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorHeight:F

    return v0
.end method

.method public static final getLinearIndicatorWidth()F
    .locals 1

    .line 640
    sget v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndicatorWidth:F

    return v0
.end method
