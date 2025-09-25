.class public final Landroidx/compose/material3/TabKt;
.super Ljava/lang/Object;
.source "Tab.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tab.kt\nandroidx/compose/material3/TabKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,452:1\n74#2:453\n74#2:460\n74#2:467\n1116#3,6:454\n1116#3,6:461\n1116#3,6:468\n1116#3,3:480\n1119#3,3:484\n1116#3,6:493\n66#4,5:474\n71#4:483\n74#4:487\n36#5:479\n456#5,8:513\n464#5,3:527\n456#5,8:547\n464#5,3:561\n467#5,3:565\n456#5,8:587\n464#5,3:601\n467#5,3:605\n467#5,3:610\n1083#6,5:488\n75#7,14:499\n78#7,11:536\n91#7:568\n78#7,11:576\n91#7:608\n91#7:613\n3737#8,6:521\n3737#8,6:555\n3737#8,6:595\n68#9,6:530\n74#9:564\n78#9:569\n68#9,6:570\n74#9:604\n78#9:609\n81#10:614\n154#11:615\n154#11:616\n154#11:617\n154#11:618\n154#11:619\n*S KotlinDebug\n*F\n+ 1 Tab.kt\nandroidx/compose/material3/TabKt\n*L\n99#1:453\n161#1:460\n235#1:467\n101#1:454,6\n163#1:461,6\n237#1:468,6\n281#1:480,3\n281#1:484,3\n328#1:493,6\n281#1:474,5\n281#1:483\n281#1:487\n281#1:479\n315#1:513,8\n315#1:527,3\n318#1:547,8\n318#1:561,3\n318#1:565,3\n325#1:587,8\n325#1:601,3\n325#1:605,3\n315#1:610,3\n281#1:488,5\n315#1:499,14\n318#1:536,11\n318#1:568\n325#1:576,11\n325#1:608\n315#1:613\n315#1:521,6\n318#1:555,6\n325#1:595,6\n318#1:530,6\n318#1:564\n318#1:569\n325#1:570,6\n325#1:604\n325#1:609\n281#1:614\n432#1:615\n440#1:616\n444#1:617\n447#1:618\n451#1:619\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\u0080\u0001\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00162\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00120\u0016\u00a2\u0006\u0002\u0008\u00182\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00120\u0016\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u0088\u0001\u0010$\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00142\u0015\u0008\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00182\u0015\u0008\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001ax\u0010$\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020!2\u001c\u0010\'\u001a\u0018\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008*H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,\u001a7\u0010-\u001a\u00020\u00122\u0013\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00182\u0013\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u0018H\u0003\u00a2\u0006\u0002\u0010.\u001a=\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u00142\u0011\u0010\'\u001a\r\u0012\u0004\u0012\u00020\u00120\u0016\u00a2\u0006\u0002\u0008\u0018H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103\u001aD\u00104\u001a\u00020\u0012*\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\r2\u0006\u0010<\u001a\u00020\r2\u0006\u0010=\u001a\u00020\r2\u0006\u0010>\u001a\u00020\rH\u0002\u001a\u001c\u0010?\u001a\u00020\u0012*\u0002052\u0006\u0010@\u001a\u0002092\u0006\u0010<\u001a\u00020\rH\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u0003\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u0004\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\n\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u000b\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0010\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006A\u00b2\u0006\n\u0010B\u001a\u00020\u001eX\u008a\u0084\u0002"
    }
    d2 = {
        "DoubleLineTextBaselineWithIcon",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "HorizontalTextPadding",
        "getHorizontalTextPadding",
        "()F",
        "IconDistanceFromBaseline",
        "Landroidx/compose/ui/unit/TextUnit;",
        "J",
        "LargeTabHeight",
        "SingleLineTextBaselineWithIcon",
        "SmallTabHeight",
        "TabFadeInAnimationDelay",
        "",
        "TabFadeInAnimationDuration",
        "TabFadeOutAnimationDuration",
        "TextDistanceFromLeadingIcon",
        "LeadingIconTab",
        "",
        "selected",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "text",
        "Landroidx/compose/runtime/Composable;",
        "icon",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "selectedContentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "unselectedContentColor",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "LeadingIconTab-wqdebIU",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "Tab",
        "Tab-wqdebIU",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "Tab-bogVsAg",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "TabBaselineLayout",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "TabTransition",
        "activeColor",
        "inactiveColor",
        "TabTransition-Klgx-Pg",
        "(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "placeTextAndIcon",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "textPlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "iconPlaceable",
        "tabWidth",
        "tabHeight",
        "firstBaseline",
        "lastBaseline",
        "placeTextOrIcon",
        "textOrIconPlaceable",
        "material3_release",
        "color"
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
.field private static final DoubleLineTextBaselineWithIcon:F

.field private static final HorizontalTextPadding:F

.field private static final IconDistanceFromBaseline:J

.field private static final LargeTabHeight:F

.field private static final SingleLineTextBaselineWithIcon:F

.field private static final SmallTabHeight:F

.field private static final TabFadeInAnimationDelay:I = 0x64

.field private static final TabFadeInAnimationDuration:I = 0x96

.field private static final TabFadeOutAnimationDuration:I = 0x64

.field private static final TextDistanceFromLeadingIcon:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 431
    sget-object v0, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->INSTANCE:Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/TabKt;->SmallTabHeight:F

    .line 432
    const/16 v0, 0x48

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 615
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 432
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TabKt;->LargeTabHeight:F

    .line 440
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 616
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 440
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    .line 444
    const/16 v0, 0xe

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 617
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 444
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TabKt;->SingleLineTextBaselineWithIcon:F

    .line 447
    const/4 v0, 0x6

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 618
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 447
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TabKt;->DoubleLineTextBaselineWithIcon:F

    .line 449
    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/TabKt;->IconDistanceFromBaseline:J

    .line 451
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 619
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 451
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TabKt;->TextDistanceFromLeadingIcon:F

    return-void
.end method

.method public static final LeadingIconTab-wqdebIU(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "text"    # Lkotlin/jvm/functions/Function2;
    .param p3, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "enabled"    # Z
    .param p6, "selectedContentColor"    # J
    .param p8, "unselectedContentColor"    # J
    .param p10, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZJJ",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 164
    move/from16 v14, p12

    move/from16 v13, p13

    const v0, -0x2e54e8c0

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LeadingIconTab)P(5,4,7,1,3!1,6:c#ui.graphics.Color,8:c#ui.graphics.Color)160@7001L7,162@7118L39,168@7466L82,173@7554L991:Tab.kt#uh7d8r"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    move/from16 v12, p0

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v12, p0

    :goto_1
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v2, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v14, 0x30

    if-nez v2, :cond_5

    move-object/from16 v2, p1

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_5
    move-object/from16 v2, p1

    :goto_3
    and-int/lit8 v3, v13, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v11, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v14, 0x180

    if-nez v3, :cond_8

    move-object/from16 v11, p2

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    goto :goto_5

    :cond_8
    move-object/from16 v11, p2

    :goto_5
    and-int/lit8 v3, v13, 0x8

    if-eqz v3, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v10, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v14, 0xc00

    if-nez v3, :cond_b

    move-object/from16 v10, p3

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x800

    goto :goto_6

    :cond_a
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_b
    move-object/from16 v10, p3

    :goto_7
    and-int/lit8 v3, v13, 0x10

    if-eqz v3, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v4, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_e

    move-object/from16 v4, p4

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_e
    move-object/from16 v4, p4

    :goto_9
    and-int/lit8 v5, v13, 0x20

    const/high16 v6, 0x30000

    if-eqz v5, :cond_f

    or-int/2addr v1, v6

    move/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int/2addr v6, v14

    if-nez v6, :cond_11

    move/from16 v6, p5

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_10

    const/high16 v7, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v7, 0x10000

    :goto_a
    or-int/2addr v1, v7

    goto :goto_b

    :cond_11
    move/from16 v6, p5

    :goto_b
    const/high16 v7, 0x180000

    and-int/2addr v7, v14

    if-nez v7, :cond_14

    and-int/lit8 v7, v13, 0x40

    if-nez v7, :cond_12

    move-wide/from16 v7, p6

    invoke-interface {v15, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_13

    const/high16 v9, 0x100000

    goto :goto_c

    :cond_12
    move-wide/from16 v7, p6

    :cond_13
    const/high16 v9, 0x80000

    :goto_c
    or-int/2addr v1, v9

    goto :goto_d

    :cond_14
    move-wide/from16 v7, p6

    :goto_d
    const/high16 v9, 0xc00000

    and-int/2addr v9, v14

    if-nez v9, :cond_17

    and-int/lit16 v9, v13, 0x80

    if-nez v9, :cond_15

    move/from16 p11, v1

    move-wide/from16 v0, p8

    .end local v1    # "$dirty":I
    .local p11, "$dirty":I
    invoke-interface {v15, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    .end local p11    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_15
    move/from16 p11, v1

    move-wide/from16 v0, p8

    .end local v1    # "$dirty":I
    .restart local p11    # "$dirty":I
    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v16, p11, v16

    .end local p11    # "$dirty":I
    .local v16, "$dirty":I
    goto :goto_f

    .end local v16    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_17
    move/from16 p11, v1

    move-wide/from16 v0, p8

    .end local v1    # "$dirty":I
    .restart local p11    # "$dirty":I
    move/from16 v16, p11

    .end local p11    # "$dirty":I
    .restart local v16    # "$dirty":I
    :goto_f
    and-int/lit16 v9, v13, 0x100

    const/high16 v17, 0x6000000

    if-eqz v9, :cond_18

    or-int v16, v16, v17

    move-object/from16 v0, p10

    goto :goto_11

    :cond_18
    and-int v17, v14, v17

    if-nez v17, :cond_1a

    move-object/from16 v0, p10

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v1, 0x2000000

    :goto_10
    or-int v16, v16, v1

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p10

    :goto_11
    const v1, 0x2492493

    and-int v1, v16, v1

    const v0, 0x2492492

    if-ne v1, v0, :cond_1c

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    .line 198
    :cond_1b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v19, p8

    move-object/from16 v22, p10

    move-object/from16 v21, v4

    move-wide/from16 v17, v7

    move/from16 v23, v16

    move/from16 v16, v6

    goto/16 :goto_17

    .line 164
    :cond_1c
    :goto_12
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v1, -0x1c00001

    const v17, -0x380001

    if-eqz v0, :cond_20

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_13

    .line 163
    :cond_1d
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_1e

    and-int v16, v16, v17

    :cond_1e
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_1f

    and-int v0, v16, v1

    move-wide/from16 v18, p8

    move-object/from16 v2, p10

    move v9, v0

    move-object v0, v4

    move v1, v6

    move-wide/from16 v16, v7

    .end local v16    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_16

    .end local v0    # "$dirty":I
    .restart local v16    # "$dirty":I
    :cond_1f
    move-wide/from16 v18, p8

    move-object/from16 v2, p10

    move-object v0, v4

    move v1, v6

    move/from16 v9, v16

    move-wide/from16 v16, v7

    goto/16 :goto_16

    .line 164
    :cond_20
    :goto_13
    if-eqz v3, :cond_21

    .line 159
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v4, v0

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    if-eqz v5, :cond_22

    .line 160
    const/4 v0, 0x1

    move v6, v0

    .end local p5    # "enabled":Z
    .local v6, "enabled":Z
    :cond_22
    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_23

    .line 161
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x6

    .local v3, "$changed$iv":I
    const/4 v5, 0x0

    .line 460
    .local v5, "$i$f$getCurrent":I
    const v1, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v5    # "$i$f$getCurrent":I
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .end local p6    # "selectedContentColor":J
    .local v0, "selectedContentColor":J
    and-int v16, v16, v17

    move-wide v7, v0

    .end local v0    # "selectedContentColor":J
    .local v7, "selectedContentColor":J
    :cond_23
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_24

    .line 162
    move-wide v0, v7

    const v2, -0x1c00001

    .end local p8    # "unselectedContentColor":J
    .local v0, "unselectedContentColor":J
    and-int v16, v16, v2

    goto :goto_14

    .line 460
    .end local v0    # "unselectedContentColor":J
    .restart local p8    # "unselectedContentColor":J
    :cond_24
    move-wide/from16 v0, p8

    .line 162
    .end local p8    # "unselectedContentColor":J
    .restart local v0    # "unselectedContentColor":J
    :goto_14
    if-eqz v9, :cond_26

    .line 163
    const v2, -0x2efbb42b

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Tab.kt#9igjgp"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid$iv":Z
    move-object v3, v15

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 461
    .local v5, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 462
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-wide/from16 p4, v0

    .end local v0    # "unselectedContentColor":J
    .local p4, "unselectedContentColor":J
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_25

    .line 463
    const/4 v0, 0x0

    .line 163
    .local v0, "$i$a$-cache-TabKt$LeadingIconTab$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 463
    .end local v0    # "$i$a$-cache-TabKt$LeadingIconTab$1":I
    nop

    .line 464
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 465
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_15

    .line 466
    :cond_25
    move-object v0, v9

    .line 462
    :goto_15
    nop

    .line 461
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 163
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-wide/from16 v18, p4

    move-object v2, v0

    move-object v0, v4

    move v1, v6

    move/from16 v9, v16

    move-wide/from16 v16, v7

    goto :goto_16

    .line 162
    .end local p4    # "unselectedContentColor":J
    .local v0, "unselectedContentColor":J
    .restart local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_26
    move-wide/from16 p4, v0

    .end local v0    # "unselectedContentColor":J
    .restart local p4    # "unselectedContentColor":J
    move-wide/from16 v18, p4

    move-object/from16 v2, p10

    move-object v0, v4

    move v1, v6

    move/from16 v9, v16

    move-wide/from16 v16, v7

    .line 163
    .end local v4    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "enabled":Z
    .end local v7    # "selectedContentColor":J
    .end local p4    # "unselectedContentColor":J
    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "enabled":Z
    .local v2, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v9, "$dirty":I
    .local v16, "selectedContentColor":J
    .local v18, "unselectedContentColor":J
    :goto_16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 164
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.LeadingIconTab (Tab.kt:163)"

    const v5, -0x2e54e8c0

    invoke-static {v5, v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 170
    :cond_27
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    shr-int/lit8 v5, v9, 0xc

    and-int/lit16 v5, v5, 0x380

    or-int/lit8 v5, v5, 0x6

    const/4 v6, 0x2

    .line 169
    move/from16 p4, v3

    move/from16 p5, v4

    move-wide/from16 p6, v16

    move-object/from16 p8, v15

    move/from16 p9, v5

    move/from16 p10, v6

    invoke-static/range {p4 .. p10}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v20

    .line 174
    .local v20, "ripple":Landroidx/compose/foundation/Indication;
    new-instance v8, Landroidx/compose/material3/TabKt$LeadingIconTab$2;

    move-object v3, v8

    move-object v4, v0

    move/from16 v5, p0

    move-object v6, v2

    move-object/from16 v7, v20

    move-object/from16 v21, v0

    move-object v0, v8

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "modifier":Landroidx/compose/ui/Modifier;
    move v8, v1

    move/from16 v22, v9

    .end local v9    # "$dirty":I
    .local v22, "$dirty":I
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Landroidx/compose/material3/TabKt$LeadingIconTab$2;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v3, -0x199297fc

    const/4 v4, 0x1

    invoke-static {v15, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v3, v22, 0x12

    and-int/lit8 v3, v3, 0xe

    or-int/lit16 v3, v3, 0xc00

    shr-int/lit8 v4, v22, 0x12

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    shl-int/lit8 v4, v22, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    move-wide/from16 p4, v16

    move-wide/from16 p6, v18

    move/from16 p8, p0

    move-object/from16 p9, v0

    move-object/from16 p10, v15

    move/from16 p11, v3

    invoke-static/range {p4 .. p11}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 198
    .end local v20    # "ripple":Landroidx/compose/foundation/Indication;
    :cond_28
    move-wide/from16 v19, v18

    move/from16 v23, v22

    move-object/from16 v22, v2

    move-wide/from16 v17, v16

    move/from16 v16, v1

    .end local v1    # "enabled":Z
    .end local v2    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v18    # "unselectedContentColor":J
    .local v16, "enabled":Z
    .local v17, "selectedContentColor":J
    .local v19, "unselectedContentColor":J
    .local v22, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v23, "$dirty":I
    :goto_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_29

    new-instance v24, Landroidx/compose/material3/TabKt$LeadingIconTab$3;

    move-object/from16 v0, v24

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v21

    move/from16 v6, v16

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    move-object v14, v11

    move-object/from16 v11, v22

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/TabKt$LeadingIconTab$3;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v24

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_29
    return-void
.end method

.method public static final Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "selectedContentColor"    # J
    .param p6, "unselectedContentColor"    # J
    .param p8, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p9, "content"    # Lkotlin/jvm/functions/Function3;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZJJ",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 239
    move/from16 v13, p11

    move/from16 v12, p12

    const v0, -0xc158108

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Tab)P(5,4,3,1,6:c#ui.graphics.Color,7:c#ui.graphics.Color,2)234@10306L7,236@10423L39,243@10817L82,248@10905L618:Tab.kt#uh7d8r"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v15, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    move/from16 v15, p0

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v15, p0

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x30

    if-nez v2, :cond_5

    move-object/from16 v11, p1

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v11, p1

    :goto_3
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v13, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v13, 0xc00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move/from16 v5, p3

    :goto_7
    and-int/lit16 v6, v13, 0x6000

    if-nez v6, :cond_e

    and-int/lit8 v6, v12, 0x10

    if-nez v6, :cond_c

    move-wide/from16 v6, p4

    invoke-interface {v14, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v6, p4

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    goto :goto_9

    :cond_e
    move-wide/from16 v6, p4

    :goto_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v13

    if-nez v8, :cond_11

    and-int/lit8 v8, v12, 0x20

    if-nez v8, :cond_f

    move-wide/from16 v8, p6

    invoke-interface {v14, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v8, p6

    :cond_10
    const/high16 v10, 0x10000

    :goto_a
    or-int/2addr v1, v10

    goto :goto_b

    :cond_11
    move-wide/from16 v8, p6

    :goto_b
    and-int/lit8 v10, v12, 0x40

    const/high16 v16, 0x180000

    if-eqz v10, :cond_12

    or-int v1, v1, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    and-int v16, v13, v16

    if-nez v16, :cond_14

    move-object/from16 v0, p8

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_14
    move-object/from16 v0, p8

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v1, v1, v17

    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    and-int v0, v13, v17

    if-nez v0, :cond_17

    move-object/from16 v0, p9

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    goto :goto_f

    :cond_17
    move-object/from16 v0, p9

    :goto_f
    const v17, 0x492493

    and-int v0, v1, v17

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 266
    :cond_18
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p2

    move-object/from16 v22, p8

    move/from16 v23, v1

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    goto/16 :goto_16

    .line 239
    :cond_19
    :goto_10
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v3, -0x70001

    const v17, -0xe001

    if-eqz v0, :cond_1d

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 237
    :cond_1a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1b

    and-int v1, v1, v17

    :cond_1b
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1c

    and-int v0, v1, v3

    move-object/from16 v22, p8

    move v1, v0

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-object/from16 v0, p2

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_15

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v22, p8

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    goto/16 :goto_15

    .line 239
    :cond_1d
    :goto_11
    if-eqz v2, :cond_1e

    .line 233
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_12

    .line 239
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move-object/from16 v0, p2

    .line 233
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_12
    if-eqz v4, :cond_1f

    .line 234
    const/4 v2, 0x1

    move v5, v2

    .end local p3    # "enabled":Z
    .local v5, "enabled":Z
    :cond_1f
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_20

    .line 235
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x6

    .local v4, "$changed$iv":I
    const/16 v18, 0x0

    .line 467
    .local v18, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    move-object/from16 p2, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v14, v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v18    # "$i$f$getCurrent":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v2

    .end local p4    # "selectedContentColor":J
    .local v2, "selectedContentColor":J
    and-int v1, v1, v17

    move-wide v6, v2

    goto :goto_13

    .line 234
    .end local v2    # "selectedContentColor":J
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "selectedContentColor":J
    :cond_20
    move-object/from16 p2, v0

    .line 467
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p4    # "selectedContentColor":J
    .local v6, "selectedContentColor":J
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_13
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_21

    .line 236
    move-wide v2, v6

    const v0, -0x70001

    .end local p6    # "unselectedContentColor":J
    .local v2, "unselectedContentColor":J
    and-int/2addr v1, v0

    move-wide v8, v2

    .end local v2    # "unselectedContentColor":J
    .local v8, "unselectedContentColor":J
    :cond_21
    if-eqz v10, :cond_23

    .line 237
    const v0, 0x63400825

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Tab.kt#9igjgp"

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v2, v14

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 468
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 469
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_22

    .line 470
    const/4 v0, 0x0

    .line 237
    .local v0, "$i$a$-cache-TabKt$Tab$4":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 470
    .end local v0    # "$i$a$-cache-TabKt$Tab$4":I
    nop

    .line 471
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 472
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_14

    .line 473
    :cond_22
    move-object v0, v4

    .line 469
    :goto_14
    nop

    .line 468
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 237
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v22, v0

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-object/from16 v0, p2

    goto :goto_15

    .line 236
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_23
    move-object/from16 v0, p2

    move-object/from16 v22, p8

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    .line 237
    .end local v5    # "enabled":Z
    .end local v6    # "selectedContentColor":J
    .end local v8    # "unselectedContentColor":J
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "enabled":Z
    .local v18, "selectedContentColor":J
    .local v20, "unselectedContentColor":J
    .local v22, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_15
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 239
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.Tab (Tab.kt:238)"

    const v4, -0xc158108

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 245
    :cond_24
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 246
    shr-int/lit8 v4, v1, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    const/4 v5, 0x2

    .line 244
    move/from16 p2, v2

    move/from16 p3, v3

    move-wide/from16 p4, v18

    move-object/from16 p6, v14

    move/from16 p7, v4

    move/from16 p8, v5

    invoke-static/range {p2 .. p8}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v16

    .line 249
    .local v16, "ripple":Landroidx/compose/foundation/Indication;
    new-instance v2, Landroidx/compose/material3/TabKt$Tab$5;

    move-object v3, v2

    move-object v4, v0

    move/from16 v5, p0

    move-object/from16 v6, v22

    move-object/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, p1

    move-object/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/TabKt$Tab$5;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    const v3, -0x20e5444c

    const/4 v4, 0x1

    invoke-static {v14, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int v8, v2, v3

    move v9, v1

    .end local v1    # "$dirty":I
    .local v9, "$dirty":I
    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    move-object v7, v14

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 266
    .end local v16    # "ripple":Landroidx/compose/foundation/Indication;
    :cond_25
    move-object/from16 v16, v0

    move/from16 v23, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v9    # "$dirty":I
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v23, "$dirty":I
    :goto_16
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_26

    new-instance v24, Landroidx/compose/material3/TabKt$Tab$6;

    move-object/from16 v0, v24

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    move-object/from16 v9, v22

    move-object v13, v10

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/TabKt$Tab$6;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v24

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_26
    return-void
.end method

.method public static final Tab-wqdebIU(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "text"    # Lkotlin/jvm/functions/Function2;
    .param p5, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p6, "selectedContentColor"    # J
    .param p8, "unselectedContentColor"    # J
    .param p10, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJ",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 102
    move/from16 v14, p12

    move/from16 v13, p13

    const v0, -0x14e6256d

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Tab)P(5,4,3!1,7!1,6:c#ui.graphics.Color,8:c#ui.graphics.Color)98@4483L7,100@4600L39,110@4967L234:Tab.kt#uh7d8r"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    move/from16 v11, p0

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v11, p0

    :goto_1
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v9, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v14, 0x30

    if-nez v2, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v9, p1

    :goto_3
    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v14, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, v13, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v14, 0xc00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move/from16 v5, p3

    :goto_7
    and-int/lit8 v6, v13, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v7, v14, 0x6000

    if-nez v7, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    and-int/lit8 v8, v13, 0x20

    const/high16 v10, 0x30000

    if-eqz v8, :cond_f

    or-int/2addr v1, v10

    move-object/from16 v10, p5

    goto :goto_b

    :cond_f
    and-int/2addr v10, v14

    if-nez v10, :cond_11

    move-object/from16 v10, p5

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v10, p5

    :goto_b
    const/high16 v15, 0x180000

    and-int/2addr v15, v14

    if-nez v15, :cond_14

    and-int/lit8 v15, v13, 0x40

    if-nez v15, :cond_12

    move/from16 p11, v1

    move-wide/from16 v0, p6

    .end local v1    # "$dirty":I
    .local p11, "$dirty":I
    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    .end local p11    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_12
    move/from16 p11, v1

    move-wide/from16 v0, p6

    .end local v1    # "$dirty":I
    .restart local p11    # "$dirty":I
    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v16, p11, v16

    .end local p11    # "$dirty":I
    .local v16, "$dirty":I
    goto :goto_d

    .end local v16    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_14
    move/from16 p11, v1

    move-wide/from16 v0, p6

    .end local v1    # "$dirty":I
    .restart local p11    # "$dirty":I
    move/from16 v16, p11

    .end local p11    # "$dirty":I
    .restart local v16    # "$dirty":I
    :goto_d
    const/high16 v17, 0xc00000

    and-int v18, v14, v17

    if-nez v18, :cond_17

    and-int/lit16 v15, v13, 0x80

    if-nez v15, :cond_15

    move-wide/from16 v0, p8

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_16

    const/high16 v15, 0x800000

    goto :goto_e

    :cond_15
    move-wide/from16 v0, p8

    :cond_16
    const/high16 v15, 0x400000

    :goto_e
    or-int v16, v16, v15

    goto :goto_f

    :cond_17
    move-wide/from16 v0, p8

    :goto_f
    and-int/lit16 v15, v13, 0x100

    const/high16 v18, 0x6000000

    if-eqz v15, :cond_18

    or-int v16, v16, v18

    move-object/from16 v0, p10

    goto :goto_11

    :cond_18
    and-int v18, v14, v18

    if-nez v18, :cond_1a

    move-object/from16 v0, p10

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v1, 0x2000000

    :goto_10
    or-int v16, v16, v1

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p10

    :goto_11
    const v1, 0x2492493

    and-int v1, v16, v1

    const v0, 0x2492492

    if-ne v1, v0, :cond_1c

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    .line 122
    :cond_1b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v19, p6

    move-wide/from16 v28, p8

    move-object/from16 v21, p10

    move-object v15, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move/from16 v22, v16

    move/from16 v16, v5

    goto/16 :goto_19

    .line 102
    :cond_1c
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v1, -0x1c00001

    const v18, -0x380001

    if-eqz v0, :cond_20

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_13

    .line 101
    :cond_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_1e

    and-int v16, v16, v18

    :cond_1e
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_1f

    and-int v0, v16, v1

    move-wide/from16 v28, p8

    move-object/from16 v2, p10

    move v4, v0

    move-wide/from16 v0, p6

    .end local v16    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_17

    .end local v0    # "$dirty":I
    .restart local v16    # "$dirty":I
    :cond_1f
    move-wide/from16 v0, p6

    move-wide/from16 v28, p8

    move-object/from16 v2, p10

    move/from16 v4, v16

    goto/16 :goto_17

    .line 102
    :cond_20
    :goto_13
    if-eqz v2, :cond_21

    .line 95
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v3, v0

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    if-eqz v4, :cond_22

    .line 96
    const/4 v0, 0x1

    move v5, v0

    .end local p3    # "enabled":Z
    .local v5, "enabled":Z
    :cond_22
    if-eqz v6, :cond_23

    .line 97
    const/4 v0, 0x0

    move-object v7, v0

    .end local p4    # "text":Lkotlin/jvm/functions/Function2;
    .local v7, "text":Lkotlin/jvm/functions/Function2;
    :cond_23
    if-eqz v8, :cond_24

    .line 98
    const/4 v0, 0x0

    move-object v10, v0

    .end local p5    # "icon":Lkotlin/jvm/functions/Function2;
    .local v10, "icon":Lkotlin/jvm/functions/Function2;
    :cond_24
    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_25

    .line 99
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/4 v4, 0x0

    .line 453
    .local v4, "$i$f$getCurrent":I
    const v6, 0x789c5f52

    const-string v8, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v6, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v4    # "$i$f$getCurrent":I
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v19

    .end local p6    # "selectedContentColor":J
    .local v19, "selectedContentColor":J
    and-int v16, v16, v18

    goto :goto_14

    .line 98
    .end local v19    # "selectedContentColor":J
    .restart local p6    # "selectedContentColor":J
    :cond_25
    move-wide/from16 v19, p6

    .line 453
    .end local p6    # "selectedContentColor":J
    .restart local v19    # "selectedContentColor":J
    :goto_14
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_26

    .line 100
    move-wide/from16 v21, v19

    .end local p8    # "unselectedContentColor":J
    .local v21, "unselectedContentColor":J
    and-int v16, v16, v1

    goto :goto_15

    .line 453
    .end local v21    # "unselectedContentColor":J
    .restart local p8    # "unselectedContentColor":J
    :cond_26
    move-wide/from16 v21, p8

    .line 100
    .end local p8    # "unselectedContentColor":J
    .restart local v21    # "unselectedContentColor":J
    :goto_15
    if-eqz v15, :cond_28

    .line 101
    const v0, 0x633ff166

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Tab.kt#9igjgp"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v1, v12

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 455
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v4, v8, :cond_27

    .line 456
    const/4 v8, 0x0

    .line 101
    .local v8, "$i$a$-cache-TabKt$Tab$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v8

    .line 456
    .end local v8    # "$i$a$-cache-TabKt$Tab$1":I
    nop

    .line 457
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    nop

    .end local v8    # "value$iv":Ljava/lang/Object;
    goto :goto_16

    .line 459
    :cond_27
    move-object v8, v4

    .line 455
    :goto_16
    nop

    .line 454
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 101
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v2, v0

    move/from16 v4, v16

    move-wide/from16 v0, v19

    move-wide/from16 v28, v21

    goto :goto_17

    .line 100
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_28
    move-object/from16 v2, p10

    move/from16 v4, v16

    move-wide/from16 v0, v19

    move-wide/from16 v28, v21

    .line 101
    .end local v16    # "$dirty":I
    .end local v19    # "selectedContentColor":J
    .end local v21    # "unselectedContentColor":J
    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "selectedContentColor":J
    .local v2, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v4, "$dirty":I
    .local v28, "unselectedContentColor":J
    :goto_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 102
    const/4 v6, -0x1

    const-string/jumbo v8, "androidx.compose.material3.Tab (Tab.kt:101)"

    const v15, -0x14e6256d

    invoke-static {v15, v4, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 103
    :cond_29
    if-eqz v7, :cond_2a

    move-object v8, v7

    .local v8, "it":Lkotlin/jvm/functions/Function2;
    const/4 v15, 0x0

    .line 104
    .local v15, "$i$a$-let-TabKt$Tab$styledText$1":I
    new-instance v6, Landroidx/compose/material3/TabKt$Tab$styledText$1$1;

    invoke-direct {v6, v7}, Landroidx/compose/material3/TabKt$Tab$styledText$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    move-object/from16 p3, v7

    .end local v7    # "text":Lkotlin/jvm/functions/Function2;
    .local p3, "text":Lkotlin/jvm/functions/Function2;
    const v7, 0x2a4090bc

    move-object/from16 p4, v8

    const/4 v8, 0x1

    .end local v8    # "it":Lkotlin/jvm/functions/Function2;
    .local p4, "it":Lkotlin/jvm/functions/Function2;
    invoke-static {v12, v7, v8, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 103
    .end local v15    # "$i$a$-let-TabKt$Tab$styledText$1":I
    .end local p4    # "it":Lkotlin/jvm/functions/Function2;
    goto :goto_18

    .end local p3    # "text":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "text":Lkotlin/jvm/functions/Function2;
    :cond_2a
    move-object/from16 p3, v7

    .end local v7    # "text":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "text":Lkotlin/jvm/functions/Function2;
    const/4 v6, 0x0

    .line 112
    .local v6, "styledText":Lkotlin/jvm/functions/Function2;
    :goto_18
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    new-instance v7, Landroidx/compose/material3/TabKt$Tab$2;

    invoke-direct {v7, v6, v10}, Landroidx/compose/material3/TabKt$Tab$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v8, 0x5bd9bbc6

    const/4 v15, 0x1

    invoke-static {v12, v8, v15, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    move-object/from16 v24, v7

    check-cast v24, Lkotlin/jvm/functions/Function3;

    and-int/lit8 v7, v4, 0xe

    or-int v7, v7, v17

    and-int/lit8 v8, v4, 0x70

    or-int/2addr v7, v8

    and-int/lit16 v8, v4, 0x380

    or-int/2addr v7, v8

    and-int/lit16 v8, v4, 0x1c00

    or-int/2addr v7, v8

    shr-int/lit8 v8, v4, 0x6

    const v15, 0xe000

    and-int/2addr v8, v15

    or-int/2addr v7, v8

    shr-int/lit8 v8, v4, 0x6

    const/high16 v15, 0x70000

    and-int/2addr v8, v15

    or-int/2addr v7, v8

    const/high16 v8, 0x380000

    shr-int/lit8 v15, v4, 0x6

    and-int/2addr v8, v15

    or-int v26, v7, v8

    const/16 v27, 0x0

    .line 111
    move/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-wide/from16 v19, v0

    move-wide/from16 v21, v28

    move-object/from16 v23, v2

    move-object/from16 v25, v12

    invoke-static/range {v15 .. v27}, Landroidx/compose/material3/TabKt;->Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 122
    .end local v6    # "styledText":Lkotlin/jvm/functions/Function2;
    :cond_2b
    move-object/from16 v17, p3

    move-wide/from16 v19, v0

    move-object/from16 v21, v2

    move-object v15, v3

    move/from16 v22, v4

    move/from16 v16, v5

    move-object/from16 v18, v10

    .end local v0    # "selectedContentColor":J
    .end local v2    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "$dirty":I
    .end local v5    # "enabled":Z
    .end local v10    # "icon":Lkotlin/jvm/functions/Function2;
    .end local p3    # "text":Lkotlin/jvm/functions/Function2;
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "enabled":Z
    .local v17, "text":Lkotlin/jvm/functions/Function2;
    .local v18, "icon":Lkotlin/jvm/functions/Function2;
    .restart local v19    # "selectedContentColor":J
    .local v21, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v22, "$dirty":I
    :goto_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v23, Landroidx/compose/material3/TabKt$Tab$3;

    move-object/from16 v0, v23

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    move-object v14, v10

    move-wide/from16 v9, v28

    move-object/from16 v11, v21

    move-object/from16 v24, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/TabKt$Tab$3;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1a

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2c
    move-object/from16 v24, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1a
    return-void
.end method

.method private static final TabBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 50
    .param p0, "text"    # Lkotlin/jvm/functions/Function2;
    .param p1, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x1ea50644

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(TabBaselineLayout)P(1)327@13445L1785,314@13071L2159:Tab.kt#uh7d8r"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x6

    const/4 v7, 0x4

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v2, 0x30

    const/16 v9, 0x20

    if-nez v6, :cond_3

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v9

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v6, v5, 0x13

    const/16 v10, 0x12

    if-ne v6, v10, :cond_5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 376
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_11

    .line 314
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, -0x1

    const-string/jumbo v10, "androidx.compose.material3.TabBaselineLayout (Tab.kt:313)"

    invoke-static {v3, v5, v6, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    const v3, 0x8f8a764

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Tab.kt#9igjgp"

    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v5, 0xe

    const/4 v6, 0x1

    const/4 v10, 0x0

    if-ne v3, v7, :cond_7

    move v3, v6

    goto :goto_3

    :cond_7
    move v3, v10

    :goto_3
    and-int/lit8 v7, v5, 0x70

    if-ne v7, v9, :cond_8

    goto :goto_4

    :cond_8
    move v6, v10

    :goto_4
    or-int/2addr v3, v6

    .line 328
    nop

    .local v3, "invalid$iv":Z
    move-object v6, v4

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 493
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 494
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_a

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v9, v12, :cond_9

    goto :goto_5

    .line 498
    :cond_9
    move-object v12, v9

    goto :goto_6

    .line 495
    :cond_a
    :goto_5
    const/4 v12, 0x0

    .line 328
    .local v12, "$i$a$-cache-TabKt$TabBaselineLayout$2":I
    new-instance v13, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$1;

    invoke-direct {v13, v0, v1}, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 495
    .end local v12    # "$i$a$-cache-TabKt$TabBaselineLayout$2":I
    move-object v12, v13

    .line 496
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 497
    nop

    .line 494
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 493
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 328
    .end local v3    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v12, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 315
    move-object v3, v12

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move v6, v10

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$Layout":I
    const v9, -0x4ee9b9da

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v4, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 499
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 502
    .local v12, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 503
    .local v13, "compositeKeyHash$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 505
    .local v14, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 512
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v16

    shl-int/lit8 v10, v6, 0x9

    and-int/lit16 v10, v10, 0x1c00

    const/16 v17, 0x6

    or-int/lit8 v10, v10, 0x6

    .line 504
    move-object/from16 v18, v16

    .local v10, "$changed$iv$iv":I
    .local v15, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v18, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 513
    .local v16, "$i$f$ReusableComposeNode":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 514
    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 515
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 516
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    .line 518
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 520
    :goto_7
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 507
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 508
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 510
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 521
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v9

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 522
    .local v24, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_e

    move-object/from16 v25, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v25, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move/from16 v26, v6

    .end local v6    # "$changed$iv":I
    .local v26, "$changed$iv":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v6, v23

    goto :goto_9

    .end local v25    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v26    # "$changed$iv":I
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "$changed$iv":I
    :cond_e
    move-object/from16 v25, v3

    move/from16 v26, v6

    .line 523
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v6    # "$changed$iv":I
    .restart local v25    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v26    # "$changed$iv":I
    :goto_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 526
    :goto_9
    nop

    .line 521
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 526
    nop

    .line 511
    .end local v8    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 520
    .end local v9    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 527
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v6, v10, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v18

    .end local v18    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v8, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8, v3, v4, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const v3, 0x7ab4aae9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 529
    shr-int/lit8 v6, v10, 0x9

    and-int/lit8 v6, v6, 0xe

    .local v6, "$changed":I
    move-object v9, v4

    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 317
    .local v18, "$i$a$-Layout-TabKt$TabBaselineLayout$1":I
    const v3, 0x2af751ad

    move/from16 v21, v6

    .end local v6    # "$changed":I
    .local v21, "$changed":I
    const-string v6, "C:Tab.kt#uh7d8r"

    invoke-static {v9, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "317@13137L173"

    invoke-static {v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    const-string v6, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    move/from16 v24, v7

    .end local v7    # "$i$f$Layout":I
    .local v24, "$i$f$Layout":I
    if-eqz v0, :cond_13

    .line 319
    sget-object v27, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v7, v27

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 320
    move-object/from16 v27, v8

    .end local v8    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v27, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string/jumbo v8, "text"

    invoke-static {v7, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 321
    sget v8, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    move/from16 v29, v10

    .end local v10    # "$changed$iv$iv":I
    .local v29, "$changed$iv$iv":I
    const/4 v10, 0x0

    move-object/from16 v30, v12

    .end local v12    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v30, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v12, 0x0

    move/from16 v31, v13

    const/4 v13, 0x2

    .end local v13    # "compositeKeyHash$iv":I
    .local v31, "compositeKeyHash$iv":I
    invoke-static {v7, v8, v10, v13, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 318
    move/from16 v8, v17

    .local v7, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v8, "$changed$iv":I
    const/4 v10, 0x0

    const v12, 0x2bb5b5d7

    .local v10, "$i$f$Box":I
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 530
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v12

    .line 531
    .local v12, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v13, 0x0

    .line 534
    .local v13, "propagateMinConstraints$iv":Z
    shr-int/lit8 v22, v8, 0x3

    and-int/lit8 v22, v22, 0xe

    shr-int/lit8 v32, v8, 0x3

    and-int/lit8 v32, v32, 0x70

    move/from16 v33, v10

    .end local v10    # "$i$f$Box":I
    .local v33, "$i$f$Box":I
    or-int v10, v22, v32

    invoke-static {v12, v13, v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v22, v8, 0x3

    and-int/lit8 v22, v22, 0x70

    .line 535
    nop

    .local v22, "$changed$iv$iv":I
    const/16 v32, 0x0

    move-object/from16 v34, v12

    const v12, -0x4ee9b9da

    .end local v12    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v32, "$i$f$Layout":I
    .local v34, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 536
    const/4 v12, 0x0

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v35

    .line 537
    .local v35, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 539
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v36

    .line 546
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v37

    move-object/from16 v38, v7

    .end local v7    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v38, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v7, v22, 0x9

    and-int/lit16 v7, v7, 0x1c00

    or-int/lit8 v7, v7, 0x6

    .line 538
    move-object/from16 v39, v37

    .local v39, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v37, v36

    .local v7, "$changed$iv$iv$iv":I
    .local v37, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v36, 0x0

    .line 547
    .local v36, "$i$f$ReusableComposeNode":I
    move/from16 v40, v13

    .end local v13    # "propagateMinConstraints$iv":Z
    .local v40, "propagateMinConstraints$iv":Z
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 548
    :cond_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 549
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 550
    move-object/from16 v13, v37

    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    .line 552
    .end local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_10
    move-object/from16 v13, v37

    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 554
    :goto_a
    move-object/from16 v37, v13

    .end local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .local v13, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 541
    .local v41, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v42, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v43, v14

    .end local v14    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v43, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 542
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v12, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 544
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    .local v14, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v42, 0x0

    .line 555
    .local v42, "$i$f$set-impl":I
    move-object/from16 v44, v13

    .local v44, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 556
    .local v45, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v46

    if-nez v46, :cond_12

    move-object/from16 v46, v10

    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v46, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v47, v12

    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v47, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_b

    :cond_11
    move-object/from16 v12, v44

    goto :goto_c

    .end local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v47    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_12
    move-object/from16 v46, v10

    move-object/from16 v47, v12

    .line 557
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v47    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_b
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, v44

    .end local v44    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 558
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10, v14}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 560
    :goto_c
    nop

    .line 555
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v45    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 560
    nop

    .line 545
    .end local v14    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v42    # "$i$f$set-impl":I
    nop

    .line 554
    .end local v13    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v41    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 561
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v10

    shr-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v39

    .end local v39    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v13, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v13, v10, v9, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const v10, 0x7ab4aae9

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 563
    shr-int/lit8 v10, v7, 0x9

    and-int/lit8 v10, v10, 0xe

    .local v10, "$changed$iv":I
    move-object v12, v9

    .local v12, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 564
    .local v14, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v39, v7

    const v7, -0x4ab8dd4f

    .end local v7    # "$changed$iv$iv$iv":I
    .local v39, "$changed$iv$iv$iv":I
    invoke-static {v12, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v41, v8, 0x6

    and-int/lit8 v41, v41, 0x70

    or-int/lit8 v41, v41, 0x6

    .local v41, "$changed":I
    check-cast v7, Landroidx/compose/foundation/layout/BoxScope;

    .local v7, "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v42, v12

    .local v42, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v44, 0x0

    .line 322
    .local v44, "$i$a$-Box-TabKt$TabBaselineLayout$1$1":I
    move-object/from16 v45, v7

    .end local v7    # "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    .local v45, "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    const v7, -0x3a4b6b69

    move/from16 v48, v8

    .end local v8    # "$changed$iv":I
    .local v48, "$changed$iv":I
    const-string v8, "C321@13302L6:Tab.kt#uh7d8r"

    move/from16 v49, v10

    move-object/from16 v10, v42

    .end local v42    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v49, "$changed$iv":I
    invoke-static {v10, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v7, v5, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 564
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v41    # "$changed":I
    .end local v44    # "$i$a$-Box-TabKt$TabBaselineLayout$1$1":I
    .end local v45    # "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 563
    .end local v12    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v49    # "$changed$iv":I
    nop

    .line 565
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 566
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 567
    nop

    .end local v13    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v36    # "$i$f$ReusableComposeNode":I
    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v39    # "$changed$iv$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 568
    nop

    .end local v22    # "$changed$iv$iv":I
    .end local v32    # "$i$f$Layout":I
    .end local v35    # "compositeKeyHash$iv$iv":I
    .end local v47    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 569
    goto :goto_d

    .line 317
    .end local v27    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v29    # "$changed$iv$iv":I
    .end local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v31    # "compositeKeyHash$iv":I
    .end local v33    # "$i$f$Box":I
    .end local v34    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v38    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v40    # "propagateMinConstraints$iv":Z
    .end local v43    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v48    # "$changed$iv":I
    .local v8, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v10, "$changed$iv$iv":I
    .local v12, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v13, "compositeKeyHash$iv":I
    .local v14, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_13
    move-object/from16 v27, v8

    move/from16 v29, v10

    move-object/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v43, v14

    .line 569
    .end local v8    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v10    # "$changed$iv$iv":I
    .end local v12    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v13    # "compositeKeyHash$iv":I
    .end local v14    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v27    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .restart local v29    # "$changed$iv$iv":I
    .restart local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v31    # "compositeKeyHash$iv":I
    .restart local v43    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v7, 0x8f8a6f8

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "324@13373L41"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 324
    if-eqz v1, :cond_18

    .line 325
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    const-string/jumbo v8, "icon"

    invoke-static {v7, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .local v7, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v8, 0x6

    .local v8, "$changed$iv":I
    const/4 v10, 0x0

    const v12, 0x2bb5b5d7

    .local v10, "$i$f$Box":I
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 570
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    .line 571
    .local v6, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v12, 0x0

    .line 574
    .local v12, "propagateMinConstraints$iv":Z
    shr-int/lit8 v13, v8, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v8, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v6, v12, v9, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v8, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 575
    nop

    .local v14, "$changed$iv$iv":I
    const/16 v22, 0x0

    move-object/from16 v28, v6

    const v6, -0x4ee9b9da

    .end local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v22, "$i$f$Layout":I
    .local v28, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 576
    const/4 v6, 0x0

    invoke-static {v9, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v6

    .line 577
    .local v6, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 579
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    .line 586
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v32

    move-object/from16 p2, v7

    .end local v7    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p2, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v7, v14, 0x9

    and-int/lit16 v7, v7, 0x1c00

    or-int/lit8 v7, v7, 0x6

    .line 578
    move-object/from16 v33, v32

    .local v33, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v32, v19

    .local v7, "$changed$iv$iv$iv":I
    .local v32, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 587
    .local v19, "$i$f$ReusableComposeNode":I
    move/from16 v34, v10

    .end local v10    # "$i$f$Box":I
    .local v34, "$i$f$Box":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 588
    :cond_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 589
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 590
    move-object/from16 v10, v32

    .end local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 592
    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_15
    move-object/from16 v10, v32

    .end local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 594
    :goto_e
    move-object/from16 v32, v10

    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v35, 0x0

    .line 581
    .local v35, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v37, v12

    .end local v12    # "propagateMinConstraints$iv":Z
    .local v37, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v13, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 582
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 584
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v36, 0x0

    .line 595
    .local v36, "$i$f$set-impl":I
    move-object/from16 v38, v10

    .local v38, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 596
    .local v39, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v40

    if-nez v40, :cond_17

    move-object/from16 v40, v11

    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v40, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v41, v13

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v41, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_f

    :cond_16
    move-object/from16 v13, v38

    goto :goto_10

    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_17
    move-object/from16 v40, v11

    move-object/from16 v41, v13

    .line 597
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v13, v38

    .end local v38    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 598
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 600
    :goto_10
    nop

    .line 595
    .end local v13    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 600
    nop

    .line 585
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v36    # "$i$f$set-impl":I
    nop

    .line 594
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v35    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 601
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v10

    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v12, v33

    .end local v33    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12, v10, v9, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const v10, 0x7ab4aae9

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 603
    shr-int/lit8 v10, v7, 0x9

    and-int/lit8 v10, v10, 0xe

    .local v10, "$changed$iv":I
    move-object v11, v9

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 604
    .local v13, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v20, v6

    const v6, -0x4ab8dd4f

    .end local v6    # "compositeKeyHash$iv$iv":I
    .local v20, "compositeKeyHash$iv$iv":I
    invoke-static {v11, v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v8, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed":I
    check-cast v3, Landroidx/compose/foundation/layout/BoxScope;

    .local v3, "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v17, v11

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 325
    .local v23, "$i$a$-Box-TabKt$TabBaselineLayout$1$2":I
    move-object/from16 v33, v3

    .end local v3    # "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .local v33, "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    const v3, -0x3a4b6b01

    move/from16 v35, v6

    .end local v6    # "$changed":I
    .local v35, "$changed":I
    const-string v6, "C324@13406L6:Tab.kt#uh7d8r"

    move/from16 v36, v7

    move-object/from16 v7, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    .local v36, "$changed$iv$iv$iv":I
    invoke-static {v7, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v3, v5, 0x3

    and-int/lit8 v3, v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 604
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-Box-TabKt$TabBaselineLayout$1$2":I
    .end local v33    # "$this$TabBaselineLayout_u24lambda_u248_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .end local v35    # "$changed":I
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 603
    .end local v10    # "$changed$iv":I
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 605
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 606
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 607
    nop

    .end local v12    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v36    # "$changed$iv$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 608
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v22    # "$i$f$Layout":I
    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 609
    nop

    .end local v8    # "$changed$iv":I
    .end local v28    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v34    # "$i$f$Box":I
    .end local v37    # "propagateMinConstraints$iv":Z
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 317
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 327
    nop

    .line 529
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-Layout-TabKt$TabBaselineLayout$1":I
    .end local v21    # "$changed":I
    nop

    .line 610
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 611
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 612
    nop

    .end local v15    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v27    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v29    # "$changed$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 613
    nop

    .end local v24    # "$i$f$Layout":I
    .end local v25    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v26    # "$changed$iv":I
    .end local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v31    # "compositeKeyHash$iv":I
    .end local v43    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 376
    :cond_19
    :goto_11
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_1a

    new-instance v6, Landroidx/compose/material3/TabKt$TabBaselineLayout$3;

    invoke-direct {v6, v0, v1, v2}, Landroidx/compose/material3/TabKt$TabBaselineLayout$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method private static final TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 29
    .param p0, "activeColor"    # J
    .param p2, "inactiveColor"    # J
    .param p4, "selected"    # Z
    .param p5, "content"    # Lkotlin/jvm/functions/Function2;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 279
    move-object/from16 v8, p5

    move/from16 v9, p7

    const v0, 0x2bda6088

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TabTransition)P(0:c#ui.graphics.Color,2:c#ui.graphics.Color,3)279@11954L26,280@12009L550,298@12564L99:Tab.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    move-wide/from16 v5, p0

    invoke-interface {v7, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p0

    :goto_1
    and-int/lit8 v2, v9, 0x30

    if-nez v2, :cond_3

    move-wide/from16 v14, p2

    invoke-interface {v7, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v14, p2

    :goto_3
    and-int/lit16 v2, v9, 0x180

    if-nez v2, :cond_5

    move/from16 v4, p4

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_4

    :cond_4
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    goto :goto_5

    :cond_5
    move/from16 v4, p4

    :goto_5
    and-int/lit16 v2, v9, 0xc00

    if-nez v2, :cond_7

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_6

    :cond_6
    const/16 v2, 0x400

    :goto_6
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v1, 0x493

    const/16 v10, 0x492

    if-ne v2, v10, :cond_9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_7

    .line 303
    :cond_8
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_d

    .line 279
    :cond_9
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    const/4 v12, -0x1

    if-eqz v2, :cond_a

    const-string/jumbo v2, "androidx.compose.material3.TabTransition (Tab.kt:278)"

    invoke-static {v0, v1, v12, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 280
    :cond_a
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0xe

    const/4 v10, 0x0

    invoke-static {v0, v10, v7, v2, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 281
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/material3/TabKt$TabTransition$color$2;->INSTANCE:Landroidx/compose/material3/TabKt$TabTransition$color$2;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .local v2, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    move-object/from16 v18, v0

    .local v18, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    const/16 v19, 0x0

    .local v19, "$i$f$animateColor":I
    const v10, -0x739d657f

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v7, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 474
    const-string v20, "ColorAnimation"

    .line 477
    .local v20, "label$iv":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v10

    shr-int/lit8 v11, v3, 0x6

    and-int/lit8 v11, v11, 0x70

    .local v11, "$changed":I
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .local v10, "it":Z
    move-object v13, v7

    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .local v16, "$i$a$-animateColor-TabKt$TabTransition$color$3":I
    const v12, -0x770830db

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "C:Tab.kt#uh7d8r"

    invoke-static {v13, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v21

    move-object/from16 v22, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .local v22, "transition":Landroidx/compose/animation/core/Transition;
    const-string/jumbo v0, "androidx.compose.material3.TabTransition.<anonymous> (Tab.kt:296)"

    if-eqz v21, :cond_b

    .line 297
    const/4 v4, -0x1

    const v5, -0x770830db

    invoke-static {v5, v11, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_b
    if-eqz v10, :cond_c

    move-wide/from16 v4, p0

    goto :goto_8

    :cond_c
    move-wide v4, v14

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 477
    .end local v10    # "it":Z
    .end local v11    # "$changed":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-animateColor-TabKt$TabTransition$color$3":I
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v4

    .line 478
    .local v4, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const/16 v5, 0x8

    .local v5, "$changed$iv$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v10, 0x44faf204

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v7, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 479
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "invalid$iv$iv$iv":Z
    move-object v11, v7

    .local v11, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 480
    .local v13, "$i$f$cache":I
    move/from16 v16, v5

    .end local v5    # "$changed$iv$iv":I
    .local v16, "$changed$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 481
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v10, :cond_f

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v6

    .end local v6    # "$i$f$remember":I
    .local v24, "$i$f$remember":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_e

    goto :goto_9

    .line 486
    :cond_e
    move-object/from16 v25, v5

    goto :goto_a

    .line 481
    .end local v24    # "$i$f$remember":I
    .restart local v6    # "$i$f$remember":I
    :cond_f
    move/from16 v24, v6

    .line 482
    .end local v6    # "$i$f$remember":I
    .restart local v24    # "$i$f$remember":I
    :goto_9
    const/4 v6, 0x0

    .line 483
    .local v6, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v23, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 v25, v5

    .end local v5    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v25, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/TwoWayConverter;

    .line 482
    .end local v6    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 484
    .local v5, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 485
    nop

    .line 481
    .end local v5    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 480
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v25    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 479
    .end local v10    # "invalid$iv$iv$iv":Z
    .end local v11    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 478
    .end local v16    # "$changed$iv$iv":I
    .end local v24    # "$i$f$remember":I
    check-cast v5, Landroidx/compose/animation/core/TwoWayConverter;

    .line 487
    .local v5, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v6, v3, 0xe

    or-int/lit8 v6, v6, 0x40

    shl-int/lit8 v10, v3, 0x3

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v6, v10

    shl-int/lit8 v10, v3, 0x3

    and-int/lit16 v10, v10, 0x1c00

    or-int/2addr v6, v10

    shl-int/lit8 v10, v3, 0x3

    const v13, 0xe000

    and-int/2addr v10, v13

    or-int/2addr v6, v10

    .local v6, "$changed$iv$iv":I
    move-object/from16 v10, v18

    .local v10, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v21, 0x0

    .local v21, "$i$f$animateValue":I
    const v11, -0x880d1ef

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v7, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v10}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v11

    shr-int/lit8 v16, v6, 0x9

    and-int/lit8 v13, v16, 0x70

    .local v13, "$changed":I
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .local v11, "it":Z
    move-object/from16 v16, v7

    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v3, v16

    const v4, -0x770830db

    .end local v4    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$i$a$-animateColor-TabKt$TabTransition$color$3":I
    .local v25, "$changed$iv":I
    .local v26, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 297
    const/4 v9, -0x1

    invoke-static {v4, v13, v9, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_10
    if-eqz v11, :cond_11

    move-wide/from16 v27, p0

    goto :goto_b

    :cond_11
    move-wide/from16 v27, v14

    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v11    # "it":Z
    .end local v13    # "$changed":I
    .end local v24    # "$i$a$-animateColor-TabKt$TabTransition$color$3":I
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v11

    .line 488
    nop

    .line 489
    .local v11, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v10}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v4, v6, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .local v3, "it":Z
    move-object v9, v7

    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    move/from16 v16, v13

    const v13, -0x770830db

    .local v16, "$i$a$-animateColor-TabKt$TabTransition$color$3":I
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 297
    const/4 v12, -0x1

    invoke-static {v13, v4, v12, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_13
    if-eqz v3, :cond_14

    move-wide/from16 v12, p0

    goto :goto_c

    :cond_14
    move-wide v12, v14

    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Z
    .end local v4    # "$changed":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-animateColor-TabKt$TabTransition$color$3":I
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    .line 489
    nop

    .line 490
    .local v12, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v10}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    shr-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v7, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 492
    .local v0, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v3, v6, 0xe

    shl-int/lit8 v4, v6, 0x9

    const v9, 0xe000

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    shl-int/lit8 v4, v6, 0x6

    const/high16 v9, 0x70000

    and-int/2addr v4, v9

    or-int v17, v3, v4

    move-object v13, v0

    move-object v14, v5

    move-object/from16 v15, v20

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 487
    .end local v0    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v6    # "$changed$iv$iv":I
    .end local v10    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v11    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v12    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$animateValue":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 281
    .end local v2    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v5    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v18    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v19    # "$i$f$animateColor":I
    .end local v20    # "label$iv":Ljava/lang/String;
    .end local v25    # "$changed$iv":I
    .end local v26    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v0, v3

    .line 300
    .local v0, "color$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v0}, Landroidx/compose/material3/TabKt;->TabTransition_Klgx_Pg$lambda$5(Landroidx/compose/runtime/State;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    .line 301
    sget v3, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v3, v3, 0x0

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    .line 299
    invoke-static {v2, v8, v7, v3}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 303
    .end local v0    # "color$delegate":Landroidx/compose/runtime/State;
    .end local v22    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_16
    :goto_d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v10, Landroidx/compose/material3/TabKt$TabTransition$1;

    move-object v0, v10

    move v11, v1

    .end local v1    # "$dirty":I
    .local v11, "$dirty":I
    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object v12, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/TabKt$TabTransition$1;-><init>(JJZLkotlin/jvm/functions/Function2;I)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_e

    .end local v11    # "$dirty":I
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_17
    move v11, v1

    move-object v12, v7

    .end local v1    # "$dirty":I
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$dirty":I
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_e
    return-void
.end method

.method private static final TabTransition_Klgx_Pg$lambda$5(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$color$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 614
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 281
    return-wide v0
.end method

.method public static final synthetic access$TabBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "text"    # Lkotlin/jvm/functions/Function2;
    .param p1, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/TabKt;->TabBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "activeColor"    # J
    .param p2, "inactiveColor"    # J
    .param p4, "selected"    # Z
    .param p5, "content"    # Lkotlin/jvm/functions/Function2;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getIconDistanceFromBaseline$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/material3/TabKt;->IconDistanceFromBaseline:J

    return-wide v0
.end method

.method public static final synthetic access$getLargeTabHeight$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/TabKt;->LargeTabHeight:F

    return v0
.end method

.method public static final synthetic access$getSmallTabHeight$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/TabKt;->SmallTabHeight:F

    return v0
.end method

.method public static final synthetic access$getTextDistanceFromLeadingIcon$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/TabKt;->TextDistanceFromLeadingIcon:F

    return v0
.end method

.method public static final synthetic access$placeTextAndIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "textPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "tabWidth"    # I
    .param p5, "tabHeight"    # I
    .param p6, "firstBaseline"    # I
    .param p7, "lastBaseline"    # I

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/TabKt;->placeTextAndIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V

    return-void
.end method

.method public static final synthetic access$placeTextOrIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p1, "textOrIconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "tabHeight"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/TabKt;->placeTextOrIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V

    return-void
.end method

.method public static final getHorizontalTextPadding()F
    .locals 1

    .line 440
    sget v0, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    return v0
.end method

.method private static final placeTextAndIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V
    .locals 21
    .param p0, "$this$placeTextAndIcon"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "textPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "tabWidth"    # I
    .param p5, "tabHeight"    # I
    .param p6, "firstBaseline"    # I
    .param p7, "lastBaseline"    # I

    .line 404
    move/from16 v0, p6

    move/from16 v1, p7

    if-ne v0, v1, :cond_0

    .line 405
    sget v2, Landroidx/compose/material3/TabKt;->SingleLineTextBaselineWithIcon:F

    goto :goto_0

    .line 407
    :cond_0
    sget v2, Landroidx/compose/material3/TabKt;->DoubleLineTextBaselineWithIcon:F

    .line 404
    :goto_0
    nop

    .line 411
    .local v2, "baselineOffset":F
    move-object/from16 v3, p1

    .local v3, "$this$placeTextAndIcon_u24lambda_u2410":Landroidx/compose/ui/unit/Density;
    const/4 v4, 0x0

    .line 412
    .local v4, "$i$a$-with-TabKt$placeTextAndIcon$textOffset$1":I
    invoke-interface {v3, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    sget-object v6, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->INSTANCE:Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->getActiveIndicatorHeight-D9Ej5fM()F

    move-result v6

    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 411
    .end local v3    # "$this$placeTextAndIcon_u24lambda_u2410":Landroidx/compose/ui/unit/Density;
    .end local v4    # "$i$a$-with-TabKt$placeTextAndIcon$textOffset$1":I
    move v3, v5

    .line 417
    .local v3, "textOffset":I
    move-object/from16 v4, p1

    .local v4, "$this$placeTextAndIcon_u24lambda_u2411":Landroidx/compose/ui/unit/Density;
    const/4 v5, 0x0

    .line 418
    .local v5, "$i$a$-with-TabKt$placeTextAndIcon$iconOffset$1":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    sget-wide v7, Landroidx/compose/material3/TabKt;->IconDistanceFromBaseline:J

    invoke-interface {v4, v7, v8}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v0

    .line 417
    .end local v4    # "$this$placeTextAndIcon_u24lambda_u2411":Landroidx/compose/ui/unit/Density;
    .end local v5    # "$i$a$-with-TabKt$placeTextAndIcon$iconOffset$1":I
    move v4, v6

    .line 421
    .local v4, "iconOffset":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    .line 422
    .local v5, "textPlaceableX":I
    sub-int v6, p5, v1

    sub-int v13, v6, v3

    .line 423
    .local v13, "textPlaceableY":I
    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move v8, v5

    move v9, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    sub-int v6, p4, v6

    div-int/lit8 v6, v6, 0x2

    .line 426
    .local v6, "iconPlaceableX":I
    sub-int v7, v13, v4

    .line 427
    .local v7, "iconPlaceableY":I
    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 428
    return-void
.end method

.method private static final placeTextOrIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 8
    .param p0, "$this$placeTextOrIcon"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p1, "textOrIconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "tabHeight"    # I

    .line 386
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    .line 387
    .local v0, "contentY":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 388
    return-void
.end method
