.class public final Landroidx/compose/material3/NavigationRailKt;
.super Ljava/lang/Object;
.source "NavigationRail.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material3/NavigationRailKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,742:1\n1116#2,6:743\n1116#2,6:781\n1116#2,6:787\n1116#2,6:798\n1116#2,6:875\n72#3,2:749\n74#3:779\n78#3:797\n68#3,6:835\n74#3:869\n78#3:874\n68#3,6:881\n74#3:915\n78#3:920\n78#4,11:751\n91#4:796\n75#4,14:804\n78#4,11:841\n91#4:873\n78#4,11:887\n91#4:919\n91#4:924\n456#5,8:762\n464#5,3:776\n467#5,3:793\n456#5,8:818\n464#5,3:832\n456#5,8:852\n464#5,3:866\n467#5,3:870\n456#5,8:898\n464#5,3:912\n467#5,3:916\n467#5,3:921\n3737#6,6:770\n3737#6,6:826\n3737#6,6:860\n3737#6,6:906\n74#7:780\n154#8:925\n154#8:926\n154#8:927\n58#9:928\n75#9:929\n58#9:930\n75#9:931\n58#9:932\n75#9:933\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material3/NavigationRailKt\n*L\n174#1:743,6\n226#1:781,6\n268#1:787,6\n517#1:798,6\n514#1:875,6\n197#1:749,2\n197#1:779\n197#1:797\n508#1:835,6\n508#1:869\n508#1:874\n511#1:881,6\n511#1:915\n511#1:920\n197#1:751,11\n197#1:796\n504#1:804,14\n508#1:841,11\n508#1:873\n511#1:887,11\n511#1:919\n504#1:924\n197#1:762,8\n197#1:776,3\n197#1:793,3\n504#1:818,8\n504#1:832,3\n508#1:852,8\n508#1:866,3\n508#1:870,3\n511#1:898,8\n511#1:912,3\n511#1:916,3\n504#1:921,3\n197#1:770,6\n504#1:826,6\n508#1:860,6\n511#1:906,6\n221#1:780\n712#1:925\n718#1:926\n732#1:927\n735#1:928\n735#1:929\n738#1:930\n738#1:931\n741#1:932\n741#1:933\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u001az\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b2 \u0008\u0002\u0010\u001d\u001a\u001a\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001e\u00a2\u0006\u0002\u0008 \u00a2\u0006\u0002\u0008!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u001c\u0010$\u001a\u0018\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00170\u001e\u00a2\u0006\u0002\u0008 \u00a2\u0006\u0002\u0008!H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001a\u007f\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00170+2\u0011\u0010,\u001a\r\u0012\u0004\u0012\u00020\u00170+\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010+\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u0010/\u001a\u00020)2\u0008\u0008\u0002\u00100\u001a\u0002012\u0008\u0008\u0002\u00102\u001a\u000203H\u0007\u00a2\u0006\u0002\u00104\u001aq\u00105\u001a\u00020\u00172\u0011\u00106\u001a\r\u0012\u0004\u0012\u00020\u00170+\u00a2\u0006\u0002\u0008 2\u0011\u00107\u001a\r\u0012\u0004\u0012\u00020\u00170+\u00a2\u0006\u0002\u0008 2\u0011\u0010,\u001a\r\u0012\u0004\u0012\u00020\u00170+\u00a2\u0006\u0002\u0008 2\u0013\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010+\u00a2\u0006\u0002\u0008 2\u0006\u0010/\u001a\u00020)2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002090+H\u0003\u00a2\u0006\u0002\u0010:\u001a8\u0010;\u001a\u00020<*\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020?2\u0008\u0010A\u001a\u0004\u0018\u00010?2\u0006\u0010B\u001a\u00020CH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010E\u001aP\u0010F\u001a\u00020<*\u00020=2\u0006\u0010G\u001a\u00020?2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020?2\u0008\u0010A\u001a\u0004\u0018\u00010?2\u0006\u0010B\u001a\u00020C2\u0006\u0010/\u001a\u00020)2\u0006\u00108\u001a\u000209H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010I\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0016\u0010\r\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u000f\"\u0016\u0010\u0010\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u000f\"\u0016\u0010\u0012\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u000f\"\u0016\u0010\u0014\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0015\u0010\u000f\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006J\u00b2\u0006\n\u0010K\u001a\u00020\u001bX\u008a\u0084\u0002\u00b2\u0006\n\u0010L\u001a\u00020\u001bX\u008a\u0084\u0002"
    }
    d2 = {
        "IconLayoutIdTag",
        "",
        "IndicatorHorizontalPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "IndicatorLayoutIdTag",
        "IndicatorRippleLayoutIdTag",
        "IndicatorVerticalPaddingNoLabel",
        "IndicatorVerticalPaddingWithLabel",
        "ItemAnimationDurationMillis",
        "",
        "LabelLayoutIdTag",
        "NavigationRailHeaderPadding",
        "NavigationRailItemHeight",
        "getNavigationRailItemHeight",
        "()F",
        "NavigationRailItemVerticalPadding",
        "getNavigationRailItemVerticalPadding",
        "NavigationRailItemWidth",
        "getNavigationRailItemWidth",
        "NavigationRailVerticalPadding",
        "getNavigationRailVerticalPadding",
        "NavigationRail",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "header",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "content",
        "NavigationRail-qi6gXK8",
        "(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "NavigationRailItem",
        "selected",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "icon",
        "enabled",
        "label",
        "alwaysShowLabel",
        "colors",
        "Landroidx/compose/material3/NavigationRailItemColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "NavigationRailItemLayout",
        "indicatorRipple",
        "indicator",
        "animationProgress",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "placeIcon",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "iconPlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "indicatorRipplePlaceable",
        "indicatorPlaceable",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "placeIcon-X9ElhV4",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "placeLabelAndIcon",
        "labelPlaceable",
        "placeLabelAndIcon-zUg2_y0",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;",
        "material3_release",
        "iconColor",
        "textColor"
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
.field private static final IconLayoutIdTag:Ljava/lang/String; = "icon"

.field private static final IndicatorHorizontalPadding:F

.field private static final IndicatorLayoutIdTag:Ljava/lang/String; = "indicator"

.field private static final IndicatorRippleLayoutIdTag:Ljava/lang/String; = "indicatorRipple"

.field private static final IndicatorVerticalPaddingNoLabel:F

.field private static final IndicatorVerticalPaddingWithLabel:F

.field private static final ItemAnimationDurationMillis:I = 0x96

.field private static final LabelLayoutIdTag:Ljava/lang/String; = "label"

.field private static final NavigationRailHeaderPadding:F

.field private static final NavigationRailItemHeight:F

.field private static final NavigationRailItemVerticalPadding:F

.field private static final NavigationRailItemWidth:F

.field private static final NavigationRailVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 712
    const/4 v0, 0x4

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 925
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 712
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailVerticalPadding:F

    .line 718
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 926
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 718
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailHeaderPadding:F

    .line 724
    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getContainerWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemWidth:F

    .line 728
    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getNoLabelActiveIndicatorHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemHeight:F

    .line 732
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 927
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 732
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemVerticalPadding:F

    .line 735
    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v0

    .local v0, "arg0$iv":F
    sget-object v1, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 928
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 735
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 929
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 735
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorHorizontalPadding:F

    .line 738
    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getActiveIndicatorHeight-D9Ej5fM()F

    move-result v0

    .restart local v0    # "arg0$iv":F
    sget-object v1, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 930
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 738
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 931
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 738
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingWithLabel:F

    .line 741
    sget-object v0, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getNoLabelActiveIndicatorHeight-D9Ej5fM()F

    move-result v0

    .restart local v0    # "arg0$iv":F
    sget-object v1, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 932
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 741
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 933
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 741
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingNoLabel:F

    return-void
.end method

.method public static final NavigationRail-qi6gXK8(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "containerColor"    # J
    .param p3, "contentColor"    # J
    .param p5, "header"    # Lkotlin/jvm/functions/Function3;
    .param p6, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    .line 112
    move-object/from16 v11, p7

    move/from16 v12, p9

    const v0, 0x710f848

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationRail)P(4,0:c#ui.graphics.Color,2:c#ui.graphics.Color,3,5)106@4973L14,107@5015L31,109@5162L12,112@5232L748:NavigationRail.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

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
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_5

    and-int/lit8 v4, p10, 0x2

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
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p10, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p3

    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

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
    and-int/lit8 v8, p10, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    move-object/from16 v9, p5

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v1, v13

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :goto_7
    and-int/lit16 v13, v12, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, p10, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p6

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p6

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p6

    :goto_9
    and-int/lit8 v14, p10, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v1, v15

    goto :goto_b

    :cond_f
    and-int v14, v12, v15

    if-nez v14, :cond_11

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    :cond_11
    :goto_b
    const v14, 0x12493

    and-int/2addr v14, v1

    const v15, 0x12492

    if-ne v14, v15, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_c

    .line 135
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, v1

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v13

    move-object v13, v3

    goto/16 :goto_13

    .line 112
    :cond_13
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v14, v12, 0x1

    const v15, -0xe001

    if-eqz v14, :cond_18

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_d

    .line 110
    :cond_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_15

    and-int/lit8 v1, v1, -0x71

    :cond_15
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_16

    and-int/lit16 v1, v1, -0x381

    :cond_16
    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_17

    and-int/2addr v1, v15

    :cond_17
    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v9

    move-object v8, v13

    goto :goto_12

    .line 112
    :cond_18
    :goto_d
    if-eqz v2, :cond_19

    .line 106
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 112
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_19
    move-object v2, v3

    .line 106
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v3, p10, 0x2

    const/4 v14, 0x6

    if-eqz v3, :cond_1a

    .line 107
    sget-object v3, Landroidx/compose/material3/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/NavigationRailDefaults;

    invoke-virtual {v3, v10, v14}, Landroidx/compose/material3/NavigationRailDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p1    # "containerColor":J
    .local v3, "containerColor":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_f

    .line 106
    .end local v3    # "containerColor":J
    .restart local p1    # "containerColor":J
    :cond_1a
    move-wide v3, v4

    .line 107
    .end local p1    # "containerColor":J
    .restart local v3    # "containerColor":J
    :goto_f
    and-int/lit8 v5, p10, 0x4

    if-eqz v5, :cond_1b

    .line 108
    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v5, v5, 0xe

    invoke-static {v3, v4, v10, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .end local p3    # "contentColor":J
    .local v5, "contentColor":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_10

    .line 107
    .end local v5    # "contentColor":J
    .restart local p3    # "contentColor":J
    :cond_1b
    move-wide v5, v6

    .line 108
    .end local p3    # "contentColor":J
    .restart local v5    # "contentColor":J
    :goto_10
    if-eqz v8, :cond_1c

    .line 109
    const/4 v7, 0x0

    .end local p5    # "header":Lkotlin/jvm/functions/Function3;
    .local v7, "header":Lkotlin/jvm/functions/Function3;
    goto :goto_11

    .line 108
    .end local v7    # "header":Lkotlin/jvm/functions/Function3;
    .restart local p5    # "header":Lkotlin/jvm/functions/Function3;
    :cond_1c
    move-object v7, v9

    .line 109
    .end local p5    # "header":Lkotlin/jvm/functions/Function3;
    .restart local v7    # "header":Lkotlin/jvm/functions/Function3;
    :goto_11
    and-int/lit8 v8, p10, 0x10

    if-eqz v8, :cond_1d

    .line 110
    sget-object v8, Landroidx/compose/material3/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/NavigationRailDefaults;

    invoke-virtual {v8, v10, v14}, Landroidx/compose/material3/NavigationRailDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v8

    .end local p6    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v8, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    and-int/2addr v1, v15

    goto :goto_12

    .line 109
    .end local v8    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local p6    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :cond_1d
    move-object v8, v13

    .line 110
    .end local p6    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local v8    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 112
    const/4 v9, -0x1

    const-string/jumbo v13, "androidx.compose.material3.NavigationRail (NavigationRail.kt:111)"

    invoke-static {v0, v1, v9, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 116
    :cond_1e
    const/4 v14, 0x0

    .line 114
    nop

    .line 115
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 117
    new-instance v0, Landroidx/compose/material3/NavigationRailKt$NavigationRail$1;

    invoke-direct {v0, v8, v7, v11}, Landroidx/compose/material3/NavigationRailKt$NavigationRail$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    const v9, -0x7cbbd05d

    const/4 v13, 0x1

    invoke-static {v10, v9, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, v1, 0xe

    const/high16 v9, 0xc00000

    or-int/2addr v0, v9

    shl-int/lit8 v9, v1, 0x3

    and-int/lit16 v9, v9, 0x380

    or-int/2addr v0, v9

    shl-int/lit8 v9, v1, 0x3

    and-int/lit16 v9, v9, 0x1c00

    or-int v24, v0, v9

    const/16 v25, 0x72

    .line 113
    move-object v13, v2

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-object/from16 v23, v10

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 135
    :cond_1f
    move/from16 v20, v1

    move-object v13, v2

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "containerColor":J
    .end local v5    # "contentColor":J
    .end local v7    # "header":Lkotlin/jvm/functions/Function3;
    .end local v8    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "containerColor":J
    .local v16, "contentColor":J
    .local v18, "header":Lkotlin/jvm/functions/Function3;
    .local v19, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v20, "$dirty":I
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_20

    new-instance v21, Landroidx/compose/material3/NavigationRailKt$NavigationRail$2;

    move-object/from16 v0, v21

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, p7

    move-object v11, v9

    move/from16 v9, p9

    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/NavigationRailKt$NavigationRail$2;-><init>(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_20
    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14
    return-void
.end method

.method public static final NavigationRailItem(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 50
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "enabled"    # Z
    .param p5, "label"    # Lkotlin/jvm/functions/Function2;
    .param p6, "alwaysShowLabel"    # Z
    .param p7, "colors"    # Landroidx/compose/material3/NavigationRailItemColors;
    .param p8, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
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
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/NavigationRailItemColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 175
    move/from16 v12, p0

    move/from16 v13, p10

    move/from16 v11, p11

    const v0, -0x5b6e8a65

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationRailItem)P(8,7,3,6,2,5)172@7762L8,173@7822L39,196@8797L2874:NavigationRail.kt#uh7d8r"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v15, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x30

    if-nez v2, :cond_5

    move-object/from16 v15, p1

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v15, p1

    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v10, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_8

    move-object/from16 v10, p2

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    goto :goto_5

    :cond_8
    move-object/from16 v10, p2

    :goto_5
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, v11, 0x10

    if-eqz v5, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v13, 0x6000

    if-nez v6, :cond_e

    move/from16 v6, p4

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    and-int/lit8 v7, v11, 0x20

    const/high16 v8, 0x30000

    if-eqz v7, :cond_f

    or-int/2addr v1, v8

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int/2addr v8, v13

    if-nez v8, :cond_11

    move-object/from16 v8, p5

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v1, v9

    goto :goto_b

    :cond_11
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v9, v11, 0x40

    const/high16 v16, 0x180000

    if-eqz v9, :cond_12

    or-int v1, v1, v16

    move/from16 v3, p6

    goto :goto_d

    :cond_12
    and-int v16, v13, v16

    if-nez v16, :cond_14

    move/from16 v3, p6

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v3, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v13, v17

    if-nez v17, :cond_17

    and-int/lit16 v0, v11, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_17
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_18

    or-int v1, v1, v18

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v18, v13, v18

    if-nez v18, :cond_1a

    move-object/from16 v3, p8

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p8

    :goto_11
    const v18, 0x2492493

    and-int v3, v1, v18

    const v4, 0x2492492

    if-ne v3, v4, :cond_1c

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    .line 271
    :cond_1b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v12, p3

    move/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v37, p8

    move/from16 v18, v1

    move v13, v6

    move-object v15, v8

    goto/16 :goto_26

    .line 175
    :cond_1c
    :goto_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v13, 0x1

    const-string v4, "CC(remember):NavigationRail.kt#9igjgp"

    const/4 v6, 0x6

    if-eqz v3, :cond_1f

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_13

    .line 174
    :cond_1d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_1e

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_1e
    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v7, p6

    move-object/from16 v0, p8

    move-object v5, v8

    move-object/from16 v8, p7

    goto/16 :goto_1a

    .line 175
    :cond_1f
    :goto_13
    if-eqz v2, :cond_20

    .line 169
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 175
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_20
    move-object/from16 v2, p3

    .line 169
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v5, :cond_21

    .line 170
    const/4 v3, 0x1

    .end local p4    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_15

    .line 169
    .end local v3    # "enabled":Z
    .restart local p4    # "enabled":Z
    :cond_21
    move/from16 v3, p4

    .line 170
    .end local p4    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_15
    if-eqz v7, :cond_22

    .line 171
    const/4 v5, 0x0

    .end local p5    # "label":Lkotlin/jvm/functions/Function2;
    .local v5, "label":Lkotlin/jvm/functions/Function2;
    goto :goto_16

    .line 170
    .end local v5    # "label":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "label":Lkotlin/jvm/functions/Function2;
    :cond_22
    move-object v5, v8

    .line 171
    .end local p5    # "label":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "label":Lkotlin/jvm/functions/Function2;
    :goto_16
    if-eqz v9, :cond_23

    .line 172
    const/4 v7, 0x1

    .end local p6    # "alwaysShowLabel":Z
    .local v7, "alwaysShowLabel":Z
    goto :goto_17

    .line 171
    .end local v7    # "alwaysShowLabel":Z
    .restart local p6    # "alwaysShowLabel":Z
    :cond_23
    move/from16 v7, p6

    .line 172
    .end local p6    # "alwaysShowLabel":Z
    .restart local v7    # "alwaysShowLabel":Z
    :goto_17
    and-int/lit16 v8, v11, 0x80

    if-eqz v8, :cond_24

    .line 173
    sget-object v8, Landroidx/compose/material3/NavigationRailItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationRailItemDefaults;

    invoke-virtual {v8, v14, v6}, Landroidx/compose/material3/NavigationRailItemDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/NavigationRailItemColors;

    move-result-object v8

    .end local p7    # "colors":Landroidx/compose/material3/NavigationRailItemColors;
    .local v8, "colors":Landroidx/compose/material3/NavigationRailItemColors;
    const v9, -0x1c00001

    and-int/2addr v1, v9

    goto :goto_18

    .line 172
    .end local v8    # "colors":Landroidx/compose/material3/NavigationRailItemColors;
    .restart local p7    # "colors":Landroidx/compose/material3/NavigationRailItemColors;
    :cond_24
    move-object/from16 v8, p7

    .line 173
    .end local p7    # "colors":Landroidx/compose/material3/NavigationRailItemColors;
    .restart local v8    # "colors":Landroidx/compose/material3/NavigationRailItemColors;
    :goto_18
    if-eqz v0, :cond_26

    .line 174
    const v0, -0x6499fd0e

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v9, v14

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 743
    .local v18, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 744
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_25

    .line 745
    const/4 v0, 0x0

    .line 174
    .local v0, "$i$a$-cache-NavigationRailKt$NavigationRailItem$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 745
    .end local v0    # "$i$a$-cache-NavigationRailKt$NavigationRailItem$1":I
    nop

    .line 746
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 747
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_19

    .line 748
    :cond_25
    move-object v0, v6

    .line 744
    :goto_19
    nop

    .line 743
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 174
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_1a

    .line 173
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_26
    move-object/from16 v0, p8

    .line 174
    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_1a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 175
    const/4 v6, -0x1

    const-string/jumbo v9, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:174)"

    const v10, -0x5b6e8a65

    invoke-static {v10, v1, v6, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 176
    :cond_27
    new-instance v6, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$styledIcon$1;

    move-object/from16 p3, v6

    move-object/from16 p4, v8

    move/from16 p5, p0

    move/from16 p6, v3

    move-object/from16 p7, v5

    move/from16 p8, v7

    move-object/from16 p9, p2

    invoke-direct/range {p3 .. p9}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$styledIcon$1;-><init>(Landroidx/compose/material3/NavigationRailItemColors;ZZLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;)V

    const v9, -0x3cff324b

    const/4 v10, 0x1

    invoke-static {v14, v9, v10, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 185
    .local v6, "styledIcon":Lkotlin/jvm/functions/Function2;
    if-eqz v5, :cond_28

    move-object/from16 v17, v5

    .local v17, "it":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 186
    .local v18, "$i$a$-let-NavigationRailKt$NavigationRailItem$styledLabel$1":I
    new-instance v9, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$styledLabel$1$1;

    invoke-direct {v9, v8, v12, v3, v5}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$styledLabel$1$1;-><init>(Landroidx/compose/material3/NavigationRailItemColors;ZZLkotlin/jvm/functions/Function2;)V

    const v11, -0x646495f

    invoke-static {v14, v11, v10, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 185
    .end local v17    # "it":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$a$-let-NavigationRailKt$NavigationRailItem$styledLabel$1":I
    move-object/from16 v23, v9

    goto :goto_1b

    :cond_28
    const/16 v23, 0x0

    .line 203
    .local v23, "styledLabel":Lkotlin/jvm/functions/Function2;
    :goto_1b
    sget-object v9, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v9

    .line 198
    nop

    .line 200
    nop

    .line 204
    nop

    .line 205
    const/4 v11, 0x0

    .line 202
    nop

    .line 203
    invoke-static {v9}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v9

    .line 201
    nop

    .line 199
    move-object/from16 p3, v2

    move/from16 p4, p0

    move-object/from16 p5, v0

    move-object/from16 p6, v11

    move/from16 p7, v3

    move-object/from16 p8, v9

    move-object/from16 p9, p1

    invoke-static/range {p3 .. p9}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 207
    sget v11, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemHeight:F

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p3, "modifier":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    move/from16 p4, v3

    const/4 v3, 0x0

    .end local v3    # "enabled":Z
    .restart local p4    # "enabled":Z
    invoke-static {v9, v2, v11, v10, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 208
    sget v11, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemWidth:F

    const/4 v10, 0x2

    invoke-static {v9, v11, v2, v10, v3}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 209
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 210
    nop

    .line 197
    nop

    .local v9, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v10, 0x1

    .local v3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move v11, v10

    .local v11, "propagateMinConstraints$iv":Z
    const/16 v10, 0x1b0

    .local v10, "$changed$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$Box":I
    const v2, 0x2bb5b5d7

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 749
    shr-int/lit8 v2, v10, 0x3

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v18, v10, 0x3

    and-int/lit8 v18, v18, 0x70

    or-int v2, v2, v18

    invoke-static {v3, v11, v14, v2}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v18, v10, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 750
    nop

    .local v18, "$changed$iv$iv":I
    const/16 v28, 0x0

    move-object/from16 p7, v3

    .end local v3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v28, "$i$f$Layout":I
    .local p7, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v3, -0x4ee9b9da

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 751
    const/4 v3, 0x0

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v29

    .line 752
    .local v29, "compositeKeyHash$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 754
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    .line 761
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v22

    move-object/from16 p9, v9

    .end local v9    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p9, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v9, v18, 0x9

    and-int/lit16 v9, v9, 0x1c00

    const/16 v19, 0x6

    or-int/lit8 v9, v9, 0x6

    .line 753
    move-object/from16 v30, v21

    .local v30, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v31, v22

    .local v9, "$changed$iv$iv$iv":I
    .local v31, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v32, 0x0

    .line 762
    .local v32, "$i$f$ReusableComposeNode":I
    move/from16 v33, v11

    .end local v11    # "propagateMinConstraints$iv":Z
    .local v33, "propagateMinConstraints$iv":Z
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-nez v11, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 763
    :cond_29
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 764
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 765
    move-object/from16 v11, v30

    .end local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v11, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    .line 767
    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2a
    move-object/from16 v11, v30

    .end local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 769
    :goto_1c
    move-object/from16 v30, v11

    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .local v11, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 756
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v11, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 757
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v11, v3, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 759
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    .local v13, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 770
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v11

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 771
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_2c

    move-object/from16 v34, v2

    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v34, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v35, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_1d

    :cond_2b
    move-object/from16 v3, v24

    goto :goto_1e

    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_2c
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    .line 772
    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_1d
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 773
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2, v13}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 775
    :goto_1e
    nop

    .line 770
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 775
    nop

    .line 760
    .end local v13    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 769
    .end local v11    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 776
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v9, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v11, v31

    .end local v31    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v11, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v11, v2, v14, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const v2, 0x7ab4aae9

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 778
    shr-int/lit8 v2, v9, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object v3, v14

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 779
    .local v13, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v31, v2

    .end local v2    # "$changed$iv":I
    .local v31, "$changed$iv":I
    const v2, -0x4ab8dd4f

    move/from16 v36, v9

    .end local v9    # "$changed$iv$iv$iv":I
    .local v36, "$changed$iv$iv$iv":I
    const-string v9, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v3, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v9, v10, 0x6

    and-int/lit8 v9, v9, 0x70

    const/16 v19, 0x6

    or-int/lit8 v9, v9, 0x6

    .local v9, "$changed":I
    check-cast v2, Landroidx/compose/foundation/layout/BoxScope;

    .local v2, "$this$NavigationRailItem_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v45, v3

    .local v45, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 212
    .local v46, "$i$a$-Box-NavigationRailKt$NavigationRailItem$2":I
    move-object/from16 v47, v2

    .end local v2    # "$this$NavigationRailItem_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    .local v47, "$this$NavigationRailItem_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    const v2, 0x41d594e1

    move/from16 v48, v9

    .end local v9    # "$changed":I
    .local v48, "$changed":I
    const-string v9, "C211@9346L145,*220@9775L7,225@10066L120,267@11627L27,261@11376L289:NavigationRail.kt#uh7d8r"

    move/from16 v49, v10

    move-object/from16 v10, v45

    .end local v45    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v49, "$changed$iv":I
    invoke-static {v10, v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 213
    if-eqz v12, :cond_2d

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v37, v2

    goto :goto_1f

    :cond_2d
    const/16 v37, 0x0

    .line 214
    :goto_1f
    const/16 v2, 0x96

    move-object/from16 v45, v11

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    .end local v11    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v45, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v2, v9, v11, v12, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroidx/compose/animation/core/AnimationSpec;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x30

    const/16 v44, 0x1c

    .line 212
    move-object/from16 v42, v10

    invoke-static/range {v37 .. v44}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 220
    .local v2, "animationProgress":Landroidx/compose/runtime/State;
    const-wide/16 v11, 0x0

    .line 221
    .local v11, "deltaOffset":J
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v21

    move-object/from16 v9, v21

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v21, 0x0

    .local v21, "$changed$iv":I
    const/16 v22, 0x0

    .line 780
    .local v22, "$i$f$getCurrent":I
    move-wide/from16 v24, v11

    .end local v11    # "deltaOffset":J
    .local v24, "deltaOffset":J
    const v11, 0x789c5f52

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 221
    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v21    # "$changed$iv":I
    .end local v22    # "$i$f$getCurrent":I
    move-object v9, v11

    check-cast v9, Landroidx/compose/ui/unit/Density;

    .local v9, "$this$NavigationRailItem_u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    const/4 v11, 0x0

    .line 222
    .local v11, "$i$a$-with-NavigationRailKt$NavigationRailItem$2$1":I
    sget v12, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemWidth:F

    invoke-interface {v9, v12}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v12

    .line 223
    .local v12, "itemWidth":I
    sget-object v21, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    move/from16 v22, v11

    .end local v11    # "$i$a$-with-NavigationRailKt$NavigationRailItem$2$1":I
    .local v22, "$i$a$-with-NavigationRailKt$NavigationRailItem$2$1":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v11

    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v11

    .line 224
    .local v11, "indicatorWidth":I
    move-object/from16 v21, v9

    .end local v9    # "$this$NavigationRailItem_u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    .local v21, "$this$NavigationRailItem_u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    sub-int v9, v12, v11

    int-to-float v9, v9

    move/from16 v26, v11

    const/4 v11, 0x2

    .end local v11    # "indicatorWidth":I
    .local v26, "indicatorWidth":I
    int-to-float v11, v11

    div-float/2addr v9, v11

    move/from16 p6, v12

    const/4 v11, 0x0

    .end local v12    # "itemWidth":I
    .local p6, "itemWidth":I
    invoke-static {v9, v11}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    .line 225
    .end local v24    # "deltaOffset":J
    .local v11, "deltaOffset":J
    nop

    .end local v21    # "$this$NavigationRailItem_u24lambda_u245_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    .end local v22    # "$i$a$-with-NavigationRailKt$NavigationRailItem$2$1":I
    .end local v26    # "indicatorWidth":I
    .end local p6    # "itemWidth":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 221
    const v9, 0x41d597d7

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v9, 0xe000000

    and-int/2addr v9, v1

    move/from16 p6, v13

    .end local v13    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local p6, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const/high16 v13, 0x4000000

    if-ne v9, v13, :cond_2e

    const/4 v9, 0x1

    goto :goto_20

    :cond_2e
    const/4 v9, 0x0

    .line 226
    :goto_20
    invoke-interface {v14, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    or-int/2addr v9, v13

    .local v9, "invalid$iv":Z
    move-object v13, v10

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 781
    .local v16, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 782
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v9, :cond_30

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v9

    .end local v9    # "invalid$iv":Z
    .local p8, "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v15, v9, :cond_2f

    goto :goto_21

    .line 786
    :cond_2f
    move-object/from16 v37, v0

    move-object v0, v15

    move-object/from16 v24, v0

    goto :goto_22

    .line 782
    .end local p8    # "invalid$iv":Z
    .restart local v9    # "invalid$iv":Z
    :cond_30
    move/from16 p8, v9

    .line 783
    .end local v9    # "invalid$iv":Z
    .restart local p8    # "invalid$iv":Z
    :goto_21
    const/4 v9, 0x0

    .line 227
    .local v9, "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$offsetInteractionSource$1":I
    move/from16 v22, v9

    .end local v9    # "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$offsetInteractionSource$1":I
    .local v22, "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$offsetInteractionSource$1":I
    new-instance v9, Landroidx/compose/material3/MappedInteractionSource;

    move-object/from16 v24, v15

    .end local v15    # "it$iv":Ljava/lang/Object;
    .local v24, "it$iv":Ljava/lang/Object;
    move-object v15, v0

    check-cast v15, Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 v37, v0

    const/4 v0, 0x0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v37, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-direct {v9, v15, v11, v12, v0}, Landroidx/compose/material3/MappedInteractionSource;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 783
    .end local v22    # "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$offsetInteractionSource$1":I
    move-object v0, v9

    .line 784
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 785
    nop

    .line 782
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 781
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v24    # "it$iv":Ljava/lang/Object;
    nop

    .line 226
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p8    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/material3/MappedInteractionSource;

    .local v0, "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 230
    if-eqz v5, :cond_31

    const v9, 0x41d59881

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "230@10292L5"

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 231
    sget-object v9, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v9}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getActiveIndicatorShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v9

    const/4 v13, 0x6

    invoke-static {v9, v10, v13}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    .line 230
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_23

    .line 232
    :cond_31
    const v9, 0x41d598ce

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "232@10376L5"

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 233
    sget-object v9, Landroidx/compose/material3/tokens/NavigationRailTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailTokens;

    invoke-virtual {v9}, Landroidx/compose/material3/tokens/NavigationRailTokens;->getNoLabelActiveIndicatorShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v9

    const/4 v13, 0x6

    invoke-static {v9, v10, v13}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    .line 232
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 230
    :goto_23
    nop

    .line 238
    .local v9, "indicatorShape":Landroidx/compose/ui/graphics/Shape;
    new-instance v13, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$2$indicatorRipple$1;

    invoke-direct {v13, v9, v0}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$2$indicatorRipple$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/MappedInteractionSource;)V

    const v15, 0xc9401ce

    move-object/from16 p8, v0

    const/4 v0, 0x1

    .end local v0    # "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    .local p8, "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    invoke-static {v10, v15, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 250
    .local v13, "indicatorRipple":Lkotlin/jvm/functions/Function2;
    new-instance v15, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$2$indicator$1;

    invoke-direct {v15, v2, v8, v9}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$2$indicator$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/ui/graphics/Shape;)V

    move-object/from16 p5, v5

    .end local v5    # "label":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "label":Lkotlin/jvm/functions/Function2;
    const v5, -0x6efc0a62

    invoke-static {v10, v5, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 263
    .local v0, "indicator":Lkotlin/jvm/functions/Function2;
    nop

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    const v5, 0x41d59df0

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 268
    nop

    .local v4, "invalid$iv":Z
    move-object v5, v10

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 787
    .local v15, "$i$f$cache":I
    move-object/from16 v16, v8

    .end local v8    # "colors":Landroidx/compose/material3/NavigationRailItemColors;
    .local v16, "colors":Landroidx/compose/material3/NavigationRailItemColors;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 788
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_33

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v21, v4

    .end local v4    # "invalid$iv":Z
    .local v21, "invalid$iv":Z
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v8, v4, :cond_32

    goto :goto_24

    .line 792
    :cond_32
    move-object v4, v8

    goto :goto_25

    .line 788
    .end local v21    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_33
    move/from16 v21, v4

    .line 789
    .end local v4    # "invalid$iv":Z
    .restart local v21    # "invalid$iv":Z
    :goto_24
    const/4 v4, 0x0

    .line 268
    .local v4, "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$2":I
    move/from16 v20, v4

    .end local v4    # "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$2":I
    .local v20, "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$2":I
    new-instance v4, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$2$2$1;

    invoke-direct {v4, v2}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$2$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 789
    .end local v20    # "$i$a$-cache-NavigationRailKt$NavigationRailItem$2$2":I
    nop

    .line 790
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 791
    nop

    .line 788
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_25
    nop

    .line 787
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 268
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    .end local v21    # "invalid$iv":Z
    move-object/from16 v25, v4

    check-cast v25, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v4, v1, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x1b6

    .line 262
    move-object/from16 v20, v13

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move/from16 v24, v7

    move-object/from16 v26, v10

    move/from16 v27, v4

    invoke-static/range {v20 .. v27}, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 212
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 270
    .end local v0    # "indicator":Lkotlin/jvm/functions/Function2;
    .end local v2    # "animationProgress":Landroidx/compose/runtime/State;
    .end local v9    # "indicatorShape":Landroidx/compose/ui/graphics/Shape;
    .end local v11    # "deltaOffset":J
    .end local v13    # "indicatorRipple":Lkotlin/jvm/functions/Function2;
    .end local p8    # "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    nop

    .line 779
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v46    # "$i$a$-Box-NavigationRailKt$NavigationRailItem$2":I
    .end local v47    # "$this$NavigationRailItem_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    .end local v48    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 778
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$changed$iv":I
    .end local p6    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 793
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 794
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 795
    nop

    .end local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v32    # "$i$f$ReusableComposeNode":I
    .end local v36    # "$changed$iv$iv$iv":I
    .end local v45    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 796
    nop

    .end local v18    # "$changed$iv$iv":I
    .end local v28    # "$i$f$Layout":I
    .end local v29    # "compositeKeyHash$iv$iv":I
    .end local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 797
    nop

    .end local v17    # "$i$f$Box":I
    .end local v33    # "propagateMinConstraints$iv":Z
    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v49    # "$changed$iv":I
    .end local p7    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local p9    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 271
    .end local v6    # "styledIcon":Lkotlin/jvm/functions/Function2;
    .end local v23    # "styledLabel":Lkotlin/jvm/functions/Function2;
    :cond_34
    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v15, p5

    move/from16 v18, v1

    move-object/from16 v17, v16

    move/from16 v16, v7

    .end local v1    # "$dirty":I
    .end local v7    # "alwaysShowLabel":Z
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p4    # "enabled":Z
    .end local p5    # "label":Lkotlin/jvm/functions/Function2;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "enabled":Z
    .local v15, "label":Lkotlin/jvm/functions/Function2;
    .local v16, "alwaysShowLabel":Z
    .local v17, "colors":Landroidx/compose/material3/NavigationRailItemColors;
    .local v18, "$dirty":I
    :goto_26
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_35

    new-instance v19, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$3;

    move-object/from16 v0, v19

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move v5, v13

    move-object v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v37

    move/from16 v10, p10

    move-object/from16 p3, v12

    move-object v12, v11

    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItem$3;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_27

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v12    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_35
    move-object/from16 p3, v12

    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_27
    return-void
.end method

.method private static final NavigationRailItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 55
    .param p0, "indicatorRipple"    # Lkotlin/jvm/functions/Function2;
    .param p1, "indicator"    # Lkotlin/jvm/functions/Function2;
    .param p2, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p3, "label"    # Lkotlin/jvm/functions/Function2;
    .param p4, "alwaysShowLabel"    # Z
    .param p5, "animationProgress"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
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
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 503
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p7

    const v0, 0x594fc274

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationRailItemLayout)P(4,3,2,5)516@22576L2124,503@22202L2498:NavigationRail.kt#uh7d8r"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v14, 0x30

    if-nez v2, :cond_3

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v14, 0x180

    if-nez v2, :cond_5

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v14, 0xc00

    const/16 v3, 0x800

    if-nez v2, :cond_7

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v14, 0x6000

    const/16 v4, 0x4000

    if-nez v2, :cond_9

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v14

    const/high16 v5, 0x20000

    if-nez v2, :cond_b

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    goto :goto_5

    :cond_a
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    :cond_b
    move v7, v1

    .end local v1    # "$dirty":I
    .local v7, "$dirty":I
    const v1, 0x12493

    and-int/2addr v1, v7

    const v2, 0x12492

    if-ne v1, v2, :cond_d

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 573
    :cond_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_19

    .line 503
    :cond_d
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.NavigationRailItemLayout (NavigationRail.kt:502)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_e
    const v0, -0x2ce89c76

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):NavigationRail.kt#9igjgp"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v1, 0x70000

    and-int v2, v7, v1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    move v2, v6

    :goto_7
    and-int/lit16 v5, v7, 0x1c00

    if-ne v5, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    move v3, v6

    :goto_8
    or-int/2addr v2, v3

    const v3, 0xe000

    and-int v5, v7, v3

    if-ne v5, v4, :cond_11

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    move v5, v6

    :goto_9
    or-int/2addr v2, v5

    .line 517
    nop

    .local v2, "invalid$iv":Z
    move-object v5, v15

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 798
    .local v17, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 799
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_13

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_12

    goto :goto_a

    .line 803
    :cond_12
    move-object v3, v1

    goto :goto_b

    .line 800
    :cond_13
    :goto_a
    const/4 v4, 0x0

    .line 517
    .local v4, "$i$a$-cache-NavigationRailKt$NavigationRailItemLayout$2":I
    new-instance v3, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemLayout$2$1;

    invoke-direct {v3, v13, v11, v12}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemLayout$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Z)V

    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 800
    .end local v4    # "$i$a$-cache-NavigationRailKt$NavigationRailItemLayout$2":I
    nop

    .line 801
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 802
    nop

    .line 799
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 798
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 517
    .end local v2    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 504
    move v1, v6

    .local v1, "$changed$iv":I
    move-object v2, v3

    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v3, 0x0

    .local v3, "$i$f$Layout":I
    const v4, -0x4ee9b9da

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 804
    sget-object v17, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v17, Landroidx/compose/ui/Modifier;

    .line 807
    .local v17, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v15, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v19

    .line 808
    .local v19, "compositeKeyHash$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 810
    .local v6, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v23

    .line 817
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v24

    shl-int/lit8 v4, v1, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/lit8 v4, v4, 0x6

    .line 809
    move-object/from16 v26, v23

    .local v26, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v23, v24

    .local v4, "$changed$iv$iv":I
    .local v23, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v24, 0x0

    .line 818
    .local v24, "$i$f$ReusableComposeNode":I
    move/from16 v27, v1

    .end local v1    # "$changed$iv":I
    .local v27, "$changed$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 819
    :cond_14
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 820
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 821
    move-object/from16 v1, v26

    .end local v26    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 823
    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_15
    move-object/from16 v1, v26

    .end local v26    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 825
    :goto_c
    move-object/from16 v26, v1

    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 812
    .local v28, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v29, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v30, v3

    .end local v3    # "$i$f$Layout":I
    .local v30, "$i$f$Layout":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 813
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 815
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v29, 0x0

    .line 826
    .local v29, "$i$f$set-impl":I
    move-object/from16 v31, v1

    .local v31, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 827
    .local v32, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v33

    if-nez v33, :cond_17

    move-object/from16 v33, v2

    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v33, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v6

    .end local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v34, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_d

    :cond_16
    move-object/from16 v6, v31

    goto :goto_e

    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v34    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_17
    move-object/from16 v33, v2

    move-object/from16 v34, v6

    .line 828
    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v34    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_d
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v6, v31

    .end local v31    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 829
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 831
    :goto_e
    nop

    .line 826
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 831
    nop

    .line 816
    .end local v3    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v29    # "$i$f$set-impl":I
    nop

    .line 825
    .end local v1    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 832
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v23

    .end local v23    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const v1, 0x7ab4aae9

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 834
    shr-int/lit8 v2, v4, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed":I
    move-object v6, v15

    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 505
    .local v23, "$i$a$-Layout-NavigationRailKt$NavigationRailItemLayout$1":I
    const v1, 0x1ce62d46

    move/from16 v29, v2

    .end local v2    # "$changed":I
    .local v29, "$changed":I
    const-string v2, "C504@22219L17,505@22245L11,507@22266L50:NavigationRail.kt#uh7d8r"

    invoke-static {v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, v7, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    shr-int/lit8 v1, v7, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const-string/jumbo v2, "icon"

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/16 v31, 0x0

    move-object/from16 v32, v3

    .end local v3    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v31, "$i$f$Box":I
    .local v32, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const v3, 0x2bb5b5d7

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 835
    sget-object v36, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move/from16 v37, v4

    .end local v4    # "$changed$iv$iv":I
    .local v37, "$changed$iv$iv":I
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 836
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v8, 0x0

    .line 839
    .local v8, "propagateMinConstraints$iv":Z
    shr-int/lit8 v36, v2, 0x3

    and-int/lit8 v36, v36, 0xe

    shr-int/lit8 v38, v2, 0x3

    and-int/lit8 v38, v38, 0x70

    or-int v9, v36, v38

    invoke-static {v4, v8, v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v36, v2, 0x3

    and-int/lit8 v36, v36, 0x70

    .line 840
    nop

    .local v36, "$changed$iv$iv":I
    const/16 v38, 0x0

    move-object/from16 v39, v4

    const v4, -0x4ee9b9da

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v38, "$i$f$Layout":I
    .local v39, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 841
    const/4 v4, 0x0

    invoke-static {v6, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v40

    .line 842
    .local v40, "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 844
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v41, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v41

    .line 851
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v42

    move-object/from16 v43, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v43, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v36, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 843
    move-object/from16 v44, v42

    .local v44, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v42, v41

    .local v1, "$changed$iv$iv$iv":I
    .local v42, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v41, 0x0

    .line 852
    .local v41, "$i$f$ReusableComposeNode":I
    move/from16 v45, v8

    .end local v8    # "propagateMinConstraints$iv":Z
    .local v45, "propagateMinConstraints$iv":Z
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 853
    :cond_18
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 854
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 855
    move-object/from16 v8, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    .line 857
    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_19
    move-object/from16 v8, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 859
    :goto_f
    move-object/from16 v42, v8

    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .local v8, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 846
    .local v46, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v47, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v47 .. v47}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v8, v9, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 847
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v8, v4, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 849
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    .local v14, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v47, 0x0

    .line 860
    .local v47, "$i$f$set-impl":I
    move-object/from16 v48, v8

    .local v48, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 861
    .local v49, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v50

    if-nez v50, :cond_1b

    move-object/from16 v50, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v50, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v51, v9

    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v51, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_10

    :cond_1a
    move-object/from16 v9, v48

    goto :goto_11

    .end local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v51    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_1b
    move-object/from16 v50, v4

    move-object/from16 v51, v9

    .line 862
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v51    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_10
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v9, v48

    .end local v48    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 863
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4, v14}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 865
    :goto_11
    nop

    .line 860
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 865
    nop

    .line 850
    .end local v14    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v47    # "$i$f$set-impl":I
    nop

    .line 859
    .end local v8    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v46    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 866
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v44

    .end local v44    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v9, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v9, v4, v6, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const v4, 0x7ab4aae9

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 868
    shr-int/lit8 v4, v1, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v8, v6

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 869
    .local v14, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v44, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v44, "$changed$iv$iv$iv":I
    const v1, -0x4ab8dd4f

    move/from16 v46, v4

    .end local v4    # "$changed$iv":I
    .local v46, "$changed$iv":I
    const-string v4, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v47, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v48, v2, 0x6

    and-int/lit8 v48, v48, 0x70

    or-int/lit8 v48, v48, 0x6

    .local v48, "$changed":I
    check-cast v47, Landroidx/compose/foundation/layout/BoxScope;

    .local v47, "$this$NavigationRailItemLayout_u24lambda_u249_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v49, v8

    .local v49, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v52, 0x0

    .line 508
    .local v52, "$i$a$-Box-NavigationRailKt$NavigationRailItemLayout$1$1":I
    const v1, -0x393fb0c0    # -24615.625f

    move/from16 v53, v2

    .end local v2    # "$changed$iv":I
    .local v53, "$changed$iv":I
    const-string v2, "C507@22308L6:NavigationRail.kt#uh7d8r"

    move-object/from16 v54, v9

    move-object/from16 v9, v49

    .end local v49    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    .local v54, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v1, v7, 0x6

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v9, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 869
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v47    # "$this$NavigationRailItemLayout_u24lambda_u249_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    .end local v48    # "$changed":I
    .end local v52    # "$i$a$-Box-NavigationRailKt$NavigationRailItemLayout$1$1":I
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 868
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v46    # "$changed$iv":I
    nop

    .line 870
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 871
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 872
    nop

    .end local v41    # "$i$f$ReusableComposeNode":I
    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v44    # "$changed$iv$iv$iv":I
    .end local v54    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 873
    nop

    .end local v36    # "$changed$iv$iv":I
    .end local v38    # "$i$f$Layout":I
    .end local v40    # "compositeKeyHash$iv$iv":I
    .end local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 874
    nop

    .end local v31    # "$i$f$Box":I
    .end local v39    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v43    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v45    # "propagateMinConstraints$iv":Z
    .end local v51    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v53    # "$changed$iv":I
    const v1, -0x2ce89d70

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "513@22472L60,510@22359L199"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 510
    if-eqz v11, :cond_24

    .line 512
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 513
    const-string/jumbo v2, "label"

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x1ce62e43

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v0, 0xe000

    and-int/2addr v0, v7

    const/16 v2, 0x4000

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    :goto_12
    const/high16 v2, 0x70000

    and-int/2addr v2, v7

    const/high16 v8, 0x20000

    if-ne v2, v8, :cond_1d

    const/4 v2, 0x1

    goto :goto_13

    :cond_1d
    const/4 v2, 0x0

    :goto_13
    or-int/2addr v0, v2

    .line 514
    move-object v2, v6

    .local v0, "invalid$iv":Z
    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 875
    .local v8, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 876
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1f

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v0

    .end local v0    # "invalid$iv":Z
    .local p6, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_1e

    goto :goto_14

    .line 880
    :cond_1e
    move-object v0, v9

    goto :goto_15

    .line 876
    .end local p6    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_1f
    move/from16 p6, v0

    .line 877
    .end local v0    # "invalid$iv":Z
    .restart local p6    # "invalid$iv":Z
    :goto_14
    const/4 v0, 0x0

    .line 514
    .local v0, "$i$a$-cache-NavigationRailKt$NavigationRailItemLayout$1$2":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-cache-NavigationRailKt$NavigationRailItemLayout$1$2":I
    .local v16, "$i$a$-cache-NavigationRailKt$NavigationRailItemLayout$1$2":I
    new-instance v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemLayout$1$2$1;

    invoke-direct {v0, v12, v13}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemLayout$1$2$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 877
    .end local v16    # "$i$a$-cache-NavigationRailKt$NavigationRailItemLayout$1$2":I
    nop

    .line 878
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 879
    nop

    .line 876
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_15
    nop

    .line 875
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 514
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    .end local p6    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 511
    const/4 v1, 0x0

    move v2, v1

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "$changed$iv":I
    const/4 v1, 0x0

    const v8, 0x2bb5b5d7

    .local v1, "$i$f$Box":I
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 881
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 882
    .local v3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v8, 0x0

    .line 885
    .local v8, "propagateMinConstraints$iv":Z
    shr-int/lit8 v9, v2, 0x3

    and-int/lit8 v9, v9, 0xe

    shr-int/lit8 v14, v2, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v9, v14

    invoke-static {v3, v8, v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v2, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 886
    nop

    .local v14, "$changed$iv$iv":I
    const/16 v16, 0x0

    move/from16 p6, v1

    const v1, -0x4ee9b9da

    .end local v1    # "$i$f$Box":I
    .local v16, "$i$f$Layout":I
    .local p6, "$i$f$Box":I
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 887
    const/4 v1, 0x0

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    .line 888
    .local v1, "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 890
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 897
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v20

    move-object/from16 v21, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v21, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v14, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 889
    move-object/from16 v22, v20

    .local v22, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v20, v18

    .local v0, "$changed$iv$iv$iv":I
    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 898
    .local v18, "$i$f$ReusableComposeNode":I
    move-object/from16 v25, v3

    .end local v3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v25, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 899
    :cond_20
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 900
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 901
    move-object/from16 v3, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    .line 903
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_21
    move-object/from16 v3, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 905
    :goto_16
    move-object/from16 v20, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 892
    .local v31, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v35, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v36, v8

    .end local v8    # "propagateMinConstraints$iv":Z
    .local v36, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v3, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 893
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v3, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 895
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v35, 0x0

    .line 906
    .local v35, "$i$f$set-impl":I
    move-object/from16 v38, v3

    .local v38, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 907
    .local v39, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v40

    if-nez v40, :cond_23

    move-object/from16 v40, v5

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v40, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v41, v9

    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v41, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_17

    :cond_22
    move-object/from16 v9, v38

    goto :goto_18

    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_23
    move-object/from16 v40, v5

    move-object/from16 v41, v9

    .line 908
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v9, v38

    .end local v38    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 911
    :goto_18
    nop

    .line 906
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 911
    nop

    .line 896
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v35    # "$i$f$set-impl":I
    nop

    .line 905
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 912
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v8, v22

    .end local v22    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v8, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8, v3, v6, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const v3, 0x7ab4aae9

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 914
    shr-int/lit8 v3, v0, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v5, v6

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 915
    .local v9, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v22, v0

    const v0, -0x4ab8dd4f

    .end local v0    # "$changed$iv$iv$iv":I
    .local v22, "$changed$iv$iv$iv":I
    invoke-static {v5, v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v4, v4, 0x6

    .local v4, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$NavigationRailItemLayout_u24lambda_u249_u24lambda_u248":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v28, v5

    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 515
    .local v31, "$i$a$-Box-NavigationRailKt$NavigationRailItemLayout$1$3":I
    move-object/from16 v35, v0

    .end local v0    # "$this$NavigationRailItemLayout_u24lambda_u249_u24lambda_u248":Landroidx/compose/foundation/layout/BoxScope;
    .local v35, "$this$NavigationRailItemLayout_u24lambda_u249_u24lambda_u248":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x393fafcf

    move/from16 v38, v1

    .end local v1    # "compositeKeyHash$iv$iv":I
    .local v38, "compositeKeyHash$iv$iv":I
    const-string v1, "C514@22549L7:NavigationRail.kt#uh7d8r"

    move/from16 v39, v2

    move-object/from16 v2, v28

    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v39, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v7, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 915
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "$changed":I
    .end local v31    # "$i$a$-Box-NavigationRailKt$NavigationRailItemLayout$1$3":I
    .end local v35    # "$this$NavigationRailItemLayout_u24lambda_u249_u24lambda_u248":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 914
    .end local v3    # "$changed$iv":I
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 916
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 917
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 918
    nop

    .end local v8    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$changed$iv$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 919
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v16    # "$i$f$Layout":I
    .end local v38    # "compositeKeyHash$iv$iv":I
    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 920
    nop

    .end local v21    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v36    # "propagateMinConstraints$iv":Z
    .end local v39    # "$changed$iv":I
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p6    # "$i$f$Box":I
    :cond_24
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 505
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 517
    nop

    .line 834
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-Layout-NavigationRailKt$NavigationRailItemLayout$1":I
    .end local v29    # "$changed":I
    nop

    .line 921
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 922
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 923
    nop

    .end local v24    # "$i$f$ReusableComposeNode":I
    .end local v26    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v32    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v37    # "$changed$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 924
    nop

    .end local v17    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v19    # "compositeKeyHash$iv":I
    .end local v27    # "$changed$iv":I
    .end local v30    # "$i$f$Layout":I
    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v34    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 573
    :cond_25
    :goto_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_26

    new-instance v9, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemLayout$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v14, v7

    .end local v7    # "$dirty":I
    .local v14, "$dirty":I
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemLayout$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;I)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1a

    .end local v14    # "$dirty":I
    .restart local v7    # "$dirty":I
    :cond_26
    move v14, v7

    .end local v7    # "$dirty":I
    .restart local v14    # "$dirty":I
    :goto_1a
    return-void
.end method

.method public static final synthetic access$NavigationRailItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "indicatorRipple"    # Lkotlin/jvm/functions/Function2;
    .param p1, "indicator"    # Lkotlin/jvm/functions/Function2;
    .param p2, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p3, "label"    # Lkotlin/jvm/functions/Function2;
    .param p4, "alwaysShowLabel"    # Z
    .param p5, "animationProgress"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getIndicatorHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getIndicatorVerticalPaddingNoLabel$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingNoLabel:F

    return v0
.end method

.method public static final synthetic access$getIndicatorVerticalPaddingWithLabel$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingWithLabel:F

    return v0
.end method

.method public static final synthetic access$getNavigationRailHeaderPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailHeaderPadding:F

    return v0
.end method

.method public static final synthetic access$placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "indicatorRipplePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "indicatorPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "constraints"    # J

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/NavigationRailKt;->placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "labelPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "indicatorRipplePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "indicatorPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "constraints"    # J
    .param p7, "alwaysShowLabel"    # Z
    .param p8, "animationProgress"    # F

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/NavigationRailKt;->placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static final getNavigationRailItemHeight()F
    .locals 1

    .line 728
    sget v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemHeight:F

    return v0
.end method

.method public static final getNavigationRailItemVerticalPadding()F
    .locals 1

    .line 732
    sget v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemVerticalPadding:F

    return v0
.end method

.method public static final getNavigationRailItemWidth()F
    .locals 1

    .line 724
    sget v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemWidth:F

    return v0
.end method

.method public static final getNavigationRailVerticalPadding()F
    .locals 1

    .line 712
    sget v0, Landroidx/compose/material3/NavigationRailKt;->NavigationRailVerticalPadding:F

    return v0
.end method

.method private static final placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21
    .param p0, "$this$placeIcon_u2dX9ElhV4"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "indicatorRipplePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "indicatorPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "constraints"    # J

    .line 584
    move-wide/from16 v0, p4

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    .line 588
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 585
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 584
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    .line 591
    .local v2, "width":I
    sget v3, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemHeight:F

    move-object/from16 v14, p0

    invoke-interface {v14, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    invoke-static {v0, v1, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v15

    .line 593
    .local v15, "height":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v16, v3, 0x2

    .line 594
    .local v16, "iconX":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int v3, v15, v3

    div-int/lit8 v17, v3, 0x2

    .line 596
    .local v17, "iconY":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v18, v3, 0x2

    .line 597
    .local v18, "rippleX":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int v3, v15, v3

    div-int/lit8 v19, v3, 0x2

    .line 599
    .local v19, "rippleY":I
    const/16 v20, 0x0

    new-instance v3, Landroidx/compose/material3/NavigationRailKt$placeIcon$1;

    move-object v4, v3

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, p2

    move/from16 v10, v18

    move/from16 v11, v19

    move v12, v2

    move v13, v15

    invoke-direct/range {v4 .. v13}, Landroidx/compose/material3/NavigationRailKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IIII)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move v4, v2

    move v5, v15

    move-object/from16 v6, v20

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    return-object v3
.end method

.method private static final placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 32
    .param p0, "$this$placeLabelAndIcon_u2dzUg2_y0"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "labelPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "indicatorRipplePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "indicatorPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "constraints"    # J
    .param p7, "alwaysShowLabel"    # Z
    .param p8, "animationProgress"    # F

    .line 651
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingWithLabel:F

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v1

    add-float/2addr v0, v1

    .line 652
    sget v1, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemVerticalPadding:F

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v1

    .line 651
    add-float/2addr v0, v1

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 651
    add-float v16, v0, v1

    .line 653
    .local v16, "contentHeight":F
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v0, v16

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 654
    sget v3, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingWithLabel:F

    invoke-interface {v15, v3}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 653
    move/from16 v17, v0

    .line 655
    .local v17, "contentVerticalPadding":F
    mul-float v0, v17, v2

    add-float v18, v16, v0

    .line 658
    .local v18, "height":F
    move/from16 v19, v17

    .line 660
    .local v19, "selectedIconY":F
    if-eqz p7, :cond_0

    move/from16 v0, v19

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v18, v0

    div-float/2addr v0, v2

    .line 659
    :goto_0
    move/from16 v20, v0

    .line 663
    .local v20, "unselectedIconY":F
    sub-float v21, v20, v19

    .line 667
    .local v21, "iconDistance":F
    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float v0, v0, p8

    mul-float v22, v21, v0

    .line 670
    .local v22, "offset":F
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v19, v0

    .line 671
    sget v2, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingWithLabel:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    .line 670
    add-float/2addr v0, v2

    .line 672
    sget v2, Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemVerticalPadding:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    .line 670
    add-float v23, v0, v2

    .line 674
    .local v23, "labelY":F
    nop

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .line 678
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 675
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 674
    move-wide/from16 v13, p5

    invoke-static {v13, v14, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v24

    .line 681
    .local v24, "width":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v24, v0

    div-int/lit8 v25, v0, 0x2

    .line 682
    .local v25, "labelX":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v24, v0

    div-int/lit8 v26, v0, 0x2

    .line 683
    .local v26, "iconX":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v24, v0

    div-int/lit8 v27, v0, 0x2

    .line 684
    .local v27, "rippleX":I
    sget v0, Landroidx/compose/material3/NavigationRailKt;->IndicatorVerticalPaddingWithLabel:F

    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v0

    sub-float v28, v19, v0

    .line 686
    .local v28, "rippleY":F
    invoke-static/range {v18 .. v18}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v29

    const/16 v30, 0x0

    new-instance v31, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p4

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v4, p1

    move/from16 v5, v25

    move/from16 v6, v23

    move/from16 v7, v22

    move-object/from16 v8, p2

    move/from16 v9, v26

    move/from16 v10, v19

    move-object/from16 v11, p3

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v24

    move-object/from16 v15, p0

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/ui/layout/Placeable;IFFLandroidx/compose/ui/layout/Placeable;IFLandroidx/compose/ui/layout/Placeable;IFILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v4, v31

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
