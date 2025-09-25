.class public final Landroidx/compose/material3/TooltipKt;
.super Ljava/lang/Object;
.source "Tooltip.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,719:1\n1116#2,6:720\n1116#2,6:726\n1116#2,6:732\n135#3:738\n81#4:739\n107#4,2:740\n154#5:742\n154#5:743\n154#5:744\n154#5:745\n154#5:746\n154#5:747\n154#5:748\n154#5:749\n154#5:750\n154#5:751\n154#5:752\n154#5:753\n154#5:754\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt\n*L\n122#1:720,6\n123#1:726,6\n514#1:732,6\n651#1:738\n122#1:739\n122#1:740,2\n701#1:742\n702#1:743\n703#1:744\n704#1:745\n705#1:746\n706#1:747\n709#1:748\n710#1:749\n711#1:750\n712#1:751\n713#1:752\n714#1:753\n715#1:754\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u001a\u0085\u0001\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0015\u0008\u0002\u0010 \u001a\u000f\u0012\u0004\u0012\u00020\u001d\u0018\u00010!\u00a2\u0006\u0002\u0008\"2\u0015\u0008\u0002\u0010#\u001a\u000f\u0012\u0004\u0012\u00020\u001d\u0018\u00010!\u00a2\u0006\u0002\u0008\"2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\u00012\u0008\u0008\u0002\u0010)\u001a\u00020\u00012\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u001d0!\u00a2\u0006\u0002\u0008\"H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,\u001al\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/2\u001c\u00100\u001a\u0018\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u001d01\u00a2\u0006\u0002\u0008\"\u00a2\u0006\u0002\u000832\u0006\u00104\u001a\u0002052\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u00108\u001a\u0002072\u0011\u00109\u001a\r\u0012\u0004\u0012\u00020\u001d0!\u00a2\u0006\u0002\u0008\"H\u0007\u00a2\u0006\u0002\u0010:\u001a&\u0010;\u001a\u0002052\u0008\u0008\u0002\u0010<\u001a\u0002072\u0008\u0008\u0002\u0010=\u001a\u0002072\u0008\u0008\u0002\u0010>\u001a\u00020?H\u0007\u001a+\u0010@\u001a\u0002052\u0008\u0008\u0002\u0010<\u001a\u0002072\u0008\u0008\u0002\u0010=\u001a\u0002072\u0008\u0008\u0002\u0010>\u001a\u00020?H\u0007\u00a2\u0006\u0002\u0010A\u001a\u001a\u0010B\u001a\u00020\u001f*\u00020\u001f2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u0002070DH\u0000\u001a\u001c\u0010E\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010F\u001a\u0002072\u0006\u0010G\u001a\u000207H\u0003\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0010\u0010\n\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u000b\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u000c\u0010\r\"\u0010\u0010\u000e\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u000f\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u0010\u0010\r\"\u0010\u0010\u0011\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u0012\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u0013\u0010\r\"\u0010\u0010\u0014\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0015\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0018\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u0019\u0010\r\"\u0016\u0010\u001a\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u001b\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006H\u00b2\u0006\u000c\u0010I\u001a\u0004\u0018\u00010JX\u008a\u008e\u0002\u00b2\u0006\n\u0010K\u001a\u00020LX\u008a\u0084\u0002\u00b2\u0006\n\u0010M\u001a\u00020LX\u008a\u0084\u0002"
    }
    d2 = {
        "ActionLabelBottomPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "ActionLabelMinHeight",
        "HeightFromSubheadToTextFirstLine",
        "HeightToSubheadFirstLine",
        "PlainTooltipContentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "getPlainTooltipContentPadding",
        "()Landroidx/compose/foundation/layout/PaddingValues;",
        "PlainTooltipHorizontalPadding",
        "PlainTooltipMaxWidth",
        "getPlainTooltipMaxWidth",
        "()F",
        "PlainTooltipVerticalPadding",
        "RichTooltipHorizontalPadding",
        "getRichTooltipHorizontalPadding",
        "RichTooltipMaxWidth",
        "SpacingBetweenTooltipAndAnchor",
        "getSpacingBetweenTooltipAndAnchor",
        "TextBottomPadding",
        "TooltipFadeInDuration",
        "",
        "TooltipFadeOutDuration",
        "TooltipMinHeight",
        "getTooltipMinHeight",
        "TooltipMinWidth",
        "getTooltipMinWidth",
        "RichTooltip",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "title",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "action",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "colors",
        "Landroidx/compose/material3/RichTooltipColors;",
        "tonalElevation",
        "shadowElevation",
        "text",
        "RichTooltip-1tP8Re8",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "TooltipBox",
        "positionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "tooltip",
        "Lkotlin/Function1;",
        "Landroidx/compose/material3/CaretScope;",
        "Lkotlin/ExtensionFunctionType;",
        "state",
        "Landroidx/compose/material3/TooltipState;",
        "focusable",
        "",
        "enableUserInput",
        "content",
        "(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "TooltipState",
        "initialIsVisible",
        "isPersistent",
        "mutatorMutex",
        "Landroidx/compose/foundation/MutatorMutex;",
        "rememberTooltipState",
        "(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TooltipState;",
        "animateTooltip",
        "transition",
        "Landroidx/compose/animation/core/Transition;",
        "textVerticalPadding",
        "subheadExists",
        "actionExists",
        "material3_release",
        "anchorBounds",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "scale",
        "",
        "alpha"
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
.field private static final ActionLabelBottomPadding:F

.field private static final ActionLabelMinHeight:F

.field private static final HeightFromSubheadToTextFirstLine:F

.field private static final HeightToSubheadFirstLine:F

.field private static final PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final PlainTooltipHorizontalPadding:F

.field private static final PlainTooltipMaxWidth:F

.field private static final PlainTooltipVerticalPadding:F

.field private static final RichTooltipHorizontalPadding:F

.field private static final RichTooltipMaxWidth:F

.field private static final SpacingBetweenTooltipAndAnchor:F

.field private static final TextBottomPadding:F

.field public static final TooltipFadeInDuration:I = 0x96

.field public static final TooltipFadeOutDuration:I = 0x4b

.field private static final TooltipMinHeight:F

.field private static final TooltipMinWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 701
    const/4 v0, 0x4

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 742
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 701
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->SpacingBetweenTooltipAndAnchor:F

    .line 702
    const/16 v0, 0x18

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 743
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 702
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->TooltipMinHeight:F

    .line 703
    const/16 v0, 0x28

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 744
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 703
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->TooltipMinWidth:F

    .line 704
    const/16 v0, 0xc8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 745
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 704
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipMaxWidth:F

    .line 705
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 746
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 705
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipVerticalPadding:F

    .line 706
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 747
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 706
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipHorizontalPadding:F

    .line 708
    sget v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipHorizontalPadding:F

    sget v1, Landroidx/compose/material3/TooltipKt;->PlainTooltipVerticalPadding:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 709
    const/16 v0, 0x140

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 748
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 709
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->RichTooltipMaxWidth:F

    .line 710
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 749
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 710
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->RichTooltipHorizontalPadding:F

    .line 711
    const/16 v0, 0x1c

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 750
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 711
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->HeightToSubheadFirstLine:F

    .line 712
    const/16 v0, 0x18

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 751
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 712
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->HeightFromSubheadToTextFirstLine:F

    .line 713
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 752
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 713
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->TextBottomPadding:F

    .line 714
    const/16 v0, 0x24

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 753
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 714
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->ActionLabelMinHeight:F

    .line 715
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 754
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 715
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TooltipKt;->ActionLabelBottomPadding:F

    return-void
.end method

.method public static final RichTooltip-1tP8Re8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "title"    # Lkotlin/jvm/functions/Function2;
    .param p2, "action"    # Lkotlin/jvm/functions/Function2;
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "colors"    # Landroidx/compose/material3/RichTooltipColors;
    .param p5, "tonalElevation"    # F
    .param p6, "shadowElevation"    # F
    .param p7, "text"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
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
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/RichTooltipColors;",
            "FF",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 236
    move-object/from16 v11, p7

    move/from16 v12, p9

    move/from16 v10, p10

    const v0, 0x5ec21b0e

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(RichTooltip)P(2,6!1,4!1,7:c#ui.unit.Dp,3:c#ui.unit.Dp)230@9367L25,231@9442L19,236@9631L2169:Tooltip.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p2

    :goto_5
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, v10, 0x8

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v8, p3

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v1, v13

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit16 v13, v12, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v10, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p4

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, v10, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v1, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int/2addr v15, v12

    if-nez v15, :cond_11

    move/from16 v15, p5

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, v10, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v1, v1, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v17, v12, v17

    if-nez v17, :cond_14

    move/from16 v0, p6

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_14
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v10, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_15

    or-int v1, v1, v18

    goto :goto_f

    :cond_15
    and-int v0, v12, v18

    if-nez v0, :cond_17

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v1, v0

    :cond_17
    :goto_f
    const v0, 0x492493

    and-int/2addr v0, v1

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 294
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, p6

    move/from16 v20, v1

    move-object v14, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v13

    move/from16 v18, v15

    move-object/from16 v13, p0

    move-object v15, v7

    goto/16 :goto_14

    .line 236
    :cond_19
    :goto_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v3, -0xe001

    if-eqz v0, :cond_1d

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 234
    :cond_1a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_1b

    and-int/lit16 v1, v1, -0x1c01

    :cond_1b
    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_1c

    and-int v0, v1, v3

    move/from16 v3, p6

    move v4, v0

    move-object v1, v13

    move v2, v15

    move-object/from16 v0, p0

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_13

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v3, p6

    move v4, v1

    move-object v1, v13

    move v2, v15

    goto :goto_13

    .line 236
    :cond_1d
    :goto_11
    if-eqz v2, :cond_1e

    .line 228
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_12

    .line 236
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move-object/from16 v0, p0

    .line 228
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_12
    if-eqz v4, :cond_1f

    .line 229
    const/4 v2, 0x0

    move-object v5, v2

    .end local p1    # "title":Lkotlin/jvm/functions/Function2;
    .local v5, "title":Lkotlin/jvm/functions/Function2;
    :cond_1f
    if-eqz v6, :cond_20

    .line 230
    const/4 v2, 0x0

    move-object v7, v2

    .end local p2    # "action":Lkotlin/jvm/functions/Function2;
    .local v7, "action":Lkotlin/jvm/functions/Function2;
    :cond_20
    and-int/lit8 v2, v10, 0x8

    const/4 v4, 0x6

    if-eqz v2, :cond_21

    .line 231
    sget-object v2, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    invoke-virtual {v2, v9, v4}, Landroidx/compose/material3/TooltipDefaults;->getRichTooltipContainerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    .end local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "shape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit16 v1, v1, -0x1c01

    move-object v8, v2

    .end local v2    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v8, "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_21
    and-int/lit8 v2, v10, 0x10

    if-eqz v2, :cond_22

    .line 232
    sget-object v2, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    invoke-virtual {v2, v9, v4}, Landroidx/compose/material3/TooltipDefaults;->richTooltipColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/RichTooltipColors;

    move-result-object v2

    .end local p4    # "colors":Landroidx/compose/material3/RichTooltipColors;
    .local v2, "colors":Landroidx/compose/material3/RichTooltipColors;
    and-int/2addr v1, v3

    move-object v13, v2

    .end local v2    # "colors":Landroidx/compose/material3/RichTooltipColors;
    .local v13, "colors":Landroidx/compose/material3/RichTooltipColors;
    :cond_22
    if-eqz v14, :cond_23

    .line 233
    sget-object v2, Landroidx/compose/material3/tokens/RichTooltipTokens;->INSTANCE:Landroidx/compose/material3/tokens/RichTooltipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/RichTooltipTokens;->getContainerElevation-D9Ej5fM()F

    move-result v2

    move v15, v2

    .end local p5    # "tonalElevation":F
    .local v15, "tonalElevation":F
    :cond_23
    if-eqz v16, :cond_24

    .line 234
    sget-object v2, Landroidx/compose/material3/tokens/RichTooltipTokens;->INSTANCE:Landroidx/compose/material3/tokens/RichTooltipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/RichTooltipTokens;->getContainerElevation-D9Ej5fM()F

    move-result v2

    move v4, v1

    move v3, v2

    move-object v1, v13

    move v2, v15

    .end local p6    # "shadowElevation":F
    .local v2, "shadowElevation":F
    goto :goto_13

    .line 233
    .end local v2    # "shadowElevation":F
    .restart local p6    # "shadowElevation":F
    :cond_24
    move/from16 v3, p6

    move v4, v1

    move-object v1, v13

    move v2, v15

    .line 234
    .end local v13    # "colors":Landroidx/compose/material3/RichTooltipColors;
    .end local v15    # "tonalElevation":F
    .end local p6    # "shadowElevation":F
    .local v1, "colors":Landroidx/compose/material3/RichTooltipColors;
    .local v2, "tonalElevation":F
    .local v3, "shadowElevation":F
    .local v4, "$dirty":I
    :goto_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 236
    const/4 v6, -0x1

    const-string/jumbo v13, "androidx.compose.material3.RichTooltip (Tooltip.kt:235)"

    const v14, 0x5ec21b0e

    invoke-static {v14, v4, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 240
    :cond_25
    sget v6, Landroidx/compose/material3/TooltipKt;->TooltipMinWidth:F

    .line 241
    sget v13, Landroidx/compose/material3/TooltipKt;->RichTooltipMaxWidth:F

    .line 242
    sget v14, Landroidx/compose/material3/TooltipKt;->TooltipMinHeight:F

    .line 238
    nop

    .line 240
    nop

    .line 242
    nop

    .line 241
    nop

    .line 239
    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v6

    move/from16 p2, v14

    move/from16 p3, v13

    move/from16 p4, v15

    move/from16 p5, v16

    move-object/from16 p6, v17

    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 244
    nop

    .line 245
    invoke-virtual {v1}, Landroidx/compose/material3/RichTooltipColors;->getContainerColor-0d7_KjU()J

    move-result-wide v15

    const-wide/16 v19, 0x0

    .line 246
    nop

    .line 247
    const/16 v21, 0x0

    .line 248
    new-instance v6, Landroidx/compose/material3/TooltipKt$RichTooltip$1;

    invoke-direct {v6, v5, v7, v1, v11}, Landroidx/compose/material3/TooltipKt$RichTooltip$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/RichTooltipColors;Lkotlin/jvm/functions/Function2;)V

    const v14, 0x424493

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    const/4 v0, 0x1

    invoke-static {v9, v14, v0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, v18

    shr-int/lit8 v6, v4, 0x3

    const v14, 0xe000

    and-int/2addr v6, v14

    or-int/2addr v0, v6

    const/high16 v6, 0x70000

    shr-int/lit8 v14, v4, 0x3

    and-int/2addr v6, v14

    or-int v24, v0, v6

    const/16 v25, 0x48

    .line 237
    move-object v14, v8

    move-wide/from16 v17, v19

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v23, v9

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 294
    :cond_26
    move-object/from16 v13, p0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    .end local v1    # "colors":Landroidx/compose/material3/RichTooltipColors;
    .end local v2    # "tonalElevation":F
    .end local v3    # "shadowElevation":F
    .end local v4    # "$dirty":I
    .end local v5    # "title":Lkotlin/jvm/functions/Function2;
    .end local v7    # "action":Lkotlin/jvm/functions/Function2;
    .end local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "title":Lkotlin/jvm/functions/Function2;
    .local v15, "action":Lkotlin/jvm/functions/Function2;
    .local v16, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v17, "colors":Landroidx/compose/material3/RichTooltipColors;
    .local v18, "tonalElevation":F
    .local v19, "shadowElevation":F
    .local v20, "$dirty":I
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_27

    new-instance v21, Landroidx/compose/material3/TooltipKt$RichTooltip$2;

    move-object/from16 v0, v21

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object v11, v8

    move-object/from16 v8, p7

    move-object/from16 v22, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TooltipKt$RichTooltip$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_27
    move-object/from16 v22, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_15
    return-void
.end method

.method public static final TooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "positionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p1, "tooltip"    # Lkotlin/jvm/functions/Function3;
    .param p2, "state"    # Landroidx/compose/material3/TooltipState;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "focusable"    # Z
    .param p5, "enableUserInput"    # Z
    .param p6, "content"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/CaretScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/TooltipState;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 119
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p6

    move/from16 v13, p8

    const v0, 0x6d7a9132

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TooltipBox)P(4,6,5,3,2,1)120@5234L64,121@5343L33,122@5393L257,139@5846L310:Tooltip.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x30

    if-nez v2, :cond_5

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_8

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    :goto_5
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v13, 0x6000

    if-nez v6, :cond_e

    move/from16 v6, p4

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move/from16 v6, p4

    :goto_9
    and-int/lit8 v7, p9, 0x20

    const/high16 v14, 0x30000

    if-eqz v7, :cond_f

    or-int/2addr v1, v14

    move/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int/2addr v14, v13

    if-nez v14, :cond_11

    move/from16 v14, p5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v14, p5

    :goto_b
    and-int/lit8 v15, p9, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_12

    or-int v1, v1, v16

    goto :goto_d

    :cond_12
    and-int v15, v13, v16

    if-nez v15, :cond_14

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v1, v15

    :cond_14
    :goto_d
    const v15, 0x92493

    and-int/2addr v15, v1

    const v3, 0x92492

    if-ne v15, v3, :cond_16

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_e

    .line 149
    :cond_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v15, v6

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_13

    .line 119
    :cond_16
    :goto_e
    if-eqz v2, :cond_17

    .line 115
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 119
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object v2, v4

    .line 115
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v5, :cond_18

    .line 116
    const/4 v3, 0x1

    move v6, v3

    .end local p4    # "focusable":Z
    .local v6, "focusable":Z
    :cond_18
    if-eqz v7, :cond_19

    .line 117
    const/4 v3, 0x1

    .end local p5    # "enableUserInput":Z
    .local v3, "enableUserInput":Z
    goto :goto_10

    .line 116
    .end local v3    # "enableUserInput":Z
    .restart local p5    # "enableUserInput":Z
    :cond_19
    move v3, v14

    .line 117
    .end local p5    # "enableUserInput":Z
    .restart local v3    # "enableUserInput":Z
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 119
    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material3.TooltipBox (Tooltip.kt:118)"

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 121
    :cond_1a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/material3/TooltipState;->getTransition()Landroidx/compose/animation/core/MutableTransitionState;

    move-result-object v0

    sget v4, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    or-int/lit8 v4, v4, 0x30

    const-string/jumbo v5, "tooltip transition"

    const/4 v7, 0x0

    invoke-static {v0, v5, v9, v4, v7}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    const v4, 0x78ff0954

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Tooltip.kt#9igjgp"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 122
    move v5, v7

    .local v5, "invalid$iv":Z
    move-object v14, v9

    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 720
    .local v15, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 721
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v5

    .end local v5    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v7, v5, :cond_1b

    .line 722
    const/4 v5, 0x0

    .line 122
    .local v5, "$i$a$-cache-TooltipKt$TooltipBox$anchorBounds$2":I
    move/from16 p5, v5

    .end local v5    # "$i$a$-cache-TooltipKt$TooltipBox$anchorBounds$2":I
    .local p5, "$i$a$-cache-TooltipKt$TooltipBox$anchorBounds$2":I
    const/4 v5, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x2

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local v17, "it$iv":Ljava/lang/Object;
    invoke-static {v5, v5, v7, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 722
    .end local p5    # "$i$a$-cache-TooltipKt$TooltipBox$anchorBounds$2":I
    nop

    .line 723
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 724
    nop

    .end local v5    # "value$iv":Ljava/lang/Object;
    goto :goto_11

    .line 725
    .end local v17    # "it$iv":Ljava/lang/Object;
    .restart local v7    # "it$iv":Ljava/lang/Object;
    :cond_1b
    move-object/from16 v17, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .restart local v17    # "it$iv":Ljava/lang/Object;
    move-object/from16 v5, v17

    .line 721
    :goto_11
    nop

    .line 720
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v17    # "it$iv":Ljava/lang/Object;
    nop

    .line 122
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .local v5, "anchorBounds$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v7, 0x78ff0986

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 123
    move-object v4, v9

    const/4 v7, 0x0

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v7, "invalid$iv":Z
    const/4 v14, 0x0

    .line 726
    .local v14, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 727
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v7

    .end local v7    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v15, v7, :cond_1c

    .line 728
    const/4 v7, 0x0

    .line 124
    .local v7, "$i$a$-cache-TooltipKt$TooltipBox$scope$1":I
    move/from16 p4, v7

    .end local v7    # "$i$a$-cache-TooltipKt$TooltipBox$scope$1":I
    .local p4, "$i$a$-cache-TooltipKt$TooltipBox$scope$1":I
    new-instance v7, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;

    invoke-direct {v7, v5}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 728
    .end local p4    # "$i$a$-cache-TooltipKt$TooltipBox$scope$1":I
    nop

    .line 729
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 730
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_12

    .line 731
    :cond_1c
    move-object v7, v15

    .line 727
    :goto_12
    nop

    .line 726
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 123
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object v4, v7

    check-cast v4, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;

    .local v4, "scope":Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 132
    new-instance v7, Landroidx/compose/material3/TooltipKt$TooltipBox$wrappedContent$1;

    invoke-direct {v7, v5, v12}, Landroidx/compose/material3/TooltipKt$TooltipBox$wrappedContent$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;)V

    const v14, -0x4366c37c

    const/4 v15, 0x1

    invoke-static {v9, v14, v15, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 141
    .local v7, "wrappedContent":Lkotlin/jvm/functions/Function2;
    nop

    .line 142
    new-instance v14, Landroidx/compose/material3/TooltipKt$TooltipBox$1;

    invoke-direct {v14, v0, v10, v4}, Landroidx/compose/material3/TooltipKt$TooltipBox$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;)V

    move-object/from16 p3, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .local p3, "transition":Landroidx/compose/animation/core/Transition;
    const v0, -0x8eae418    # -3.02429E33f

    invoke-static {v9, v0, v15, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 145
    move-object/from16 v16, v11

    check-cast v16, Landroidx/compose/material3/BasicTooltipState;

    .line 146
    nop

    .line 143
    nop

    .line 144
    nop

    .line 147
    and-int/lit8 v0, v1, 0xe

    const v14, 0x180030

    or-int/2addr v0, v14

    and-int/lit16 v14, v1, 0x380

    or-int/2addr v0, v14

    and-int/lit16 v14, v1, 0x1c00

    or-int/2addr v0, v14

    const v14, 0xe000

    and-int/2addr v14, v1

    or-int/2addr v0, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v1

    or-int v22, v0, v14

    const/16 v23, 0x0

    .line 140
    move-object/from16 v14, p0

    move-object/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    invoke-static/range {v14 .. v23}, Landroidx/compose/material3/BasicTooltip_androidKt;->BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 149
    .end local v4    # "scope":Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;
    .end local v5    # "anchorBounds$delegate":Landroidx/compose/runtime/MutableState;
    .end local v7    # "wrappedContent":Lkotlin/jvm/functions/Function2;
    .end local p3    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_1d
    move-object v14, v2

    move/from16 v16, v3

    move v15, v6

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "enableUserInput":Z
    .end local v6    # "focusable":Z
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "focusable":Z
    .local v16, "enableUserInput":Z
    :goto_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_1e

    new-instance v17, Landroidx/compose/material3/TooltipKt$TooltipBox$2;

    move-object/from16 v0, v17

    move/from16 v18, v1

    .end local v1    # "$dirty":I
    .local v18, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move-object v10, v7

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v19, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/TooltipKt$TooltipBox$2;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v18    # "$dirty":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1e
    move/from16 v18, v1

    move-object/from16 v19, v9

    .end local v1    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$dirty":I
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14
    return-void
.end method

.method private static final TooltipBox$lambda$1(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4
    .param p0, "$anchorBounds$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;)",
            "Landroidx/compose/ui/layout/LayoutCoordinates;"
        }
    .end annotation

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 739
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 122
    return-object v0
.end method

.method private static final TooltipBox$lambda$2(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 4
    .param p0, "$anchorBounds$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ")V"
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 740
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 741
    nop

    .line 122
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public static final TooltipState(ZZLandroidx/compose/foundation/MutatorMutex;)Landroidx/compose/material3/TooltipState;
    .locals 1
    .param p0, "initialIsVisible"    # Z
    .param p1, "isPersistent"    # Z
    .param p2, "mutatorMutex"    # Landroidx/compose/foundation/MutatorMutex;

    .line 544
    new-instance v0, Landroidx/compose/material3/TooltipStateImpl;

    .line 545
    nop

    .line 546
    nop

    .line 547
    nop

    .line 544
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/material3/TooltipStateImpl;-><init>(ZZLandroidx/compose/foundation/MutatorMutex;)V

    check-cast v0, Landroidx/compose/material3/TooltipState;

    .line 548
    return-object v0
.end method

.method public static synthetic TooltipState$default(ZZLandroidx/compose/foundation/MutatorMutex;ILjava/lang/Object;)Landroidx/compose/material3/TooltipState;
    .locals 0

    .line 539
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 540
    const/4 p0, 0x0

    .line 539
    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    .line 541
    const/4 p1, 0x1

    .line 539
    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    .line 542
    sget-object p2, Landroidx/compose/material3/BasicTooltipDefaults;->INSTANCE:Landroidx/compose/material3/BasicTooltipDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/BasicTooltipDefaults;->getGlobalMutatorMutex()Landroidx/compose/foundation/MutatorMutex;

    move-result-object p2

    .line 539
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/TooltipKt;->TooltipState(ZZLandroidx/compose/foundation/MutatorMutex;)Landroidx/compose/material3/TooltipState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$TooltipBox$lambda$1(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .param p0, "$anchorBounds$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/TooltipKt;->TooltipBox$lambda$1(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$TooltipBox$lambda$2(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p0, "$anchorBounds$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/TooltipKt;->TooltipBox$lambda$2(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void
.end method

.method public static final synthetic access$getActionLabelBottomPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/TooltipKt;->ActionLabelBottomPadding:F

    return v0
.end method

.method public static final synthetic access$getActionLabelMinHeight$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/TooltipKt;->ActionLabelMinHeight:F

    return v0
.end method

.method public static final synthetic access$getHeightToSubheadFirstLine$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/TooltipKt;->HeightToSubheadFirstLine:F

    return v0
.end method

.method public static final synthetic access$textVerticalPadding(Landroidx/compose/ui/Modifier;ZZ)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "subheadExists"    # Z
    .param p2, "actionExists"    # Z

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/TooltipKt;->textVerticalPadding(Landroidx/compose/ui/Modifier;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final animateTooltip(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$animateTooltip"    # Landroidx/compose/ui/Modifier;
    .param p1, "transition"    # Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 650
    nop

    .line 651
    const/4 v0, 0x0

    .line 738
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/material3/TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/material3/TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 650
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    new-instance v0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    invoke-direct {v0, p1}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 699
    return-object v0
.end method

.method public static final getPlainTooltipContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 707
    sget-object v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final getPlainTooltipMaxWidth()F
    .locals 1

    .line 704
    sget v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipMaxWidth:F

    return v0
.end method

.method public static final getRichTooltipHorizontalPadding()F
    .locals 1

    .line 710
    sget v0, Landroidx/compose/material3/TooltipKt;->RichTooltipHorizontalPadding:F

    return v0
.end method

.method public static final getSpacingBetweenTooltipAndAnchor()F
    .locals 1

    .line 701
    sget v0, Landroidx/compose/material3/TooltipKt;->SpacingBetweenTooltipAndAnchor:F

    return v0
.end method

.method public static final getTooltipMinHeight()F
    .locals 1

    .line 702
    sget v0, Landroidx/compose/material3/TooltipKt;->TooltipMinHeight:F

    return v0
.end method

.method public static final getTooltipMinWidth()F
    .locals 1

    .line 703
    sget v0, Landroidx/compose/material3/TooltipKt;->TooltipMinWidth:F

    return v0
.end method

.method public static final rememberTooltipState(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TooltipState;
    .locals 6
    .param p0, "initialIsVisible"    # Z
    .param p1, "isPersistent"    # Z
    .param p2, "mutatorMutex"    # Landroidx/compose/foundation/MutatorMutex;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const v0, -0x543c2fc2

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberTooltipState)513@20571L232:Tooltip.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 510
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 511
    const/4 p1, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 512
    sget-object p5, Landroidx/compose/material3/BasicTooltipDefaults;->INSTANCE:Landroidx/compose/material3/BasicTooltipDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/BasicTooltipDefaults;->getGlobalMutatorMutex()Landroidx/compose/foundation/MutatorMutex;

    move-result-object p2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 514
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.material3.rememberTooltipState (Tooltip.kt:513)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const p5, 0x1e91985d

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(remember):Tooltip.kt#9igjgp"

    invoke-static {p3, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p5, p4, 0x70

    xor-int/lit8 p5, p5, 0x30

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-le p5, v1, :cond_4

    .line 515
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result p5

    if-nez p5, :cond_5

    :cond_4
    and-int/lit8 p5, p4, 0x30

    if-ne p5, v1, :cond_6

    :cond_5
    move p5, v2

    goto :goto_0

    :cond_6
    move p5, v0

    :goto_0
    and-int/lit16 v1, p4, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v3, 0x100

    if-le v1, v3, :cond_7

    .line 516
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit16 v1, p4, 0x180

    if-ne v1, v3, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    or-int/2addr p5, v0

    .line 514
    move-object v0, p3

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p5, "invalid$iv":Z
    const/4 v1, 0x0

    .line 732
    .local v1, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 733
    .local v3, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p5, :cond_b

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_a

    goto :goto_1

    .line 737
    :cond_a
    move-object v4, v2

    goto :goto_2

    .line 734
    :cond_b
    :goto_1
    const/4 v4, 0x0

    .line 518
    .local v4, "$i$a$-cache-TooltipKt$rememberTooltipState$1":I
    new-instance v5, Landroidx/compose/material3/TooltipStateImpl;

    .line 519
    nop

    .line 520
    nop

    .line 521
    nop

    .line 518
    invoke-direct {v5, p0, p1, p2}, Landroidx/compose/material3/TooltipStateImpl;-><init>(ZZLandroidx/compose/foundation/MutatorMutex;)V

    .line 734
    .end local v4    # "$i$a$-cache-TooltipKt$rememberTooltipState$1":I
    move-object v4, v5

    .line 735
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 736
    nop

    .line 733
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 732
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 514
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v1    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v4, Landroidx/compose/material3/TooltipStateImpl;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Landroidx/compose/material3/TooltipState;

    return-object v4
.end method

.method private static final textVerticalPadding(Landroidx/compose/ui/Modifier;ZZ)Landroidx/compose/ui/Modifier;
    .locals 11
    .param p0, "$this$textVerticalPadding"    # Landroidx/compose/ui/Modifier;
    .param p1, "subheadExists"    # Z
    .param p2, "actionExists"    # Z

    .line 639
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 640
    sget v2, Landroidx/compose/material3/TooltipKt;->PlainTooltipVerticalPadding:F

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 642
    :cond_0
    nop

    .line 643
    sget v2, Landroidx/compose/material3/TooltipKt;->HeightFromSubheadToTextFirstLine:F

    const/4 v3, 0x2

    invoke-static {p0, v2, v1, v3, v0}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFromBaseline-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 644
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Landroidx/compose/material3/TooltipKt;->TextBottomPadding:F

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0
.end method
