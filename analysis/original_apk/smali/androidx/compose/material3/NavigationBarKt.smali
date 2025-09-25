.class public final Landroidx/compose/material3/NavigationBarKt;
.super Ljava/lang/Object;
.source "NavigationBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationBar.kt\nandroidx/compose/material3/NavigationBarKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 8 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 9 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,713:1\n1116#2,6:714\n1116#2,6:720\n1116#2,6:726\n1116#2,6:764\n1116#2,6:770\n1116#2,6:781\n1116#2,6:858\n72#3,2:732\n74#3:762\n78#3:780\n68#3,6:818\n74#3:852\n78#3:857\n68#3,6:865\n74#3:899\n78#3:904\n78#4,11:734\n91#4:779\n75#4,14:787\n78#4,11:824\n91#4:856\n78#4,11:871\n91#4:903\n91#4:908\n456#5,8:745\n464#5,3:759\n467#5,3:776\n456#5,8:801\n464#5,3:815\n456#5,8:835\n464#5,3:849\n467#5,3:853\n456#5,8:882\n464#5,3:896\n467#5,3:900\n467#5,3:905\n3737#6,6:753\n3737#6,6:809\n3737#6,6:843\n3737#6,6:890\n74#7:763\n75#8:864\n58#8:914\n75#8:915\n58#8:916\n75#8:917\n75#9:909\n108#9,2:910\n154#10:912\n154#10:913\n154#10:918\n*S KotlinDebug\n*F\n+ 1 NavigationBar.kt\nandroidx/compose/material3/NavigationBarKt\n*L\n173#1:714,6\n196#1:720,6\n210#1:726,6\n232#1:764,6\n268#1:770,6\n521#1:781,6\n517#1:858,6\n198#1:732,2\n198#1:762\n198#1:780\n511#1:818,6\n511#1:852\n511#1:857\n514#1:865,6\n514#1:899\n514#1:904\n198#1:734,11\n198#1:779\n507#1:787,14\n511#1:824,11\n511#1:856\n514#1:871,11\n514#1:903\n507#1:908\n198#1:745,8\n198#1:759,3\n198#1:776,3\n507#1:801,8\n507#1:815,3\n511#1:835,8\n511#1:849,3\n511#1:853,3\n514#1:882,8\n514#1:896,3\n514#1:900,3\n507#1:905,3\n198#1:753,6\n507#1:809,6\n511#1:843,6\n514#1:890,6\n225#1:763\n518#1:864\n706#1:914\n706#1:915\n710#1:916\n710#1:917\n196#1:909\n196#1:910,2\n700#1:912\n703#1:913\n712#1:918\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u001ab\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00140\u001e\u00a2\u0006\u0002\u0008 \u00a2\u0006\u0002\u0008!H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001aq\u0010$\u001a\u00020\u00142\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u00140&\u00a2\u0006\u0002\u0008 2\u0011\u0010\'\u001a\r\u0012\u0004\u0012\u00020\u00140&\u00a2\u0006\u0002\u0008 2\u0011\u0010(\u001a\r\u0012\u0004\u0012\u00020\u00140&\u00a2\u0006\u0002\u0008 2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010&\u00a2\u0006\u0002\u0008 2\u0006\u0010*\u001a\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0&H\u0003\u00a2\u0006\u0002\u0010.\u001a\u0083\u0001\u0010/\u001a\u00020\u0014*\u00020\u001f2\u0006\u00100\u001a\u00020+2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00140&2\u0011\u0010(\u001a\r\u0012\u0004\u0012\u00020\u00140&\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u00102\u001a\u00020+2\u0015\u0008\u0002\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010&\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u000206H\u0007\u00a2\u0006\u0002\u00107\u001a8\u00108\u001a\u000209*\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020<2\u0008\u0010>\u001a\u0004\u0018\u00010<2\u0006\u0010?\u001a\u00020@H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010B\u001aP\u0010C\u001a\u000209*\u00020:2\u0006\u0010D\u001a\u00020<2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020<2\u0008\u0010>\u001a\u0004\u0018\u00010<2\u0006\u0010?\u001a\u00020@2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010F\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0016\u0010\u0008\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\t\u0010\n\"\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0016\u0010\u000f\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0010\u0010\n\"\u0016\u0010\u0011\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0012\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006G\u00b2\u0006\n\u0010H\u001a\u00020\u0018X\u008a\u0084\u0002\u00b2\u0006\n\u0010I\u001a\u00020\u0018X\u008a\u0084\u0002\u00b2\u0006\n\u0010J\u001a\u00020\u000cX\u008a\u008e\u0002"
    }
    d2 = {
        "IconLayoutIdTag",
        "",
        "IndicatorHorizontalPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "IndicatorLayoutIdTag",
        "IndicatorRippleLayoutIdTag",
        "IndicatorVerticalOffset",
        "IndicatorVerticalPadding",
        "getIndicatorVerticalPadding",
        "()F",
        "ItemAnimationDurationMillis",
        "",
        "LabelLayoutIdTag",
        "NavigationBarHeight",
        "NavigationBarIndicatorToLabelPadding",
        "getNavigationBarIndicatorToLabelPadding",
        "NavigationBarItemHorizontalPadding",
        "getNavigationBarItemHorizontalPadding",
        "NavigationBar",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "NavigationBar-HsRjFd4",
        "(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "NavigationBarItemLayout",
        "indicatorRipple",
        "Lkotlin/Function0;",
        "indicator",
        "icon",
        "label",
        "alwaysShowLabel",
        "",
        "animationProgress",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "NavigationBarItem",
        "selected",
        "onClick",
        "enabled",
        "colors",
        "Landroidx/compose/material3/NavigationBarItemColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
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
        "textColor",
        "itemWidth"
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

.field private static final IndicatorVerticalOffset:F

.field private static final IndicatorVerticalPadding:F

.field private static final ItemAnimationDurationMillis:I = 0x64

.field private static final LabelLayoutIdTag:Ljava/lang/String; = "label"

.field private static final NavigationBarHeight:F

.field private static final NavigationBarIndicatorToLabelPadding:F

.field private static final NavigationBarItemHorizontalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 695
    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarHeight:F

    .line 700
    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 912
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 700
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemHorizontalPadding:F

    .line 703
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 913
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 703
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarIndicatorToLabelPadding:F

    .line 706
    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v0

    .local v0, "arg0$iv":F
    sget-object v1, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 914
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 706
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 915
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 706
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorHorizontalPadding:F

    .line 710
    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getActiveIndicatorHeight-D9Ej5fM()F

    move-result v0

    .restart local v0    # "arg0$iv":F
    sget-object v1, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 916
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 710
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 917
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 710
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    .line 712
    const/16 v0, 0xc

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 918
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 712
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalOffset:F

    return-void
.end method

.method public static final NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "containerColor"    # J
    .param p3, "contentColor"    # J
    .param p5, "tonalElevation"    # F
    .param p6, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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

    .line 109
    move-object/from16 v11, p7

    move/from16 v12, p9

    const v0, 0x5f2d444b

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationBar)P(3,0:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.unit.Dp,5)103@4868L14,104@4924L11,106@5082L12,109@5149L583:NavigationBar.kt#uh7d8r"

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

    move/from16 v9, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    move/from16 v9, p5

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    move/from16 v9, p5

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

    .line 127
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, v1

    move-wide v14, v4

    move-wide/from16 v16, v6

    move/from16 v18, v9

    move-object/from16 v19, v13

    move-object v13, v3

    goto/16 :goto_13

    .line 109
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

    .line 107
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

    move v7, v9

    move-object v8, v13

    goto :goto_12

    .line 109
    :cond_18
    :goto_d
    if-eqz v2, :cond_19

    .line 103
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 109
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_19
    move-object v2, v3

    .line 103
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v3, p10, 0x2

    const/4 v14, 0x6

    if-eqz v3, :cond_1a

    .line 104
    sget-object v3, Landroidx/compose/material3/NavigationBarDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarDefaults;

    invoke-virtual {v3, v10, v14}, Landroidx/compose/material3/NavigationBarDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p1    # "containerColor":J
    .local v3, "containerColor":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_f

    .line 103
    .end local v3    # "containerColor":J
    .restart local p1    # "containerColor":J
    :cond_1a
    move-wide v3, v4

    .line 104
    .end local p1    # "containerColor":J
    .restart local v3    # "containerColor":J
    :goto_f
    and-int/lit8 v5, p10, 0x4

    if-eqz v5, :cond_1b

    .line 105
    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v5, v10, v14}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v5

    .end local p3    # "contentColor":J
    .local v5, "contentColor":J
    and-int/lit16 v1, v1, -0x381

    goto :goto_10

    .line 104
    .end local v5    # "contentColor":J
    .restart local p3    # "contentColor":J
    :cond_1b
    move-wide v5, v6

    .line 105
    .end local p3    # "contentColor":J
    .restart local v5    # "contentColor":J
    :goto_10
    if-eqz v8, :cond_1c

    .line 106
    sget-object v7, Landroidx/compose/material3/NavigationBarDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/NavigationBarDefaults;->getElevation-D9Ej5fM()F

    move-result v7

    .end local p5    # "tonalElevation":F
    .local v7, "tonalElevation":F
    goto :goto_11

    .line 105
    .end local v7    # "tonalElevation":F
    .restart local p5    # "tonalElevation":F
    :cond_1c
    move v7, v9

    .line 106
    .end local p5    # "tonalElevation":F
    .restart local v7    # "tonalElevation":F
    :goto_11
    and-int/lit8 v8, p10, 0x10

    if-eqz v8, :cond_1d

    .line 107
    sget-object v8, Landroidx/compose/material3/NavigationBarDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarDefaults;

    invoke-virtual {v8, v10, v14}, Landroidx/compose/material3/NavigationBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v8

    .end local p6    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v8, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    and-int/2addr v1, v15

    goto :goto_12

    .line 106
    .end local v8    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local p6    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :cond_1d
    move-object v8, v13

    .line 107
    .end local p6    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local v8    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 109
    const/4 v9, -0x1

    const-string/jumbo v13, "androidx.compose.material3.NavigationBar (NavigationBar.kt:108)"

    invoke-static {v0, v1, v9, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 114
    :cond_1e
    const/4 v14, 0x0

    .line 111
    nop

    .line 112
    nop

    .line 113
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 115
    new-instance v0, Landroidx/compose/material3/NavigationBarKt$NavigationBar$1;

    invoke-direct {v0, v8, v11}, Landroidx/compose/material3/NavigationBarKt$NavigationBar$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;)V

    const v9, 0x64c4a90

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

    or-int/2addr v0, v9

    const v9, 0xe000

    shl-int/lit8 v13, v1, 0x3

    and-int/2addr v9, v13

    or-int v24, v0, v9

    const/16 v25, 0x62

    .line 110
    move-object v13, v2

    move-wide v15, v3

    move-wide/from16 v17, v5

    move/from16 v19, v7

    move-object/from16 v23, v10

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 127
    :cond_1f
    move/from16 v20, v1

    move-object v13, v2

    move-wide v14, v3

    move-wide/from16 v16, v5

    move/from16 v18, v7

    move-object/from16 v19, v8

    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "containerColor":J
    .end local v5    # "contentColor":J
    .end local v7    # "tonalElevation":F
    .end local v8    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "containerColor":J
    .local v16, "contentColor":J
    .local v18, "tonalElevation":F
    .local v19, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v20, "$dirty":I
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_20

    new-instance v21, Landroidx/compose/material3/NavigationBarKt$NavigationBar$2;

    move-object/from16 v0, v21

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, p7

    move-object v11, v9

    move/from16 v9, p9

    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/NavigationBarKt$NavigationBar$2;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

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

