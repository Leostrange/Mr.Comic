.class public final Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;
.super Ljava/lang/Object;
.source "PullRefreshIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullRefreshIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullRefreshIndicator.kt\nandroidx/compose/material/pullrefresh/PullRefreshIndicatorKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 11 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,250:1\n50#2:251\n49#2:252\n456#2,8:278\n464#2,3:292\n467#2,3:296\n25#2:301\n36#2:309\n1116#3,6:253\n1116#3,3:302\n1119#3,3:306\n1116#3,6:310\n74#4:259\n154#5:260\n154#5:334\n164#5:335\n164#5:336\n154#5:337\n154#5:338\n154#5:339\n68#6,6:261\n74#6:295\n78#6:300\n79#7,11:267\n92#7:299\n3737#8,6:286\n1#9:305\n137#10,5:316\n262#10,11:321\n81#11:332\n81#11:333\n*S KotlinDebug\n*F\n+ 1 PullRefreshIndicator.kt\nandroidx/compose/material/pullrefresh/PullRefreshIndicatorKt\n*L\n83#1:251\n83#1:252\n94#1:278,8\n94#1:292,3\n94#1:296,3\n135#1:301\n137#1:309\n83#1:253,6\n135#1:302,3\n135#1:306,3\n137#1:310,6\n90#1:259\n98#1:260\n238#1:334\n240#1:335\n241#1:336\n242#1:337\n243#1:338\n244#1:339\n94#1:261,6\n94#1:295\n94#1:300\n94#1:267,11\n94#1:299\n94#1:286,6\n230#1:316,5\n230#1:321,11\n83#1:332\n137#1:333\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0002\u001a*\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001aJ\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\"\u001a\u00020\u001a2\u0008\u0008\u0002\u0010#\u001a\u00020\u001a2\u0008\u0008\u0002\u0010$\u001a\u00020!H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001a>\u0010\'\u001a\u00020\u0016*\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u0013H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u00100\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u000c\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0011\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00061\u00b2\u0006\n\u00102\u001a\u00020!X\u008a\u0084\u0002\u00b2\u0006\n\u00103\u001a\u00020\u0002X\u008a\u0084\u0002"
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
        "Elevation",
        "IndicatorSize",
        "MaxAlpha",
        "MaxProgressArc",
        "MinAlpha",
        "SpinnerShape",
        "Landroidx/compose/foundation/shape/RoundedCornerShape;",
        "StrokeWidth",
        "ArrowValues",
        "Landroidx/compose/material/pullrefresh/ArrowValues;",
        "progress",
        "CircularArrowIndicator",
        "",
        "state",
        "Landroidx/compose/material/pullrefresh/PullRefreshState;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "CircularArrowIndicator-iJQMabo",
        "(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V",
        "PullRefreshIndicator",
        "refreshing",
        "",
        "backgroundColor",
        "contentColor",
        "scale",
        "PullRefreshIndicator-jB83MbM",
        "(ZLandroidx/compose/material/pullrefresh/PullRefreshState;Landroidx/compose/ui/Modifier;JJZLandroidx/compose/runtime/Composer;II)V",
        "drawArrow",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "arrow",
        "Landroidx/compose/ui/graphics/Path;",
        "bounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "alpha",
        "values",
        "drawArrow-Bx497Mc",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material/pullrefresh/ArrowValues;)V",
        "material_release",
        "showElevation",
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

.field private static final Elevation:F

.field private static final IndicatorSize:F

.field private static final MaxAlpha:F = 1.0f

.field private static final MaxProgressArc:F = 0.8f

.field private static final MinAlpha:F = 0.3f