.method public static final NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 49
    .param p0, "$this$NavigationBarItem"    # Landroidx/compose/foundation/layout/RowScope;
    .param p1, "selected"    # Z
    .param p2, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p3, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "enabled"    # Z
    .param p6, "label"    # Lkotlin/jvm/functions/Function2;
    .param p7, "alwaysShowLabel"    # Z
    .param p8, "colors"    # Landroidx/compose/material3/NavigationBarItemColors;
    .param p9, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Z",
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
            "Landroidx/compose/material3/NavigationBarItemColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 174
    move/from16 v13, p1

    move/from16 v14, p11

    move/from16 v12, p12

    const v0, -0x278c5fbe

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationBarItem)P(8,7,3,6,2,5)171@7961L8,172@8021L39,195@9011L33,209@9453L52,197@9050L2789:NavigationBar.kt#uh7d8r"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v14, 0x30

    if-nez v2, :cond_5

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v10, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v14, 0x180

    if-nez v2, :cond_8

    move-object/from16 v10, p2

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v14, 0xc00

    if-nez v2, :cond_b

    move-object/from16 v9, p3

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x800

    goto :goto_6

    :cond_a
    const/16 v2, 0x400

    :goto_6
    or-int/2addr v1, v2

    goto :goto_7

    :cond_b
    move-object/from16 v9, p3

    :goto_7
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_c

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
    and-int/lit8 v5, v12, 0x10

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
    and-int/lit8 v7, v12, 0x20

    const/high16 v8, 0x180000

    if-eqz v7, :cond_12

    or-int/2addr v1, v8

    move-object/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int/2addr v8, v14

    if-nez v8, :cond_14

    move-object/from16 v8, p6

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v8, p6

    :goto_d
    and-int/lit8 v16, v12, 0x40

    const/high16 v17, 0xc00000

    if-eqz v16, :cond_15

    or-int v1, v1, v17

    move/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v17, v14, v17

    if-nez v17, :cond_17

    move/from16 v3, p7

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_17
    move/from16 v3, p7

    :goto_f
    const/high16 v18, 0x6000000

    and-int v18, v14, v18

    if-nez v18, :cond_1a

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v19, 0x2000000

    :goto_10
    or-int v1, v1, v19

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p8

    :goto_11
    and-int/lit16 v0, v12, 0x100

    const/high16 v19, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v19

    move-object/from16 v3, p9

    goto :goto_13

    :cond_1b
    and-int v19, v14, v19

    if-nez v19, :cond_1d

    move-object/from16 v3, p9

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_12
    or-int v1, v1, v19

    goto :goto_13

    :cond_1d
    move-object/from16 v3, p9

    :goto_13
    const v19, 0x12492493

    and-int v3, v1, v19

    const v4, 0x12492492

    if-ne v3, v4, :cond_1f

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_14

    .line 271
    :cond_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p4

    move/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v37, p9

    move/from16 v19, v1

    move/from16 v16, v6

    move-object/from16 v28, v8

    goto/16 :goto_29

    .line 174
    :cond_1f
    :goto_14
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v14, 0x1

    const-string v4, "CC(remember):NavigationBar.kt#9igjgp"

    const/4 v6, 0x6

    if-eqz v3, :cond_22

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_15

    .line 173
    :cond_20
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_21

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_21
    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v7, p7

    move-object/from16 v0, p9

    move-object v5, v8

    move-object/from16 v8, p8

    goto/16 :goto_1c

    .line 174
    :cond_22
    :goto_15
    if-eqz v2, :cond_23

    .line 168
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 174
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_23
    move-object/from16 v2, p4

    .line 168
    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    if-eqz v5, :cond_24

    .line 169
    const/4 v3, 0x1

    .end local p5    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_17

    .line 168
    .end local v3    # "enabled":Z
    .restart local p5    # "enabled":Z
    :cond_24
    move/from16 v3, p5

    .line 169
    .end local p5    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_17
    if-eqz v7, :cond_25

    .line 170
    const/4 v5, 0x0

    .end local p6    # "label":Lkotlin/jvm/functions/Function2;
    .local v5, "label":Lkotlin/jvm/functions/Function2;
    goto :goto_18

    .line 169
    .end local v5    # "label":Lkotlin/jvm/functions/Function2;
    .restart local p6    # "label":Lkotlin/jvm/functions/Function2;
    :cond_25
    move-object v5, v8

    .line 170
    .end local p6    # "label":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "label":Lkotlin/jvm/functions/Function2;
    :goto_18
    if-eqz v16, :cond_26

    .line 171
    const/4 v7, 0x1

    .end local p7    # "alwaysShowLabel":Z
    .local v7, "alwaysShowLabel":Z
    goto :goto_19

    .line 170
    .end local v7    # "alwaysShowLabel":Z
    .restart local p7    # "alwaysShowLabel":Z
    :cond_26
    move/from16 v7, p7

    .line 171
    .end local p7    # "alwaysShowLabel":Z
    .restart local v7    # "alwaysShowLabel":Z
    :goto_19
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_27

    .line 172
    sget-object v8, Landroidx/compose/material3/NavigationBarItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarItemDefaults;

    invoke-virtual {v8, v15, v6}, Landroidx/compose/material3/NavigationBarItemDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/NavigationBarItemColors;

    move-result-object v8

    .end local p8    # "colors":Landroidx/compose/material3/NavigationBarItemColors;
    .local v8, "colors":Landroidx/compose/material3/NavigationBarItemColors;
    const v16, -0xe000001

    and-int v1, v1, v16

    goto :goto_1a

    .line 171
    .end local v8    # "colors":Landroidx/compose/material3/NavigationBarItemColors;
    .restart local p8    # "colors":Landroidx/compose/material3/NavigationBarItemColors;
    :cond_27
    move-object/from16 v8, p8

    .line 172
    .end local p8    # "colors":Landroidx/compose/material3/NavigationBarItemColors;
    .restart local v8    # "colors":Landroidx/compose/material3/NavigationBarItemColors;
    :goto_1a
    if-eqz v0, :cond_29

    .line 173
    const v0, -0x10b6f45a

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object/from16 p4, v15

    .local p4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 714
    .local v16, "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 715
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v0

    .end local v0    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_28

    .line 716
    const/4 v0, 0x0

    .line 173
    .local v0, "$i$a$-cache-NavigationBarKt$NavigationBarItem$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 716
    .end local v0    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$1":I
    nop

    .line 717
    .local v0, "value$iv":Ljava/lang/Object;
    move/from16 p6, v1

    move-object/from16 v1, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p6, "$dirty":I
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 718
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_1b

    .line 719
    .end local p6    # "$dirty":I
    .local v1, "$dirty":I
    .restart local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_28
    move/from16 p6, v1

    move-object/from16 v1, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p6    # "$dirty":I
    move-object v0, v6

    .line 715
    :goto_1b
    nop

    .line 714
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 173
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move/from16 v1, p6

    goto :goto_1c

    .line 172
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p6    # "$dirty":I
    .local v1, "$dirty":I
    .restart local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_29
    move/from16 p6, v1

    .end local v1    # "$dirty":I
    .restart local p6    # "$dirty":I
    move-object/from16 v0, p9

    .line 173
    .end local p6    # "$dirty":I
    .end local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v1    # "$dirty":I
    :goto_1c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 174
    const/4 v6, -0x1

    const-string/jumbo v9, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:173)"

    const v10, -0x278c5fbe

    invoke-static {v10, v1, v6, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 175
    :cond_2a
    new-instance v6, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledIcon$1;

    move-object/from16 p4, v6

    move-object/from16 p5, v8

    move/from16 p6, p1

    move/from16 p7, v3

    move-object/from16 p8, v5

    move/from16 p9, v7

    move-object/from16 p10, p3

    invoke-direct/range {p4 .. p10}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledIcon$1;-><init>(Landroidx/compose/material3/NavigationBarItemColors;ZZLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;)V

    const v9, -0x549d0324

    const/4 v10, 0x1

    invoke-static {v15, v9, v10, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 184
    .local v6, "styledIcon":Lkotlin/jvm/functions/Function2;
    if-eqz v5, :cond_2b

    move-object/from16 v16, v5

    .local v16, "it":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 185
    .local v18, "$i$a$-let-NavigationBarKt$NavigationBarItem$styledLabel$1":I
    new-instance v9, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledLabel$1$1;

    invoke-direct {v9, v8, v13, v3, v5}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledLabel$1$1;-><init>(Landroidx/compose/material3/NavigationBarItemColors;ZZLkotlin/jvm/functions/Function2;)V

    move-object/from16 v28, v5

    .end local v5    # "label":Lkotlin/jvm/functions/Function2;
    .local v28, "label":Lkotlin/jvm/functions/Function2;
    const v5, 0x620c84c8

    invoke-static {v15, v5, v10, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 184
    .end local v16    # "it":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$a$-let-NavigationBarKt$NavigationBarItem$styledLabel$1":I
    move-object/from16 v23, v5

    goto :goto_1d

    .end local v28    # "label":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "label":Lkotlin/jvm/functions/Function2;
    :cond_2b
    move-object/from16 v28, v5

    .end local v5    # "label":Lkotlin/jvm/functions/Function2;
    .restart local v28    # "label":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .local v23, "styledLabel":Lkotlin/jvm/functions/Function2;
    :goto_1d
    const v5, -0x10b6f07c

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 196
    const/4 v5, 0x0

    move v9, v5

    .local v9, "invalid$iv":Z
    move-object/from16 p4, v15

    .restart local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 720
    .local v16, "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 721
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v10, v5, :cond_2c

    .line 722
    const/4 v5, 0x0

    .line 196
    .local v5, "$i$a$-cache-NavigationBarKt$NavigationBarItem$itemWidth$2":I
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v5

    .line 722
    .end local v5    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$itemWidth$2":I
    nop

    .line 723
    .local v5, "value$iv":Ljava/lang/Object;
    move/from16 p5, v9

    move-object/from16 v9, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "invalid$iv":Z
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 724
    nop

    .end local v5    # "value$iv":Ljava/lang/Object;
    goto :goto_1e

    .line 725
    .end local p5    # "invalid$iv":Z
    .local v9, "invalid$iv":Z
    .restart local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_2c
    move/from16 p5, v9

    move-object/from16 v9, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "invalid$iv":Z
    move-object v5, v10

    .line 721
    :goto_1e
    nop

    .line 720
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 196
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v5, Landroidx/compose/runtime/MutableIntState;

    .local v5, "itemWidth$delegate":Landroidx/compose/runtime/MutableIntState;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 209
    nop

    .line 204
    sget-object v9, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v9

    .line 199
    nop

    .line 201
    nop

    .line 205
    nop

    .line 206
    const/4 v10, 0x0

    .line 203
    nop

    .line 204
    invoke-static {v9}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v9

    .line 202
    nop

    .line 200
    move-object/from16 p4, v2

    move/from16 p5, p1

    move-object/from16 p6, v0

    move-object/from16 p7, v10

    move/from16 p8, v3

    move-object/from16 p9, v9

    move-object/from16 p10, p2

    invoke-static/range {p4 .. p10}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 208
    const/4 v10, 0x0

    move-object/from16 p10, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p10, "modifier":Landroidx/compose/ui/Modifier;
    sget v2, Landroidx/compose/material3/NavigationBarKt;->NavigationBarHeight:F

    move/from16 v16, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    .end local v3    # "enabled":Z
    .local v16, "enabled":Z
    invoke-static {v9, v10, v2, v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 209
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v9

    move/from16 p8, v10

    move-object/from16 p9, v11

    invoke-static/range {p4 .. p9}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, -0x10b6eec2

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 210
    const/4 v3, 0x0

    move v9, v3

    .local v9, "invalid$iv":Z
    move-object v3, v15

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 726
    .local v10, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 727
    .restart local v21    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v9

    .end local v9    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v11, v9, :cond_2d

    .line 728
    const/4 v9, 0x0

    .line 210
    .local v9, "$i$a$-cache-NavigationBarKt$NavigationBarItem$2":I
    move/from16 p5, v9

    .end local v9    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$2":I
    .local p5, "$i$a$-cache-NavigationBarKt$NavigationBarItem$2":I
    new-instance v9, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$2$1;

    invoke-direct {v9, v5}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$2$1;-><init>(Landroidx/compose/runtime/MutableIntState;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 728
    .end local p5    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$2":I
    nop

    .line 729
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 730
    nop

    .end local v9    # "value$iv":Ljava/lang/Object;
    goto :goto_1f

    .line 731
    :cond_2d
    move-object v9, v11

    .line 727
    :goto_1f
    nop

    .line 726
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 210
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v2, v9}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 213
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 214
    nop

    .line 198
    const/4 v9, 0x1

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    move v10, v9

    .local v3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v10, "propagateMinConstraints$iv":Z
    const/16 v9, 0x1b0

    .local v9, "$changed$iv":I
    const/4 v11, 0x0

    move/from16 p4, v11

    .local p4, "$i$f$Box":I
    const v11, 0x2bb5b5d7

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 732
    shr-int/lit8 v11, v9, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v21, v9, 0x3

    and-int/lit8 v21, v21, 0x70

    or-int v11, v11, v21

    invoke-static {v3, v10, v15, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v21, v9, 0x3

    and-int/lit8 v21, v21, 0x70

    .line 733
    move/from16 v29, v21

    .local v29, "$changed$iv$iv":I
    const/16 v30, 0x0

    move-object/from16 p5, v3

    .end local v3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v30, "$i$f$Layout":I
    .local p5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v3, -0x4ee9b9da

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 734
    const/4 v3, 0x0

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v31

    .line 735
    .local v31, "compositeKeyHash$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 737
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    .line 744
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v22

    move-object/from16 p6, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p6, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v2, v29, 0x9

    and-int/lit16 v2, v2, 0x1c00

    const/16 v19, 0x6

    or-int/lit8 v2, v2, 0x6

    .line 736
    nop

    .local v2, "$changed$iv$iv$iv":I
    move-object/from16 p7, v22

    .local p7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 p8, v21

    .local p8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v32, 0x0

    .line 745
    .local v32, "$i$f$ReusableComposeNode":I
    move/from16 p9, v10

    .end local v10    # "propagateMinConstraints$iv":Z
    .local p9, "propagateMinConstraints$iv":Z
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 746
    :cond_2e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 747
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 748
    move-object/from16 v10, p8

    .end local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    .line 750
    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2f
    move-object/from16 v10, p8

    .end local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 752
    :goto_20
    move-object/from16 p8, v10

    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 739
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 740
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 742
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 753
    .local v22, "$i$f$set-impl":I
    move-object/from16 v25, v10

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 754
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_31

    move-object/from16 v33, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v33, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v11

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v34, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_21

    :cond_30
    move-object/from16 v11, v25

    goto :goto_22

    .end local v33    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_31
    move-object/from16 v33, v3

    move-object/from16 v34, v11

    .line 755
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v33    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_21
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v11, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 756
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 758
    :goto_22
    nop

    .line 753
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 758
    nop

    .line 743
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 752
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 759
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v10, v2, 0x3

    and-int/lit8 v10, v10, 0x70

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, p7

    .end local p7    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v11, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v11, v3, v15, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const v3, 0x7ab4aae9

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 761
    shr-int/lit8 v3, v2, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v10, v15

    .local v10, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 762
    .local v12, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 p7, v2

    .end local v2    # "$changed$iv$iv$iv":I
    .local p7, "$changed$iv$iv$iv":I
    const v2, -0x4ab8dd4f

    move/from16 v35, v3

    .end local v3    # "$changed$iv":I
    .local v35, "$changed$iv":I
    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v10, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v3, v9, 0x6

    and-int/lit8 v3, v3, 0x70

    const/16 v19, 0x6

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v2, Landroidx/compose/foundation/layout/BoxScope;

    .local v2, "$this$NavigationBarItem_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v44, v10

    .local v44, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 216
    .local v45, "$i$a$-Box-NavigationBarKt$NavigationBarItem$3":I
    move-object/from16 v46, v2

    .end local v2    # "$this$NavigationBarItem_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    .local v46, "$this$NavigationBarItem_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    const v2, 0x3db3227a

    move/from16 v47, v3

    .end local v3    # "$changed":I
    .local v47, "$changed":I
    const-string v3, "C215@9646L145,*224@10075L7,231@10375L120,267@11795L27,261@11545L288:NavigationBar.kt#uh7d8r"

    move/from16 v48, v9

    move-object/from16 v9, v44

    .end local v44    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    .local v48, "$changed$iv":I
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 217
    if-eqz v13, :cond_32

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_32
    const/4 v2, 0x0

    :goto_23
    move/from16 v36, v2

    .line 218
    const/16 v2, 0x64

    move-object/from16 v19, v11

    move/from16 v44, v12

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    .end local v11    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v12    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v44, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v2, v11, v3, v12, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroidx/compose/animation/core/AnimationSpec;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x30

    const/16 v43, 0x1c

    .line 216
    move-object/from16 v41, v9

    invoke-static/range {v36 .. v43}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 224
    .local v2, "animationProgress":Landroidx/compose/runtime/State;
    const-wide/16 v21, 0x0

    .line 225
    .local v21, "deltaOffset":J
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v12, 0x0

    .local v12, "$changed$iv":I
    const/16 v24, 0x0

    .line 763
    .local v24, "$i$f$getCurrent":I
    const v11, 0x789c5f52

    move/from16 v26, v12

    .end local v12    # "$changed$iv":I
    .local v26, "$changed$iv":I
    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 225
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v24    # "$i$f$getCurrent":I
    .end local v26    # "$changed$iv":I
    move-object v3, v11

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .local v3, "$this$NavigationBarItem_u24lambda_u249_u24lambda_u246":Landroidx/compose/ui/unit/Density;
    const/4 v11, 0x0

    .line 226
    .local v11, "$i$a$-with-NavigationBarKt$NavigationBarItem$3$1":I
    sget-object v12, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v12}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v12

    invoke-interface {v3, v12}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v12

    .line 227
    .local v12, "indicatorWidth":I
    nop

    .line 228
    invoke-static {v5}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem$lambda$3(Landroidx/compose/runtime/MutableIntState;)I

    move-result v24

    move-object/from16 v36, v5

    .end local v5    # "itemWidth$delegate":Landroidx/compose/runtime/MutableIntState;
    .local v36, "itemWidth$delegate":Landroidx/compose/runtime/MutableIntState;
    sub-int v5, v24, v12

    int-to-float v5, v5

    move/from16 v24, v11

    const/4 v11, 0x2

    .end local v11    # "$i$a$-with-NavigationBarKt$NavigationBarItem$3$1":I
    .local v24, "$i$a$-with-NavigationBarKt$NavigationBarItem$3$1":I
    int-to-float v11, v11

    div-float/2addr v5, v11

    .line 229
    sget v11, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalOffset:F

    invoke-interface {v3, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v11

    .line 227
    move/from16 v17, v12

    .end local v12    # "indicatorWidth":I
    .local v17, "indicatorWidth":I
    invoke-static {v5, v11}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    .line 231
    .end local v21    # "deltaOffset":J
    .local v11, "deltaOffset":J
    nop

    .end local v3    # "$this$NavigationBarItem_u24lambda_u249_u24lambda_u246":Landroidx/compose/ui/unit/Density;
    .end local v17    # "indicatorWidth":I
    .end local v24    # "$i$a$-with-NavigationBarKt$NavigationBarItem$3$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 225
    const v3, 0x3db32579

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v3, 0x70000000

    and-int/2addr v3, v1

    const/high16 v5, 0x20000000

    if-ne v3, v5, :cond_33

    const/4 v5, 0x1

    goto :goto_24

    :cond_33
    const/4 v5, 0x0

    .line 232
    :goto_24
    invoke-interface {v15, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    or-int/2addr v3, v5

    .local v3, "invalid$iv":Z
    move-object v5, v9

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 764
    .local v17, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 765
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_35

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v3

    .end local v3    # "invalid$iv":Z
    .local v24, "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v13, v3, :cond_34

    goto :goto_25

    .line 769
    :cond_34
    move-object/from16 v37, v0

    move-object v0, v13

    move-object/from16 v25, v0

    goto :goto_26

    .line 765
    .end local v24    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_35
    move/from16 v24, v3

    .line 766
    .end local v3    # "invalid$iv":Z
    .restart local v24    # "invalid$iv":Z
    :goto_25
    const/4 v3, 0x0

    .line 233
    .local v3, "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$offsetInteractionSource$1":I
    move/from16 v22, v3

    .end local v3    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$offsetInteractionSource$1":I
    .local v22, "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$offsetInteractionSource$1":I
    new-instance v3, Landroidx/compose/material3/MappedInteractionSource;

    move-object/from16 v25, v13

    .end local v13    # "it$iv":Ljava/lang/Object;
    .local v25, "it$iv":Ljava/lang/Object;
    move-object v13, v0

    check-cast v13, Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 v37, v0

    const/4 v0, 0x0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v37, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-direct {v3, v13, v11, v12, v0}, Landroidx/compose/material3/MappedInteractionSource;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 766
    .end local v22    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$offsetInteractionSource$1":I
    move-object v0, v3

    .line 767
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 768
    nop

    .line 765
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_26
    nop

    .line 764
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v25    # "it$iv":Ljava/lang/Object;
    nop

    .line 232
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local v24    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/material3/MappedInteractionSource;

    .local v0, "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 238
    new-instance v3, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicatorRipple$1;

    invoke-direct {v3, v0}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicatorRipple$1;-><init>(Landroidx/compose/material3/MappedInteractionSource;)V

    const v5, 0x293afa35

    const/4 v13, 0x1

    invoke-static {v9, v5, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 250
    .local v3, "indicatorRipple":Lkotlin/jvm/functions/Function2;
    new-instance v5, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicator$1;

    invoke-direct {v5, v2, v8}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicator$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/material3/NavigationBarItemColors;)V

    move-object/from16 v17, v0

    .end local v0    # "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    .local v17, "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    const v0, -0x1c472dfb

    invoke-static {v9, v0, v13, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

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
    const v5, 0x3db32b05

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 268
    move-object v5, v9

    .local v4, "invalid$iv":Z
    .restart local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 770
    .local v13, "$i$f$cache":I
    move-object/from16 v18, v8

    .end local v8    # "colors":Landroidx/compose/material3/NavigationBarItemColors;
    .local v18, "colors":Landroidx/compose/material3/NavigationBarItemColors;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 771
    .restart local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_37

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v4

    .end local v4    # "invalid$iv":Z
    .local v22, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v8, v4, :cond_36

    goto :goto_27

    .line 775
    :cond_36
    move-object v4, v8

    goto :goto_28

    .line 771
    .end local v22    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_37
    move/from16 v22, v4

    .line 772
    .end local v4    # "invalid$iv":Z
    .restart local v22    # "invalid$iv":Z
    :goto_27
    const/4 v4, 0x0

    .line 268
    .local v4, "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$2":I
    move/from16 v21, v4

    .end local v4    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$2":I
    .local v21, "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$2":I
    new-instance v4, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$2$1;

    invoke-direct {v4, v2}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 772
    .end local v21    # "$i$a$-cache-NavigationBarKt$NavigationBarItem$3$2":I
    nop

    .line 773
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 774
    nop

    .line 771
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_28
    nop

    .line 770
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 268
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local v22    # "invalid$iv":Z
    move-object/from16 v25, v4

    check-cast v25, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v4, 0xe000

    shr-int/lit8 v5, v1, 0x9

    and-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x1b6

    .line 262
    move-object/from16 v20, v3

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move/from16 v24, v7

    move-object/from16 v26, v9

    move/from16 v27, v4

    invoke-static/range {v20 .. v27}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 216
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 270
    .end local v0    # "indicator":Lkotlin/jvm/functions/Function2;
    .end local v2    # "animationProgress":Landroidx/compose/runtime/State;
    .end local v3    # "indicatorRipple":Lkotlin/jvm/functions/Function2;
    .end local v11    # "deltaOffset":J
    .end local v17    # "offsetInteractionSource":Landroidx/compose/material3/MappedInteractionSource;
    nop

    .line 762
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v45    # "$i$a$-Box-NavigationBarKt$NavigationBarItem$3":I
    .end local v46    # "$this$NavigationBarItem_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    .end local v47    # "$changed":I
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 761
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v35    # "$changed$iv":I
    .end local v44    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 776
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 777
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 778
    nop

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v32    # "$i$f$ReusableComposeNode":I
    .end local p7    # "$changed$iv$iv$iv":I
    .end local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 779
    nop

    .end local v29    # "$changed$iv$iv":I
    .end local v30    # "$i$f$Layout":I
    .end local v31    # "compositeKeyHash$iv$iv":I
    .end local v33    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 780
    nop

    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v48    # "$changed$iv":I
    .end local p4    # "$i$f$Box":I
    .end local p5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local p6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p9    # "propagateMinConstraints$iv":Z
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 271
    .end local v6    # "styledIcon":Lkotlin/jvm/functions/Function2;
    .end local v23    # "styledLabel":Lkotlin/jvm/functions/Function2;
    .end local v36    # "itemWidth$delegate":Landroidx/compose/runtime/MutableIntState;
    :cond_38
    move-object/from16 v13, p10

    move/from16 v19, v1

    move/from16 v17, v7

    .end local v1    # "$dirty":I
    .end local v7    # "alwaysShowLabel":Z
    .end local p10    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "alwaysShowLabel":Z
    .local v19, "$dirty":I
    :goto_29
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_39

    new-instance v20, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v13

    move/from16 v6, v16

    move-object/from16 v7, v28

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v37

    move/from16 v11, p11

    move-object/from16 p4, v13

    move-object v13, v12

    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .local p4, "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$4;-><init>(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2a

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v13    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_39
    move-object/from16 p4, v13

    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_2a
    return-void
.end method

.method private static final NavigationBarItem$lambda$3(Landroidx/compose/runtime/MutableIntState;)I
    .locals 4
    .param p0, "$itemWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 196
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 909
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 196
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final NavigationBarItem$lambda$4(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 4
    .param p0, "$itemWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 196
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v3, 0x0

    .line 910
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 911
    nop

    .line 196
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final NavigationBarItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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

    .line 506
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p7

    const v0, -0x550f732e

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavigationBarItemLayout)P(4,3,2,5)520@22742L1945,506@22286L2401:NavigationBar.kt#uh7d8r"

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

    const/16 v4, 0x800

    if-nez v2, :cond_7

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v14, 0x6000

    const/16 v5, 0x4000

    if-nez v2, :cond_9

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v14

    const/high16 v6, 0x20000

    if-nez v2, :cond_b

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v6

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

    .line 571
    :cond_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_19

    .line 506
    :cond_d
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.NavigationBarItemLayout (NavigationBar.kt:505)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_e
    const v0, -0x4a81f9a3

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):NavigationBar.kt#9igjgp"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v1, 0x70000

    and-int v2, v7, v1

    const/16 v16, 0x1

    const/4 v3, 0x0

    if-ne v2, v6, :cond_f

    move/from16 v2, v16

    goto :goto_7

    :cond_f
    move v2, v3

    :goto_7
    and-int/lit16 v6, v7, 0x1c00

    if-ne v6, v4, :cond_10

    move/from16 v4, v16

    goto :goto_8

    :cond_10
    move v4, v3

    :goto_8
    or-int/2addr v2, v4

    const v4, 0xe000

    and-int v6, v7, v4

    if-ne v6, v5, :cond_11

    move/from16 v6, v16

    goto :goto_9

    :cond_11
    move v6, v3

    :goto_9
    or-int/2addr v2, v6

    .line 521
    nop

    .local v2, "invalid$iv":Z
    move-object v6, v15

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 781
    .local v18, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 782
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_13

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_12

    goto :goto_a

    .line 786
    :cond_12
    move-object v4, v1

    goto :goto_b

    .line 783
    :cond_13
    :goto_a
    const/4 v5, 0x0

    .line 521
    .local v5, "$i$a$-cache-NavigationBarKt$NavigationBarItemLayout$2":I
    new-instance v4, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemLayout$2$1;

    invoke-direct {v4, v13, v11, v12}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemLayout$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Z)V

    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 783
    .end local v5    # "$i$a$-cache-NavigationBarKt$NavigationBarItemLayout$2":I
    nop

    .line 784
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 785
    nop

    .line 782
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 781
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 521
    .end local v2    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 507
    move v1, v3

    .local v1, "$changed$iv":I
    move-object v2, v4

    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v4, 0x0

    .local v4, "$i$f$Layout":I
    const v5, -0x4ee9b9da

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v15, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 787
    sget-object v18, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v18, Landroidx/compose/ui/Modifier;

    .line 790
    .local v18, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v20

    .line 791
    .local v20, "compositeKeyHash$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 793
    .local v3, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v24

    .line 800
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v25

    shl-int/lit8 v5, v1, 0x9

    and-int/lit16 v5, v5, 0x1c00

    or-int/lit8 v5, v5, 0x6

    .line 792
    move-object/from16 v27, v24

    .local v27, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v24, v25

    .local v5, "$changed$iv$iv":I
    .local v24, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v25, 0x0

    .line 801
    .local v25, "$i$f$ReusableComposeNode":I
    move/from16 v28, v1

    .end local v1    # "$changed$iv":I
    .local v28, "$changed$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 802
    :cond_14
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 803
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 804
    move-object/from16 v1, v27

    .end local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 806
    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_15
    move-object/from16 v1, v27

    .end local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 808
    :goto_c
    move-object/from16 v27, v1

    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 795
    .local v29, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v31, v4

    .end local v4    # "$i$f$Layout":I
    .local v31, "$i$f$Layout":I
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 796
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 798
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v30, 0x0

    .line 809
    .local v30, "$i$f$set-impl":I
    move-object/from16 v32, v1

    .local v32, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 810
    .local v33, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v34

    if-nez v34, :cond_17

    move-object/from16 v34, v2

    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v34, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v3

    .end local v3    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v35, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_d

    :cond_16
    move-object/from16 v3, v32

    goto :goto_e

    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v35    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_17
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    .line 811
    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v35    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_d
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v32

    .end local v32    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 812
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 814
    :goto_e
    nop

    .line 809
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 814
    nop

    .line 799
    .end local v4    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v30    # "$i$f$set-impl":I
    nop

    .line 808
    .end local v1    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 815
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v5, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v24

    .end local v24    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const v1, 0x7ab4aae9

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 817
    shr-int/lit8 v2, v5, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed":I
    move-object v4, v15

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 508
    .local v24, "$i$a$-Layout-NavigationBarKt$NavigationBarItemLayout$1":I
    const v1, 0x6d71f447

    move/from16 v30, v2

    .end local v2    # "$changed":I
    .local v30, "$changed":I
    const-string v2, "C507@22303L17,508@22329L11,510@22350L50:NavigationBar.kt#uh7d8r"

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, v7, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    shr-int/lit8 v1, v7, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const-string/jumbo v2, "icon"

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/16 v32, 0x0

    move-object/from16 v33, v3

    .end local v3    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v32, "$i$f$Box":I
    .local v33, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const v3, 0x2bb5b5d7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 818
    sget-object v37, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move/from16 v38, v5

    .end local v5    # "$changed$iv$iv":I
    .local v38, "$changed$iv$iv":I
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 819
    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v8, 0x0

    .line 822
    .local v8, "propagateMinConstraints$iv":Z
    shr-int/lit8 v37, v2, 0x3

    and-int/lit8 v37, v37, 0xe

    shr-int/lit8 v39, v2, 0x3

    and-int/lit8 v39, v39, 0x70

    or-int v9, v37, v39

    invoke-static {v5, v8, v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v37, v2, 0x3

    and-int/lit8 v37, v37, 0x70

    .line 823
    nop

    .local v37, "$changed$iv$iv":I
    const/16 v39, 0x0

    move-object/from16 v40, v5

    const v5, -0x4ee9b9da

    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v39, "$i$f$Layout":I
    .local v40, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 824
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v41

    .line 825
    .local v41, "compositeKeyHash$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 827
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v42, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v42

    .line 834
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v43

    move-object/from16 v44, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v44, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v37, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 826
    move-object/from16 v45, v43

    .local v45, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v43, v42

    .local v1, "$changed$iv$iv$iv":I
    .local v43, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v42, 0x0

    .line 835
    .local v42, "$i$f$ReusableComposeNode":I
    move/from16 v46, v8

    .end local v8    # "propagateMinConstraints$iv":Z
    .local v46, "propagateMinConstraints$iv":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 836
    :cond_18
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 837
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 838
    move-object/from16 v8, v43

    .end local v43    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    .line 840
    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v43    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_19
    move-object/from16 v8, v43

    .end local v43    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 842
    :goto_f
    move-object/from16 v43, v8

    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v43    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .local v8, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v47, 0x0

    .line 829
    .local v47, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v48, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v48 .. v48}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v8, v9, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 830
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v8, v5, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 832
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    .local v14, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v48, 0x0

    .line 843
    .local v48, "$i$f$set-impl":I
    move-object/from16 v49, v8

    .local v49, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 844
    .local v50, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v51

    if-nez v51, :cond_1b

    move-object/from16 v51, v5

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v52, v9

    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v52, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_10

    :cond_1a
    move-object/from16 v9, v49

    goto :goto_11

    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_1b
    move-object/from16 v51, v5

    move-object/from16 v52, v9

    .line 845
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_10
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v9, v49

    .end local v49    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 846
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5, v14}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 848
    :goto_11
    nop

    .line 843
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 848
    nop

    .line 833
    .end local v14    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v48    # "$i$f$set-impl":I
    nop

    .line 842
    .end local v8    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v47    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 849
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v5

    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v45

    .end local v45    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v9, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v9, v5, v4, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    const v5, 0x7ab4aae9

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 851
    shr-int/lit8 v5, v1, 0x9

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed$iv":I
    move-object v8, v4

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 852
    .local v14, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v45, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v45, "$changed$iv$iv$iv":I
    const v1, -0x4ab8dd4f

    move/from16 v47, v5

    .end local v5    # "$changed$iv":I
    .local v47, "$changed$iv":I
    const-string v5, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v8, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v48, v2, 0x6

    and-int/lit8 v48, v48, 0x70

    or-int/lit8 v48, v48, 0x6

    .local v48, "$changed":I
    check-cast v5, Landroidx/compose/foundation/layout/BoxScope;

    .local v5, "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v49, v8

    .local v49, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 511
    .local v50, "$i$a$-Box-NavigationBarKt$NavigationBarItemLayout$1$1":I
    const v1, 0x245e7ac1

    move/from16 v53, v2

    .end local v2    # "$changed$iv":I
    .local v53, "$changed$iv":I
    const-string v2, "C510@22392L6:NavigationBar.kt#uh7d8r"

    move-object/from16 v54, v5

    move-object/from16 v5, v49

    .end local v49    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    .local v54, "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v1, v7, 0x6

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 852
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v48    # "$changed":I
    .end local v50    # "$i$a$-Box-NavigationBarKt$NavigationBarItemLayout$1$1":I
    .end local v54    # "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 851
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v47    # "$changed$iv":I
    nop

    .line 853
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 854
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 855
    nop

    .end local v9    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v42    # "$i$f$ReusableComposeNode":I
    .end local v43    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v45    # "$changed$iv$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 856
    nop

    .end local v37    # "$changed$iv$iv":I
    .end local v39    # "$i$f$Layout":I
    .end local v41    # "compositeKeyHash$iv$iv":I
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 857
    nop

    .end local v32    # "$i$f$Box":I
    .end local v40    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v44    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v46    # "propagateMinConstraints$iv":Z
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v53    # "$changed$iv":I
    const v1, -0x4a81faef

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "516@22556L60,513@22443L281"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 513
    if-eqz v11, :cond_24

    .line 515
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 516
    const-string/jumbo v2, "label"

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x6d71f544

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v0, 0xe000

    and-int/2addr v0, v7

    const/16 v2, 0x4000

    if-ne v0, v2, :cond_1c

    move/from16 v0, v16

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    :goto_12
    const/high16 v2, 0x70000

    and-int/2addr v2, v7

    const/high16 v5, 0x20000

    if-ne v2, v5, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v16, 0x0

    :goto_13
    or-int v0, v0, v16

    .line 517
    move-object v2, v4

    .local v0, "invalid$iv":Z
    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 858
    .local v5, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 859
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1f

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v8, v14, :cond_1e

    goto :goto_14

    .line 863
    :cond_1e
    move/from16 v16, v0

    move-object v0, v8

    goto :goto_15

    .line 860
    :cond_1f
    :goto_14
    const/4 v14, 0x0

    .line 517
    .local v14, "$i$a$-cache-NavigationBarKt$NavigationBarItemLayout$1$2":I
    move/from16 v16, v0

    .end local v0    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v0, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemLayout$1$2$1;

    invoke-direct {v0, v12, v13}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemLayout$1$2$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 860
    .end local v14    # "$i$a$-cache-NavigationBarKt$NavigationBarItemLayout$1$2":I
    nop

    .line 861
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 862
    nop

    .line 859
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_15
    nop

    .line 858
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 517
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 518
    sget v1, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemHorizontalPadding:F

    .local v1, "arg0$iv":F
    const/4 v2, 0x2

    .local v2, "other$iv":I
    const/4 v5, 0x0

    .line 864
    .local v5, "$i$f$div-u2uoSUM":I
    int-to-float v8, v2

    div-float v8, v1, v8

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 518
    .end local v1    # "arg0$iv":F
    .end local v2    # "other$iv":I
    .end local v5    # "$i$f$div-u2uoSUM":I
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x2

    invoke-static {v0, v1, v2, v8, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 514
    const/4 v1, 0x0

    move v2, v1

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "$changed$iv":I
    const/4 v1, 0x0

    const v5, 0x2bb5b5d7

    .local v1, "$i$f$Box":I
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 865
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 866
    .local v3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v5, 0x0

    .line 869
    .local v5, "propagateMinConstraints$iv":Z
    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0xe

    shr-int/lit8 v9, v2, 0x3

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v8, v9

    invoke-static {v3, v5, v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v9, v2, 0x3

    and-int/lit8 v9, v9, 0x70

    .line 870
    nop

    .local v9, "$changed$iv$iv":I
    const/4 v14, 0x0

    move/from16 p6, v1

    const v1, -0x4ee9b9da

    .end local v1    # "$i$f$Box":I
    .local v14, "$i$f$Layout":I
    .local p6, "$i$f$Box":I
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 871
    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    .line 872
    .local v1, "compositeKeyHash$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 874
    .local v6, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 881
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 v19, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v19, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v9, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 873
    move-object/from16 v21, v17

    .local v21, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v17, v16

    .local v0, "$changed$iv$iv$iv":I
    .local v17, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 882
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 v22, v3

    .end local v3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v22, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 883
    :cond_20
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 884
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 885
    move-object/from16 v3, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    .line 887
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_21
    move-object/from16 v3, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 889
    :goto_16
    move-object/from16 v17, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 876
    .local v23, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v32, v5

    .end local v5    # "propagateMinConstraints$iv":Z
    .local v32, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 877
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 879
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v26, 0x0

    .line 890
    .local v26, "$i$f$set-impl":I
    move-object/from16 v36, v3

    .local v36, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v37, 0x0

    .line 891
    .local v37, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v39

    if-nez v39, :cond_23

    move-object/from16 v39, v6

    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v39, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v40, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v40, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_17

    :cond_22
    move-object/from16 v8, v36

    goto :goto_18

    .end local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_23
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    .line 892
    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v36

    .end local v36    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 893
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 895
    :goto_18
    nop

    .line 890
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v37    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 895
    nop

    .line 880
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v26    # "$i$f$set-impl":I
    nop

    .line 889
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 896
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v21

    .end local v21    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const v3, 0x7ab4aae9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 898
    shr-int/lit8 v3, v0, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v5, v4

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 899
    .local v8, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v21, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v21, "$changed$iv$iv$iv":I
    const-string v0, "C73@3426L9:Box.kt#2w3rfo"

    move/from16 v23, v1

    const v1, -0x4ab8dd4f

    .end local v1    # "compositeKeyHash$iv$iv":I
    .local v23, "compositeKeyHash$iv$iv":I
    invoke-static {v5, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v26, v5

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 519
    .local v29, "$i$a$-Box-NavigationBarKt$NavigationBarItemLayout$1$3":I
    move-object/from16 v36, v0

    .end local v0    # "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .local v36, "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x245e7c04

    move/from16 v37, v1

    .end local v1    # "$changed":I
    .local v37, "$changed":I
    const-string v1, "C518@22715L7:NavigationBar.kt#uh7d8r"

    move/from16 v41, v2

    move-object/from16 v2, v26

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v41, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v7, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 899
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-Box-NavigationBarKt$NavigationBarItemLayout$1$3":I
    .end local v36    # "$this$NavigationBarItemLayout_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .end local v37    # "$changed":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 898
    .end local v3    # "$changed$iv":I
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 900
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 901
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 902
    nop

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v21    # "$changed$iv$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 903
    nop

    .end local v9    # "$changed$iv$iv":I
    .end local v14    # "$i$f$Layout":I
    .end local v23    # "compositeKeyHash$iv$iv":I
    .end local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 904
    nop

    .end local v19    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v22    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v32    # "propagateMinConstraints$iv":Z
    .end local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v41    # "$changed$iv":I
    .end local p6    # "$i$f$Box":I
    :cond_24
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 508
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 521
    nop

    .line 817
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-Layout-NavigationBarKt$NavigationBarItemLayout$1":I
    .end local v30    # "$changed":I
    nop

    .line 905
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 906
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 907
    nop

    .end local v25    # "$i$f$ReusableComposeNode":I
    .end local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v38    # "$changed$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 908
    nop

    .end local v18    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v20    # "compositeKeyHash$iv":I
    .end local v28    # "$changed$iv":I
    .end local v31    # "$i$f$Layout":I
    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v35    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 571
    :cond_25
    :goto_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_26

    new-instance v9, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemLayout$3;

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

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemLayout$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;I)V

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

.method public static final synthetic access$NavigationBarItem$lambda$4(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .param p0, "$itemWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem$lambda$4(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$NavigationBarItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getIndicatorHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getNavigationBarHeight$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarHeight:F

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
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/NavigationBarKt;->placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

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
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/NavigationBarKt;->placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static final getIndicatorVerticalPadding()F
    .locals 1

    .line 709
    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    return v0
.end method

.method public static final getNavigationBarIndicatorToLabelPadding()F
    .locals 1

    .line 703
    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarIndicatorToLabelPadding:F

    return v0
.end method

.method public static final getNavigationBarItemHorizontalPadding()F
    .locals 1

    .line 700
    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemHorizontalPadding:F

    return v0
.end method

.method private static final placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21
    .param p0, "$this$placeIcon_u2dX9ElhV4"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "indicatorRipplePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "indicatorPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "constraints"    # J

    .line 582
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v10

    .line 583
    .local v10, "width":I
    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarHeight:F

    move-object/from16 v11, p0

    invoke-interface {v11, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    move-wide/from16 v12, p4

    invoke-static {v12, v13, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v14

    .line 585
    .local v14, "height":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v10, v0

    div-int/lit8 v15, v0, 0x2

    .line 586
    .local v15, "iconX":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v14, v0

    div-int/lit8 v16, v0, 0x2

    .line 588
    .local v16, "iconY":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v10, v0

    div-int/lit8 v17, v0, 0x2

    .line 589
    .local v17, "rippleX":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v14, v0

    div-int/lit8 v18, v0, 0x2

    .line 591
    .local v18, "rippleY":I
    const/16 v19, 0x0

    new-instance v20, Landroidx/compose/material3/NavigationBarKt$placeIcon$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, p2

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v10

    move v9, v14

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/NavigationBarKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IIII)V

    move-object/from16 v4, v20

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v14

    move-object/from16 v3, v19

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
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

    .line 643
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v1

    add-float/2addr v0, v1

    .line 644
    sget v1, Landroidx/compose/material3/NavigationBarKt;->NavigationBarIndicatorToLabelPadding:F

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v1

    .line 643
    add-float/2addr v0, v1

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 643
    add-float v16, v0, v1

    .line 645
    .local v16, "contentHeight":F
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v0, v16

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 646
    sget v3, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    invoke-interface {v15, v3}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 645
    move/from16 v17, v0

    .line 647
    .local v17, "contentVerticalPadding":F
    mul-float v0, v17, v2

    add-float v18, v16, v0

    .line 650
    .local v18, "height":F
    move/from16 v19, v17

    .line 652
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

    .line 651
    :goto_0
    move/from16 v20, v0

    .line 655
    .local v20, "unselectedIconY":F
    sub-float v21, v20, v19

    .line 659
    .local v21, "iconDistance":F
    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float v0, v0, p8

    mul-float v22, v21, v0

    .line 662
    .local v22, "offset":F
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v19, v0

    sget v2, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    add-float/2addr v0, v2

    .line 663
    sget v2, Landroidx/compose/material3/NavigationBarKt;->NavigationBarIndicatorToLabelPadding:F

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    .line 662
    add-float v23, v0, v2

    .line 665
    .local v23, "labelY":F
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v24

    .line 667
    .local v24, "containerWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v24, v0

    div-int/lit8 v25, v0, 0x2

    .line 668
    .local v25, "labelX":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v24, v0

    div-int/lit8 v26, v0, 0x2

    .line 670
    .local v26, "iconX":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v24, v0

    div-int/lit8 v27, v0, 0x2

    .line 671
    .local v27, "rippleX":I
    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v0

    sub-float v28, v19, v0

    .line 673
    .local v28, "rippleY":F
    invoke-static/range {v18 .. v18}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v29

    const/16 v30, 0x0

    new-instance v31, Landroidx/compose/material3/NavigationBarKt$placeLabelAndIcon$1;

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

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/NavigationBarKt$placeLabelAndIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/ui/layout/Placeable;IFFLandroidx/compose/ui/layout/Placeable;IFLandroidx/compose/ui/layout/Placeable;IFILandroidx/compose/ui/layout/MeasureScope;)V

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