.field private static final SpinnerShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final StrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 238
    const/16 v0, 0x28

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 334
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 238
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->IndicatorSize:F

    .line 239
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->SpinnerShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 240
    const-wide/high16 v0, 0x401e000000000000L    # 7.5

    .local v0, "$this$dp$iv":D
    const/4 v2, 0x0

    .line 335
    .local v2, "$i$f$getDp":I
    double-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 240
    .end local v0    # "$this$dp$iv":D
    .end local v2    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArcRadius:F

    .line 241
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .restart local v0    # "$this$dp$iv":D
    const/4 v2, 0x0

    .line 336
    .restart local v2    # "$i$f$getDp":I
    double-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 241
    .end local v0    # "$this$dp$iv":D
    .end local v2    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->StrokeWidth:F

    .line 242
    const/16 v0, 0xa

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 337
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 242
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowWidth:F

    .line 243
    const/4 v0, 0x5

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 338
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 243
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowHeight:F

    .line 244
    const/4 v0, 0x6

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 339
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 244
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->Elevation:F

    .line 249
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->AlphaTween:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method private static final ArrowValues(F)Landroidx/compose/material/pullrefresh/ArrowValues;
    .locals 10
    .param p0, "progress"    # F

    .line 186
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

    .line 188
    .local v1, "adjustedPercent":F
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v0

    .line 190
    .local v4, "overshootPercent":F
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v3, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 192
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

    .line 195
    .local v5, "tensionPercent":F
    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v1

    .line 196
    .local v6, "endTrim":F
    const/high16 v7, -0x41800000    # -0.25f

    mul-float/2addr v2, v1

    add-float/2addr v2, v7

    add-float/2addr v2, v5

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v2, v7

    .line 197
    .local v2, "rotation":F
    const/16 v7, 0x168

    int-to-float v7, v7

    mul-float v8, v2, v7

    .line 198
    .local v8, "startAngle":F
    add-float v9, v2, v6

    mul-float/2addr v9, v7

    .line 199
    .local v9, "endAngle":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 201
    .local v0, "scale":F
    new-instance v7, Landroidx/compose/material/pullrefresh/ArrowValues;

    invoke-direct {v7, v2, v8, v9, v0}, Landroidx/compose/material/pullrefresh/ArrowValues;-><init>(FFFF)V

    return-object v7
.end method

.method private static final CircularArrowIndicator-iJQMabo(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0, "state"    # Landroidx/compose/material/pullrefresh/PullRefreshState;
    .param p1, "color"    # J
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 134
    move-object/from16 v6, p0

    const v0, -0x1cf807d5

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CircularArrowIndicator)P(2,0:c#ui.graphics.Color)134@5303L61,136@5389L119,142@5531L74,145@5644L1000:PullRefreshIndicator.kt#t44y28"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.pullrefresh.CircularArrowIndicator (PullRefreshIndicator.kt:133)"

    move/from16 v5, p5

    invoke-static {v0, v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v5, p5

    .line 135
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x1d58f75c

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v4, v15

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 302
    .local v7, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 303
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_1

    .line 304
    const/4 v10, 0x0

    .line 135
    .local v10, "$i$a$-remember-PullRefreshIndicatorKt$CircularArrowIndicator$path$1":I
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v11

    move-object v12, v11

    .line 305
    .local v12, "$this$CircularArrowIndicator_iJQMabo_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    const/4 v13, 0x0

    .line 135
    .local v13, "$i$a$-apply-PullRefreshIndicatorKt$CircularArrowIndicator$path$1$1":I
    sget-object v14, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getEvenOdd-Rg-k1Os()I

    move-result v14

    invoke-interface {v12, v14}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 304
    .end local v10    # "$i$a$-remember-PullRefreshIndicatorKt$CircularArrowIndicator$path$1":I
    .end local v12    # "$this$CircularArrowIndicator_iJQMabo_u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    .end local v13    # "$i$a$-apply-PullRefreshIndicatorKt$CircularArrowIndicator$path$1$1":I
    move-object v10, v11

    .line 306
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 307
    nop

    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 308
    :cond_1
    move-object v10, v8

    .line 303
    :goto_1
    nop

    .line 302
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 301
    .end local v2    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 135
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/ui/graphics/Path;

    .line 137
    .local v16, "path":Landroidx/compose/ui/graphics/Path;
    const/16 v0, 0x8

    .restart local v0    # "$changed$iv":I
    const/4 v1, 0x0

    .restart local v1    # "$i$f$remember":I
    const v2, 0x44faf204

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 309
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .restart local v2    # "invalid$iv$iv":Z
    move-object v4, v15

    .restart local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 310
    .restart local v7    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 311
    .restart local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_3

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_2

    goto :goto_2

    .line 315
    :cond_2
    move-object v10, v8

    goto :goto_3

    .line 312
    :cond_3
    :goto_2
    const/4 v10, 0x0

    .line 138
    .local v10, "$i$a$-remember-PullRefreshIndicatorKt$CircularArrowIndicator$targetAlpha$2":I
    new-instance v11, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$targetAlpha$2$1;

    invoke-direct {v11, v6}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$targetAlpha$2$1;-><init>(Landroidx/compose/material/pullrefresh/PullRefreshState;)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v10

    .line 312
    .end local v10    # "$i$a$-remember-PullRefreshIndicatorKt$CircularArrowIndicator$targetAlpha$2":I
    nop

    .line 313
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 314
    nop

    .line 311
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 310
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 309
    .end local v2    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 137
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object/from16 v17, v10

    check-cast v17, Landroidx/compose/runtime/State;

    .line 143
    .local v17, "targetAlpha$delegate":Landroidx/compose/runtime/State;
    invoke-static/range {v17 .. v17}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->CircularArrowIndicator_iJQMabo$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v7

    sget-object v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->AlphaTween:Landroidx/compose/animation/core/TweenSpec;

    move-object v8, v0

    check-cast v8, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x30

    const/16 v14, 0x1c

    move-object v12, v15

    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 146
    .local v7, "alphaState":Landroidx/compose/runtime/State;
    sget-object v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$1;->INSTANCE:Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v8, p3

    invoke-static {v8, v3, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    new-instance v10, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v7

    move v11, v3

    move-wide/from16 v3, p1

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;-><init>(Landroidx/compose/material/pullrefresh/PullRefreshState;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/Path;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v10, v15, v11}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v10, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$3;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$3;-><init>(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;I)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 174
    :cond_5
    return-void
.end method

.method private static final CircularArrowIndicator_iJQMabo$lambda$6(Landroidx/compose/runtime/State;)F
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

    .line 137
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 333
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

    .line 137
    return v0
.end method

.method public static final PullRefreshIndicator-jB83MbM(ZLandroidx/compose/material/pullrefresh/PullRefreshState;Landroidx/compose/ui/Modifier;JJZLandroidx/compose/runtime/Composer;II)V
    .locals 42
    .param p0, "refreshing"    # Z
    .param p1, "state"    # Landroidx/compose/material/pullrefresh/PullRefreshState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "backgroundColor"    # J
    .param p5, "contentColor"    # J
    .param p7, "scale"    # Z
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I

    .line 82
    move-object/from16 v11, p1

    const v0, 0x1266a45c

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(PullRefreshIndicator)P(3,5,2,0:c#ui.graphics.Color,1:c#ui.graphics.Color)78@3382L6,79@3424L32,82@3514L98,89@3897L7,93@4025L1067:PullRefreshIndicator.kt#t44y28"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_0

    .line 78
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v13, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 82
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v13, p2

    .line 78
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, p10, 0x8

    const/4 v3, 0x6

    if-eqz v2, :cond_1

    .line 79
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v12, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v4

    .end local p3    # "backgroundColor":J
    .local v4, "backgroundColor":J
    and-int/lit16 v1, v1, -0x1c01

    move-wide v14, v4

    goto :goto_1

    .line 78
    .end local v4    # "backgroundColor":J
    .restart local p3    # "backgroundColor":J
    :cond_1
    move-wide/from16 v14, p3

    .line 79
    .end local p3    # "backgroundColor":J
    .local v14, "backgroundColor":J
    :goto_1
    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_2

    .line 80
    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0xe

    invoke-static {v14, v15, v12, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p5    # "contentColor":J
    .local v4, "contentColor":J
    const v2, -0xe001

    and-int/2addr v1, v2

    move v8, v1

    move-wide v9, v4

    goto :goto_2

    .line 79
    .end local v4    # "contentColor":J
    .restart local p5    # "contentColor":J
    :cond_2
    move-wide/from16 v9, p5

    move v8, v1

    .line 80
    .end local v1    # "$dirty":I
    .end local p5    # "contentColor":J
    .local v8, "$dirty":I
    .local v9, "contentColor":J
    :goto_2
    and-int/lit8 v1, p10, 0x20

    if-eqz v1, :cond_3

    .line 81
    const/4 v1, 0x0

    move v6, v1

    .end local p7    # "scale":Z
    .local v1, "scale":Z
    goto :goto_3

    .line 80
    .end local v1    # "scale":Z
    .restart local p7    # "scale":Z
    :cond_3
    move/from16 v6, p7

    .line 81
    .end local p7    # "scale":Z
    .local v6, "scale":Z
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.pullrefresh.PullRefreshIndicator (PullRefreshIndicator.kt:81)"

    invoke-static {v0, v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    and-int/lit8 v1, v8, 0xe

    or-int/lit8 v1, v1, 0x40

    .line 83
    nop

    .local v0, "key1$iv":Ljava/lang/Object;
    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v4, 0x1e7b2b64

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 251
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 252
    move-object v5, v12

    .local v4, "invalid$iv$iv":Z
    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 253
    .local v7, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 254
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_6

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p2, v0

    .end local v0    # "key1$iv":Ljava/lang/Object;
    .local p2, "key1$iv":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_5

    goto :goto_4

    .line 258
    :cond_5
    move-object v0, v3

    move/from16 p4, v7

    move/from16 v7, p0

    goto :goto_5

    .line 254
    .end local p2    # "key1$iv":Ljava/lang/Object;
    .restart local v0    # "key1$iv":Ljava/lang/Object;
    :cond_6
    move-object/from16 p2, v0

    .line 255
    .end local v0    # "key1$iv":Ljava/lang/Object;
    .restart local p2    # "key1$iv":Ljava/lang/Object;
    :goto_4
    const/4 v0, 0x0

    .line 84
    .local v0, "$i$a$-remember-PullRefreshIndicatorKt$PullRefreshIndicator$showElevation$2":I
    move/from16 p3, v0

    .end local v0    # "$i$a$-remember-PullRefreshIndicatorKt$PullRefreshIndicator$showElevation$2":I
    .local p3, "$i$a$-remember-PullRefreshIndicatorKt$PullRefreshIndicator$showElevation$2":I
    new-instance v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$showElevation$2$1;

    move/from16 p4, v7

    move/from16 v7, p0

    .end local v7    # "$i$f$cache":I
    .local p4, "$i$f$cache":I
    invoke-direct {v0, v7, v11}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$showElevation$2$1;-><init>(ZLandroidx/compose/material/pullrefresh/PullRefreshState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 255
    .end local p3    # "$i$a$-remember-PullRefreshIndicatorKt$PullRefreshIndicator$showElevation$2":I
    nop

    .line 256
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 257
    nop

    .line 254
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 253
    .end local v3    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 252
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    .end local p2    # "key1$iv":Ljava/lang/Object;
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/runtime/State;

    .line 90
    .local v16, "showElevation$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalElevationOverlay()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x6

    .restart local v1    # "$changed$iv":I
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 90
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object/from16 v17, v3

    check-cast v17, Landroidx/compose/material/ElevationOverlay;

    .line 91
    .local v17, "elevationOverlay":Landroidx/compose/material/ElevationOverlay;
    const v0, 0x31cf28c

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "90@3939L53"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v17, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    sget v1, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->Elevation:F

    shr-int/lit8 v2, v8, 0x9

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v2, v2, 0x30

    move-object/from16 p2, v17

    move-wide/from16 p3, v14

    move/from16 p5, v1

    move-object/from16 p6, v12

    move/from16 p7, v2

    invoke-interface/range {p2 .. p7}, Landroidx/compose/material/ElevationOverlay;->apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    :goto_6
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    goto :goto_7

    .line 92
    :cond_8
    move-wide v1, v14

    .line 91
    :goto_7
    move-wide v4, v1

    .line 95
    .local v4, "color":J
    nop

    .line 96
    sget v1, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->IndicatorSize:F

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 97
    invoke-static {v1, v11, v6}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorTransformKt;->pullRefreshIndicatorTransform(Landroidx/compose/ui/Modifier;Landroidx/compose/material/pullrefresh/PullRefreshState;Z)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 98
    invoke-static/range {v16 .. v16}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->PullRefreshIndicator_jB83MbM$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->Elevation:F

    move/from16 v19, v1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 260
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    move/from16 v19, v3

    .line 98
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    :goto_8
    sget-object v1, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->SpinnerShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/ui/graphics/Shape;

    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x18

    const/16 v27, 0x0

    invoke-static/range {v18 .. v27}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 99
    sget-object v2, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->SpinnerShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v4, v5, v2}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 94
    nop

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "$changed$iv":I
    const/16 v18, 0x0

    .local v18, "$i$f$Box":I
    const v0, 0x2bb5b5d7

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 261
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    .line 262
    .local v0, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v2, 0x0

    .line 265
    .local v2, "propagateMinConstraints$iv":Z
    shr-int/lit8 v19, v3, 0x3

    and-int/lit8 v19, v19, 0xe

    shr-int/lit8 v20, v3, 0x3

    and-int/lit8 v20, v20, 0x70

    move-wide/from16 p4, v4

    .end local v4    # "color":J
    .local p4, "color":J
    or-int v4, v19, v20

    invoke-static {v0, v2, v12, v4}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v5, v3, 0x3

    and-int/lit8 v5, v5, 0x70

    .line 266
    nop

    .local v5, "$changed$iv$iv":I
    const/16 v19, 0x0

    move-object/from16 p6, v0

    .end local v0    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v19, "$i$f$Layout":I
    .local p6, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v0, -0x4ee9b9da

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v20

    .line 268
    .local v20, "compositeKeyHash$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 270
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    .line 277
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v22

    move-object/from16 p7, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p7, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v5, 0x9

    and-int/lit16 v1, v1, 0x1c00

    const/16 v23, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 269
    nop

    .local v1, "$changed$iv$iv$iv":I
    move-object/from16 v23, v21

    .local v23, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v21, v22

    .local v21, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v22, 0x0

    .line 278
    .local v22, "$i$f$ReusableComposeNode":I
    move/from16 v24, v2

    .end local v2    # "propagateMinConstraints$iv":Z
    .local v24, "propagateMinConstraints$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 279
    :cond_a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 280
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 281
    move-object/from16 v2, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 283
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_b
    move-object/from16 v2, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 285
    :goto_9
    move-object/from16 v23, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 272
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v27, v5

    .end local v5    # "$changed$iv$iv":I
    .local v27, "$changed$iv$iv":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 273
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v2, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 275
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v26, 0x0

    .line 286
    .local v26, "$i$f$set-impl":I
    move-object/from16 v28, v2

    .local v28, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 287
    .local v29, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v30

    if-nez v30, :cond_d

    move-object/from16 v30, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v31, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    move-object/from16 v4, v28

    goto :goto_b

    .end local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v31    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_d
    move-object/from16 v30, v0

    move-object/from16 v31, v4

    .line 288
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v31    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v28

    .end local v28    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 289
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 291
    :goto_b
    nop

    .line 286
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 291
    nop

    .line 276
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v26    # "$i$f$set-impl":I
    nop

    .line 285
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 292
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v21

    .end local v21    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v0, v12, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const v0, 0x7ab4aae9

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 294
    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v2, v12

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 295
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v21, v0

    .end local v0    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const v0, -0x4ab8dd4f

    move/from16 v25, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v25, "$changed$iv$iv$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v3, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v26, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$PullRefreshIndicator_jB83MbM_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v26, v2

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 101
    .local v28, "$i$a$-Box-PullRefreshIndicatorKt$PullRefreshIndicator$1":I
    move-object/from16 v29, v0

    .end local v0    # "$this$PullRefreshIndicator_jB83MbM_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    .local v29, "$this$PullRefreshIndicator_jB83MbM_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x53d380a2

    move/from16 v40, v1

    .end local v1    # "$changed":I
    .local v40, "$changed":I
    const-string v1, "C100@4312L774:PullRefreshIndicator.kt#t44y28"

    move/from16 v41, v3

    move-object/from16 v3, v26

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v41, "$changed$iv":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 102
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    const/16 v33, 0x0

    .line 103
    const/16 v0, 0x64

    move-object/from16 v26, v4

    move/from16 p2, v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v26, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local p2, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v0, v1, v4, v5, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/16 v35, 0x0

    .line 104
    new-instance v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;

    invoke-direct {v0, v9, v10, v11}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;-><init>(JLandroidx/compose/material/pullrefresh/PullRefreshState;)V

    const v1, 0x6e7db0f7

    const/4 v4, 0x1

    invoke-static {v3, v1, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Lkotlin/jvm/functions/Function3;

    and-int/lit8 v0, v8, 0xe

    or-int/lit16 v0, v0, 0x6180

    const/16 v39, 0xa

    .line 101
    move-object/from16 v37, v3

    move/from16 v38, v0

    invoke-static/range {v32 .. v39}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 122
    nop

    .line 295
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-Box-PullRefreshIndicatorKt$PullRefreshIndicator$1":I
    .end local v29    # "$this$PullRefreshIndicator_jB83MbM_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    .end local v40    # "$changed":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 294
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed$iv":I
    .end local p2    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 296
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 297
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 298
    nop

    .end local v22    # "$i$f$ReusableComposeNode":I
    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v25    # "$changed$iv$iv$iv":I
    .end local v26    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 299
    nop

    .end local v19    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v27    # "$changed$iv$iv":I
    .end local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 300
    nop

    .end local v18    # "$i$f$Box":I
    .end local v24    # "propagateMinConstraints$iv":Z
    .end local v31    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v41    # "$changed$iv":I
    .end local p6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local p7    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_f

    new-instance v18, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$2;

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v19, p4

    move-object v11, v4

    .end local p4    # "color":J
    .local v19, "color":J
    move-wide v4, v14

    move/from16 v21, v6

    .end local v6    # "scale":Z
    .local v21, "scale":Z
    move-wide v6, v9

    move/from16 v22, v8

    .end local v8    # "$dirty":I
    .local v22, "$dirty":I
    move/from16 v8, v21

    move-wide/from16 v23, v9

    .end local v9    # "contentColor":J
    .local v23, "contentColor":J
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$2;-><init>(ZLandroidx/compose/material/pullrefresh/PullRefreshState;Landroidx/compose/ui/Modifier;JJZII)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v19    # "color":J
    .end local v21    # "scale":Z
    .end local v22    # "$dirty":I
    .end local v23    # "contentColor":J
    .restart local v6    # "scale":Z
    .restart local v8    # "$dirty":I
    .restart local v9    # "contentColor":J
    .restart local p4    # "color":J
    :cond_f
    move-wide/from16 v19, p4

    move/from16 v21, v6

    move/from16 v22, v8

    move-wide/from16 v23, v9

    .line 123
    .end local v6    # "scale":Z
    .end local v8    # "$dirty":I
    .end local v9    # "contentColor":J
    .end local p4    # "color":J
    .restart local v19    # "color":J
    .restart local v21    # "scale":Z
    .restart local v22    # "$dirty":I
    .restart local v23    # "contentColor":J
    :goto_c
    return-void
.end method

.method private static final PullRefreshIndicator_jB83MbM$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$showElevation$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 332
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 83
    return v0
.end method

.method public static final synthetic access$ArrowValues(F)Landroidx/compose/material/pullrefresh/ArrowValues;
    .locals 1
    .param p0, "progress"    # F

    .line 1
    invoke-static {p0}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowValues(F)Landroidx/compose/material/pullrefresh/ArrowValues;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$CircularArrowIndicator-iJQMabo(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/material/pullrefresh/PullRefreshState;
    .param p1, "color"    # J
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->CircularArrowIndicator-iJQMabo(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$drawArrow-Bx497Mc(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material/pullrefresh/ArrowValues;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "arrow"    # Landroidx/compose/ui/graphics/Path;
    .param p2, "bounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "color"    # J
    .param p5, "alpha"    # F
    .param p6, "values"    # Landroidx/compose/material/pullrefresh/ArrowValues;

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->drawArrow-Bx497Mc(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material/pullrefresh/ArrowValues;)V

    return-void
.end method

.method public static final synthetic access$getArcRadius$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArcRadius:F

    return v0
.end method

.method public static final synthetic access$getStrokeWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->StrokeWidth:F

    return v0
.end method

.method private static final drawArrow-Bx497Mc(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material/pullrefresh/ArrowValues;)V
    .locals 28
    .param p0, "$this$drawArrow_u2dBx497Mc"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "arrow"    # Landroidx/compose/ui/graphics/Path;
    .param p2, "bounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "color"    # J
    .param p5, "alpha"    # F
    .param p6, "values"    # Landroidx/compose/material/pullrefresh/ArrowValues;

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 212
    const/4 v1, 0x0

    invoke-interface {v11, v1, v1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 213
    sget v2, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowWidth:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/pullrefresh/ArrowValues;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-interface {v11, v2, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 216
    nop

    .line 217
    sget v1, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowWidth:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/pullrefresh/ArrowValues;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 218
    sget v2, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowHeight:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/pullrefresh/ArrowValues;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    .line 216
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .line 222
    .local v12, "radius":F
    sget v1, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->ArrowWidth:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/pullrefresh/ArrowValues;->getScale()F

    move-result v3

    mul-float/2addr v1, v3

    div-float v13, v1, v2

    .line 223
    .local v13, "inset":F
    nop

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    add-float/2addr v1, v12

    sub-float/2addr v1, v13

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    sget v4, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->StrokeWidth:F

    invoke-interface {v0, v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 224
    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    .line 223
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    .line 229
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 230
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/pullrefresh/ArrowValues;->getEndAngle()F

    move-result v1

    .local v1, "degrees$iv":F
    move-object/from16 v14, p0

    .local v14, "$this$rotate_u2dRg1IO4c_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    move v15, v1

    .line 316
    .end local v1    # "degrees$iv":F
    .local v15, "degrees$iv":F
    nop

    .line 318
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v9

    .line 316
    .local v9, "pivot$iv":J
    const/16 v16, 0x0

    .line 320
    .local v16, "$i$f$rotate-Rg1IO4c":I
    move-object/from16 v17, v14

    .local v17, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v18, 0x0

    .line 321
    .local v18, "$i$f$withTransform":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v8

    .local v8, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/16 v19, 0x0

    .line 325
    .local v19, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v6

    .line 326
    .local v6, "previousSize$iv$iv":J
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 327
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    .local v1, "$this$rotate_Rg1IO4c_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/4 v2, 0x0

    .line 320
    .local v2, "$i$a$-withTransform-DrawScopeKt$rotate$1$iv":I
    invoke-interface {v1, v15, v9, v10}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->rotate-Uv8p0NA(FJ)V

    .line 327
    .end local v1    # "$this$rotate_Rg1IO4c_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v2    # "$i$a$-withTransform-DrawScopeKt$rotate$1$iv":I
    nop

    .line 328
    move-object/from16 v1, v17

    .local v1, "$this$drawArrow_Bx497Mc_u24lambda_u247":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v20, 0x0

    .line 231
    .local v20, "$i$a$-rotate-Rg1IO4c$default-PullRefreshIndicatorKt$drawArrow$1":I
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x38

    const/16 v25, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v26, v6

    .end local v6    # "previousSize$iv$iv":J
    .local v26, "previousSize$iv$iv":J
    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v21, v8

    .end local v8    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v21, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    move/from16 v8, v23

    move-wide/from16 v22, v9

    .end local v9    # "pivot$iv":J
    .local v22, "pivot$iv":J
    move/from16 v9, v24

    move-object/from16 v10, v25

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 232
    nop

    .line 328
    .end local v1    # "$this$drawArrow_Bx497Mc_u24lambda_u247":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v20    # "$i$a$-rotate-Rg1IO4c$default-PullRefreshIndicatorKt$drawArrow$1":I
    nop

    .line 329
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 330
    move-object/from16 v1, v21

    move-wide/from16 v2, v26

    .end local v21    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v26    # "previousSize$iv$iv":J
    .local v1, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v2, "previousSize$iv$iv":J
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 331
    nop

    .line 321
    .end local v1    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v2    # "previousSize$iv$iv":J
    .end local v19    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    nop

    .line 331
    nop

    .line 320
    .end local v17    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v18    # "$i$f$withTransform":I
    nop

    .line 233
    .end local v14    # "$this$rotate_u2dRg1IO4c_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v15    # "degrees$iv":F
    .end local v16    # "$i$f$rotate-Rg1IO4c":I
    .end local v22    # "pivot$iv":J
    return-void
.end method
