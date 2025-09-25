.class public final Landroidx/compose/material3/ListItemKt;
.super Ljava/lang/Object;
.source "ListItem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material3/ListItemKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,581:1\n74#2:582\n1116#3,6:583\n1116#3,6:597\n166#4,7:589\n78#4,11:603\n91#4:634\n174#4:635\n36#5:596\n456#5,8:614\n464#5,6:628\n3737#6,6:622\n51#7:636\n51#7:637\n154#8:638\n154#8:639\n154#8:640\n154#8:641\n154#8:642\n154#8:643\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material3/ListItemKt\n*L\n169#1:582\n178#1:583,6\n170#1:597,6\n170#1:589,7\n170#1:603,11\n170#1:634\n170#1:635\n170#1:596\n170#1:614,8\n170#1:628,6\n170#1:622,6\n289#1:636\n320#1:637\n561#1:638\n564#1:639\n567#1:640\n570#1:641\n575#1:642\n580#1:643\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a\u00a9\u0001\u0010\u0016\u001a\u00020\u00172\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00170\u0019\u00a2\u0006\u0002\u0008\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0015\u0008\u0002\u0010\u001d\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0015\u0008\u0002\u0010\u001e\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0015\u0008\u0002\u0010\u001f\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0015\u0008\u0002\u0010 \u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020\u0001H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001at\u0010\'\u001a\u00020\u00172\u0013\u0010(\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00170\u0019\u00a2\u0006\u0002\u0008\u001a2\u0013\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001a2\u0013\u0010,\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0019\u00a2\u0006\u0002\u0008\u001aH\u0003\u00a2\u0006\u0002\u0010-\u001a5\u0010.\u001a\u00020\u00172\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0011\u00103\u001a\r\u0012\u0004\u0012\u00020\u00170\u0019\u00a2\u0006\u0002\u0008\u001aH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001a`\u00106\u001a\u000207*\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010:2\u0008\u0010<\u001a\u0004\u0018\u00010:2\u0008\u0010=\u001a\u0004\u0018\u00010:2\u0008\u0010>\u001a\u0004\u0018\u00010:2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010F\u001a`\u0010G\u001a\u000207*\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010:2\u0008\u0010<\u001a\u0004\u0018\u00010:2\u0008\u0010=\u001a\u0004\u0018\u00010:2\u0008\u0010>\u001a\u0004\u0018\u00010:2\u0006\u0010H\u001a\u00020I2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008J\u0010K\u001af\u0010L\u001a\u00020M*\u0002082\u0006\u0010N\u001a\u0002072\u0006\u0010O\u001a\u0002072\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010:2\u0008\u0010<\u001a\u0004\u0018\u00010:2\u0008\u0010=\u001a\u0004\u0018\u00010:2\u0008\u0010>\u001a\u0004\u0018\u00010:2\u0006\u0010P\u001a\u00020Q2\u0006\u0010H\u001a\u00020I2\u0006\u0010A\u001a\u00020BH\u0002\"\u001e\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0006\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u001e\u0010\u0007\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0006\u0012\u0004\u0008\u0008\u0010\u0003\u001a\u0004\u0008\t\u0010\u0005\"\u001e\u0010\n\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0006\u0012\u0004\u0008\u000b\u0010\u0003\u001a\u0004\u0008\u000c\u0010\u0005\"\u001e\u0010\r\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0006\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0005\"\u001e\u0010\u0010\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0006\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0005\"\u001e\u0010\u0013\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0006\u0012\u0004\u0008\u0014\u0010\u0003\u001a\u0004\u0008\u0015\u0010\u0005\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006R"
    }
    d2 = {
        "LeadingContentEndPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "getLeadingContentEndPadding$annotations",
        "()V",
        "getLeadingContentEndPadding",
        "()F",
        "F",
        "ListItemEndPadding",
        "getListItemEndPadding$annotations",
        "getListItemEndPadding",
        "ListItemStartPadding",
        "getListItemStartPadding$annotations",
        "getListItemStartPadding",
        "ListItemThreeLineVerticalPadding",
        "getListItemThreeLineVerticalPadding$annotations",
        "getListItemThreeLineVerticalPadding",
        "ListItemVerticalPadding",
        "getListItemVerticalPadding$annotations",
        "getListItemVerticalPadding",
        "TrailingContentStartPadding",
        "getTrailingContentStartPadding$annotations",
        "getTrailingContentStartPadding",
        "ListItem",
        "",
        "headlineContent",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "overlineContent",
        "supportingContent",
        "leadingContent",
        "trailingContent",
        "colors",
        "Landroidx/compose/material3/ListItemColors;",
        "tonalElevation",
        "shadowElevation",
        "ListItem-HXNGIdc",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;FFLandroidx/compose/runtime/Composer;II)V",
        "ListItemLayout",
        "leading",
        "trailing",
        "headline",
        "overline",
        "supporting",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "ProvideTextStyleFromToken",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "textToken",
        "Landroidx/compose/material3/tokens/TypographyKeyTokens;",
        "content",
        "ProvideTextStyleFromToken-3J-VO9M",
        "(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "calculateHeight",
        "",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "leadingPlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "trailingPlaceable",
        "headlinePlaceable",
        "overlinePlaceable",
        "supportingPlaceable",
        "listItemType",
        "Landroidx/compose/material3/ListItemType;",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "calculateHeight-N4Jib3Y",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/PaddingValues;J)I",
        "calculateWidth",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "calculateWidth-xygx4p4",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;J)I",
        "place",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "width",
        "height",
        "isThreeLine",
        "",
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
.field private static final LeadingContentEndPadding:F

.field private static final ListItemEndPadding:F

.field private static final ListItemStartPadding:F

.field private static final ListItemThreeLineVerticalPadding:F

.field private static final ListItemVerticalPadding:F

.field private static final TrailingContentStartPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 561
    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 638
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 561
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ListItemKt;->ListItemVerticalPadding:F

    .line 564
    const/16 v0, 0xc

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 639
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 564
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ListItemKt;->ListItemThreeLineVerticalPadding:F

    .line 567
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 640
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 567
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ListItemKt;->ListItemStartPadding:F

    .line 570
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 641
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 570
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ListItemKt;->ListItemEndPadding:F

    .line 575
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 642
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 575
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ListItemKt;->LeadingContentEndPadding:F

    .line 580
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 643
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 580
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ListItemKt;->TrailingContentStartPadding:F

    return-void
.end method

.method public static final ListItem-HXNGIdc(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;FFLandroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p0, "headlineContent"    # Lkotlin/jvm/functions/Function2;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "overlineContent"    # Lkotlin/jvm/functions/Function2;
    .param p3, "supportingContent"    # Lkotlin/jvm/functions/Function2;
    .param p4, "leadingContent"    # Lkotlin/jvm/functions/Function2;
    .param p5, "trailingContent"    # Lkotlin/jvm/functions/Function2;
    .param p6, "colors"    # Landroidx/compose/material3/ListItemColors;
    .param p7, "tonalElevation"    # F
    .param p8, "shadowElevation"    # F
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
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
            "Landroidx/compose/material3/ListItemColors;",
            "FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 93
    move-object/from16 v12, p0

    move/from16 v13, p10

    move/from16 v11, p11

    const v0, -0x62360673

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ListItem)P(1,3,4,6,2,8!1,7:c#ui.unit.Dp,5:c#ui.unit.Dp)89@4308L8,144@6169L5,140@6019L637:ListItem.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x30

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, v11, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v13, 0xc00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v8, v11, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v9, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v9, v13, 0x6000

    if-nez v9, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v9, p4

    :goto_9
    and-int/lit8 v14, v11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v1, v15

    move-object/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int/2addr v15, v13

    if-nez v15, :cond_11

    move-object/from16 v15, p5

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v15, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v13, v16

    if-nez v16, :cond_14

    and-int/lit8 v16, v11, 0x40

    if-nez v16, :cond_12

    move-object/from16 v0, p6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v0, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v0, p6

    :goto_d
    and-int/lit16 v15, v11, 0x80

    const/high16 v36, 0xc00000

    if-eqz v15, :cond_15

    or-int v1, v1, v36

    move/from16 v16, v15

    move/from16 v15, p7

    goto :goto_f

    :cond_15
    and-int v16, v13, v36

    if-nez v16, :cond_17

    move/from16 v16, v15

    move/from16 v15, p7

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    move/from16 v16, v15

    move/from16 v15, p7

    :goto_f
    and-int/lit16 v15, v11, 0x100

    const/high16 v17, 0x6000000

    if-eqz v15, :cond_18

    or-int v1, v1, v17

    move/from16 v17, v15

    move/from16 v15, p8

    goto :goto_11

    :cond_18
    and-int v17, v13, v17

    if-nez v17, :cond_1a

    move/from16 v17, v15

    move/from16 v15, p8

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    move/from16 v17, v15

    move/from16 v15, p8

    :goto_11
    const v18, 0x2492493

    and-int v0, v1, v18

    const v3, 0x2492492

    if-ne v0, v3, :cond_1c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    .line 159
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v14, p1

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move/from16 v20, p7

    move/from16 v22, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move/from16 v21, v15

    move-object v15, v5

    goto/16 :goto_1d

    .line 93
    :cond_1c
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v3, -0x380001

    if-eqz v0, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_13

    .line 92
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1e

    and-int/2addr v1, v3

    :cond_1e
    move-object/from16 v0, p1

    move-object/from16 v2, p5

    move-object/from16 v8, p6

    move/from16 v3, p7

    move v4, v15

    goto/16 :goto_18

    .line 93
    :cond_1f
    :goto_13
    if-eqz v2, :cond_20

    .line 85
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 93
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_20
    move-object/from16 v0, p1

    .line 85
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v4, :cond_21

    .line 86
    const/4 v2, 0x0

    move-object v5, v2

    .end local p2    # "overlineContent":Lkotlin/jvm/functions/Function2;
    .local v5, "overlineContent":Lkotlin/jvm/functions/Function2;
    :cond_21
    if-eqz v6, :cond_22

    .line 87
    const/4 v2, 0x0

    move-object v7, v2

    .end local p3    # "supportingContent":Lkotlin/jvm/functions/Function2;
    .local v7, "supportingContent":Lkotlin/jvm/functions/Function2;
    :cond_22
    if-eqz v8, :cond_23

    .line 88
    const/4 v2, 0x0

    move-object v9, v2

    .end local p4    # "leadingContent":Lkotlin/jvm/functions/Function2;
    .local v9, "leadingContent":Lkotlin/jvm/functions/Function2;
    :cond_23
    if-eqz v14, :cond_24

    .line 89
    const/4 v2, 0x0

    .end local p5    # "trailingContent":Lkotlin/jvm/functions/Function2;
    .local v2, "trailingContent":Lkotlin/jvm/functions/Function2;
    goto :goto_15

    .line 88
    .end local v2    # "trailingContent":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "trailingContent":Lkotlin/jvm/functions/Function2;
    :cond_24
    move-object/from16 v2, p5

    .line 89
    .end local p5    # "trailingContent":Lkotlin/jvm/functions/Function2;
    .restart local v2    # "trailingContent":Lkotlin/jvm/functions/Function2;
    :goto_15
    and-int/lit8 v4, v11, 0x40

    if-eqz v4, :cond_25

    .line 90
    sget-object v14, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    const-wide/16 v18, 0x0

    move/from16 v4, v16

    move/from16 v6, v17

    move-wide/from16 v15, v18

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/high16 v34, 0x30000000

    const/16 v35, 0x1ff

    move-object/from16 v33, v10

    invoke-virtual/range {v14 .. v35}, Landroidx/compose/material3/ListItemDefaults;->colors-J08w3-E(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ListItemColors;

    move-result-object v8

    .end local p6    # "colors":Landroidx/compose/material3/ListItemColors;
    .local v8, "colors":Landroidx/compose/material3/ListItemColors;
    and-int/2addr v1, v3

    goto :goto_16

    .line 89
    .end local v8    # "colors":Landroidx/compose/material3/ListItemColors;
    .restart local p6    # "colors":Landroidx/compose/material3/ListItemColors;
    :cond_25
    move/from16 v4, v16

    move/from16 v6, v17

    move-object/from16 v8, p6

    .line 90
    .end local p6    # "colors":Landroidx/compose/material3/ListItemColors;
    .restart local v8    # "colors":Landroidx/compose/material3/ListItemColors;
    :goto_16
    if-eqz v4, :cond_26

    .line 91
    sget-object v3, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ListItemDefaults;->getElevation-D9Ej5fM()F

    move-result v3

    .end local p7    # "tonalElevation":F
    .local v3, "tonalElevation":F
    goto :goto_17

    .line 90
    .end local v3    # "tonalElevation":F
    .restart local p7    # "tonalElevation":F
    :cond_26
    move/from16 v3, p7

    .line 91
    .end local p7    # "tonalElevation":F
    .restart local v3    # "tonalElevation":F
    :goto_17
    if-eqz v6, :cond_27

    .line 92
    sget-object v4, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/ListItemDefaults;->getElevation-D9Ej5fM()F

    move-result v4

    .end local p8    # "shadowElevation":F
    .local v4, "shadowElevation":F
    goto :goto_18

    .line 91
    .end local v4    # "shadowElevation":F
    .restart local p8    # "shadowElevation":F
    :cond_27
    move/from16 v4, p8

    .line 92
    .end local p8    # "shadowElevation":F
    .restart local v4    # "shadowElevation":F
    :goto_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 93
    const/4 v6, -0x1

    const-string/jumbo v14, "androidx.compose.material3.ListItem (ListItem.kt:92)"

    const v15, -0x62360673

    invoke-static {v15, v1, v6, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 94
    :cond_28
    new-instance v6, Landroidx/compose/material3/ListItemKt$ListItem$decoratedHeadlineContent$1;

    invoke-direct {v6, v8, v12}, Landroidx/compose/material3/ListItemKt$ListItem$decoratedHeadlineContent$1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;)V

    const v14, -0x180919eb

    const/4 v15, 0x1

    invoke-static {v10, v14, v15, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 101
    .local v6, "decoratedHeadlineContent":Lkotlin/jvm/functions/Function2;
    if-eqz v7, :cond_29

    move-object/from16 p1, v7

    .local p1, "it":Lkotlin/jvm/functions/Function2;
    const/16 v16, 0x0

    .line 102
    .local v16, "$i$a$-let-ListItemKt$ListItem$decoratedSupportingContent$1":I
    new-instance v14, Landroidx/compose/material3/ListItemKt$ListItem$decoratedSupportingContent$1$1;

    move-object/from16 v15, p1

    .end local p1    # "it":Lkotlin/jvm/functions/Function2;
    .local v15, "it":Lkotlin/jvm/functions/Function2;
    invoke-direct {v14, v8, v15}, Landroidx/compose/material3/ListItemKt$ListItem$decoratedSupportingContent$1$1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 p8, v7

    .end local v7    # "supportingContent":Lkotlin/jvm/functions/Function2;
    .local p8, "supportingContent":Lkotlin/jvm/functions/Function2;
    const v7, -0x3cd9175b

    const/4 v11, 0x1

    invoke-static {v10, v7, v11, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 101
    .end local v15    # "it":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$a$-let-ListItemKt$ListItem$decoratedSupportingContent$1":I
    goto :goto_19

    .end local p8    # "supportingContent":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "supportingContent":Lkotlin/jvm/functions/Function2;
    :cond_29
    move-object/from16 p8, v7

    .end local v7    # "supportingContent":Lkotlin/jvm/functions/Function2;
    .restart local p8    # "supportingContent":Lkotlin/jvm/functions/Function2;
    const/4 v7, 0x0

    :goto_19
    move-object/from16 p6, v7

    .line 110
    .local p6, "decoratedSupportingContent":Lkotlin/jvm/functions/Function2;
    if-eqz v5, :cond_2a

    move-object v7, v5

    .local v7, "it":Lkotlin/jvm/functions/Function2;
    const/4 v11, 0x0

    .line 111
    .local v11, "$i$a$-let-ListItemKt$ListItem$decoratedOverlineContent$1":I
    new-instance v14, Landroidx/compose/material3/ListItemKt$ListItem$decoratedOverlineContent$1$1;

    invoke-direct {v14, v8, v7}, Landroidx/compose/material3/ListItemKt$ListItem$decoratedOverlineContent$1$1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;)V

    const v15, -0x2d907290

    move-object/from16 p9, v5

    const/4 v5, 0x1

    .end local v5    # "overlineContent":Lkotlin/jvm/functions/Function2;
    .local p9, "overlineContent":Lkotlin/jvm/functions/Function2;
    invoke-static {v10, v15, v5, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 110
    .end local v7    # "it":Lkotlin/jvm/functions/Function2;
    .end local v11    # "$i$a$-let-ListItemKt$ListItem$decoratedOverlineContent$1":I
    goto :goto_1a

    .end local p9    # "overlineContent":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "overlineContent":Lkotlin/jvm/functions/Function2;
    :cond_2a
    move-object/from16 p9, v5

    .end local v5    # "overlineContent":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "overlineContent":Lkotlin/jvm/functions/Function2;
    const/4 v14, 0x0

    :goto_1a
    move-object/from16 p5, v14

    .line 119
    .local p5, "decoratedOverlineContent":Lkotlin/jvm/functions/Function2;
    if-eqz v9, :cond_2b

    move-object v5, v9

    .local v5, "it":Lkotlin/jvm/functions/Function2;
    const/4 v7, 0x0

    .line 120
    .local v7, "$i$a$-let-ListItemKt$ListItem$decoratedLeadingContent$1":I
    new-instance v11, Landroidx/compose/material3/ListItemKt$ListItem$decoratedLeadingContent$1$1;

    invoke-direct {v11, v8, v5}, Landroidx/compose/material3/ListItemKt$ListItem$decoratedLeadingContent$1$1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;)V

    const v14, 0x537a1310

    const/4 v15, 0x1

    invoke-static {v10, v14, v15, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 119
    .end local v5    # "it":Lkotlin/jvm/functions/Function2;
    .end local v7    # "$i$a$-let-ListItemKt$ListItem$decoratedLeadingContent$1":I
    goto :goto_1b

    :cond_2b
    const/4 v11, 0x0

    :goto_1b
    move-object/from16 p2, v11

    .line 129
    .local p2, "decoratedLeadingContent":Lkotlin/jvm/functions/Function2;
    if-eqz v2, :cond_2c

    move-object v5, v2

    .restart local v5    # "it":Lkotlin/jvm/functions/Function2;
    const/4 v7, 0x0

    .line 130
    .local v7, "$i$a$-let-ListItemKt$ListItem$decoratedTrailingContent$1":I
    new-instance v11, Landroidx/compose/material3/ListItemKt$ListItem$decoratedTrailingContent$1$1;

    invoke-direct {v11, v8, v5}, Landroidx/compose/material3/ListItemKt$ListItem$decoratedTrailingContent$1$1;-><init>(Landroidx/compose/material3/ListItemColors;Lkotlin/jvm/functions/Function2;)V

    const v14, 0x5a23f69c

    const/4 v15, 0x1

    invoke-static {v10, v14, v15, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 129
    .end local v5    # "it":Lkotlin/jvm/functions/Function2;
    .end local v7    # "$i$a$-let-ListItemKt$ListItem$decoratedTrailingContent$1":I
    goto :goto_1c

    :cond_2c
    const/4 v11, 0x0

    :goto_1c
    move-object/from16 p3, v11

    .line 142
    .local p3, "decoratedTrailingContent":Lkotlin/jvm/functions/Function2;
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 143
    sget-object v7, Landroidx/compose/material3/ListItemKt$ListItem$1;->INSTANCE:Landroidx/compose/material3/ListItemKt$ListItem$1;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x1

    invoke-static {v5, v11, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 144
    invoke-interface {v5, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 145
    sget-object v5, Landroidx/compose/material3/ListItemDefaults;->INSTANCE:Landroidx/compose/material3/ListItemDefaults;

    const/4 v7, 0x6

    invoke-virtual {v5, v10, v7}, Landroidx/compose/material3/ListItemDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v15

    .line 146
    invoke-virtual {v8}, Landroidx/compose/material3/ListItemColors;->containerColor-0d7_KjU$material3_release()J

    move-result-wide v16

    .line 147
    invoke-virtual {v8, v11}, Landroidx/compose/material3/ListItemColors;->headlineColor-vNxB06k$material3_release(Z)J

    move-result-wide v18

    .line 148
    nop

    .line 149
    const/16 v22, 0x0

    .line 150
    new-instance v5, Landroidx/compose/material3/ListItemKt$ListItem$2;

    move-object/from16 p1, v5

    move-object/from16 p4, v6

    invoke-direct/range {p1 .. p6}, Landroidx/compose/material3/ListItemKt$ListItem$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v7, 0x598fb5a8

    invoke-static {v10, v7, v11, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v5, v1, 0x9

    const v7, 0xe000

    and-int/2addr v5, v7

    or-int v5, v5, v36

    const/high16 v7, 0x70000

    shr-int/lit8 v11, v1, 0x9

    and-int/2addr v7, v11

    or-int v25, v5, v7

    const/16 v26, 0x40

    .line 141
    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v24, v10

    invoke-static/range {v14 .. v26}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 159
    .end local v6    # "decoratedHeadlineContent":Lkotlin/jvm/functions/Function2;
    .end local p2    # "decoratedLeadingContent":Lkotlin/jvm/functions/Function2;
    .end local p3    # "decoratedTrailingContent":Lkotlin/jvm/functions/Function2;
    .end local p5    # "decoratedOverlineContent":Lkotlin/jvm/functions/Function2;
    .end local p6    # "decoratedSupportingContent":Lkotlin/jvm/functions/Function2;
    :cond_2d
    move-object/from16 v16, p8

    move-object/from16 v15, p9

    move-object v14, v0

    move/from16 v22, v1

    move-object/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "$dirty":I
    .end local v2    # "trailingContent":Lkotlin/jvm/functions/Function2;
    .end local v3    # "tonalElevation":F
    .end local v4    # "shadowElevation":F
    .end local v8    # "colors":Landroidx/compose/material3/ListItemColors;
    .end local v9    # "leadingContent":Lkotlin/jvm/functions/Function2;
    .end local p8    # "supportingContent":Lkotlin/jvm/functions/Function2;
    .end local p9    # "overlineContent":Lkotlin/jvm/functions/Function2;
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "overlineContent":Lkotlin/jvm/functions/Function2;
    .local v16, "supportingContent":Lkotlin/jvm/functions/Function2;
    .local v17, "leadingContent":Lkotlin/jvm/functions/Function2;
    .local v18, "trailingContent":Lkotlin/jvm/functions/Function2;
    .local v19, "colors":Landroidx/compose/material3/ListItemColors;
    .local v20, "tonalElevation":F
    .local v21, "shadowElevation":F
    .local v22, "$dirty":I
    :goto_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_2e

    new-instance v23, Landroidx/compose/material3/ListItemKt$ListItem$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v24, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    move-object v12, v11

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ListItemKt$ListItem$3;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;FFII)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1e

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2e
    move-object/from16 v24, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1e
    return-void
.end method

.method private static final ListItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 31
    .param p0, "leading"    # Lkotlin/jvm/functions/Function2;
    .param p1, "trailing"    # Lkotlin/jvm/functions/Function2;
    .param p2, "headline"    # Lkotlin/jvm/functions/Function2;
    .param p3, "overline"    # Lkotlin/jvm/functions/Function2;
    .param p4, "supporting"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
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

    .line 168
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p6

    const v0, 0x7a53914d

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ListItemLayout)P(1,4)168@6954L7,177@7152L3807,169@6966L3993:ListItem.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v2, :cond_1

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v12, 0x180

    if-nez v2, :cond_5

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v12, 0xc00

    if-nez v2, :cond_7

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v12, 0x6000

    if-nez v2, :cond_9

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit16 v1, v14, 0x2493

    const/16 v2, 0x2492

    if-ne v1, v2, :cond_b

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 273
    :cond_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_11

    .line 168
    :cond_b
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ListItemLayout (ListItem.kt:167)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 169
    :cond_c
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 582
    .local v2, "$i$f$getCurrent":I
    const v5, 0x789c5f52

    const-string v6, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 169
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 172
    .local v0, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const/4 v1, 0x5

    new-array v1, v1, [Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    .line 173
    if-nez v10, :cond_d

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ListItemKt;

    invoke-virtual {v5}, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    goto :goto_6

    :cond_d
    move-object v5, v10

    :goto_6
    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 172
    nop

    .line 174
    if-nez v11, :cond_e

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ListItemKt;

    invoke-virtual {v5}, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    goto :goto_7

    :cond_e
    move-object v5, v11

    :goto_7
    aput-object v5, v1, v4

    .line 172
    nop

    .line 175
    if-nez v7, :cond_f

    sget-object v4, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ListItemKt;

    invoke-virtual {v4}, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->getLambda-3$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    goto :goto_8

    :cond_f
    move-object v4, v7

    :goto_8
    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 172
    nop

    .line 176
    if-nez v8, :cond_10

    sget-object v4, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ListItemKt;

    invoke-virtual {v4}, Landroidx/compose/material3/ComposableSingletons$ListItemKt;->getLambda-4$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    goto :goto_9

    :cond_10
    move-object v4, v8

    :goto_9
    aput-object v4, v1, v3

    .line 172
    nop

    .line 171
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const v3, 0x512467b2

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):ListItem.kt#9igjgp"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 178
    move-object v4, v13

    .local v3, "invalid$iv":Z
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 583
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 584
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_12

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v6, v2, :cond_11

    goto :goto_a

    .line 588
    :cond_11
    move-object v2, v6

    goto :goto_b

    .line 585
    :cond_12
    :goto_a
    const/4 v2, 0x0

    .line 178
    .local v2, "$i$a$-cache-ListItemKt$ListItemLayout$1":I
    move/from16 v16, v2

    .end local v2    # "$i$a$-cache-ListItemKt$ListItemLayout$1":I
    .local v16, "$i$a$-cache-ListItemKt$ListItemLayout$1":I
    new-instance v2, Landroidx/compose/material3/ListItemKt$ListItemLayout$1$1;

    invoke-direct {v2, v0}, Landroidx/compose/material3/ListItemKt$ListItemLayout$1$1;-><init>(Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v2, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 585
    .end local v16    # "$i$a$-cache-ListItemKt$ListItemLayout$1":I
    nop

    .line 586
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 587
    nop

    .line 584
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 583
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 178
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v2, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 170
    const/4 v3, 0x0

    move v4, v3

    .local v1, "contents$iv":Ljava/util/List;
    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local v4, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Layout":I
    const v5, 0x5365e06c

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Layout)P(!1,2)171@6874L62,168@6760L182:Layout.kt#80mrfh"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 589
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 593
    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v6

    shr-int/lit8 v15, v4, 0x6

    and-int/lit8 v15, v15, 0xe

    .line 595
    nop

    .local v15, "$changed$iv$iv":I
    const/16 v16, 0x0

    move-object/from16 v17, v0

    .end local v0    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v16, "$i$f$remember":I
    .local v17, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const v0, 0x44faf204

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 596
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv$iv$iv":Z
    move-object/from16 v18, v13

    .local v18, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 597
    .local v19, "$i$f$cache":I
    move-object/from16 v20, v1

    .end local v1    # "contents$iv":Ljava/util/List;
    .local v20, "contents$iv":Ljava/util/List;
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 598
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v0, :cond_14

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v23, v0

    .end local v0    # "invalid$iv$iv$iv":Z
    .local v23, "invalid$iv$iv$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_13

    goto :goto_c

    .line 602
    :cond_13
    move-object v0, v1

    move-object/from16 v22, v0

    move-object/from16 v1, v18

    goto :goto_d

    .line 598
    .end local v23    # "invalid$iv$iv$iv":Z
    .restart local v0    # "invalid$iv$iv$iv":Z
    :cond_14
    move/from16 v23, v0

    .line 599
    .end local v0    # "invalid$iv$iv$iv":Z
    .restart local v23    # "invalid$iv$iv$iv":Z
    :goto_c
    const/4 v0, 0x0

    .line 595
    .local v0, "$i$a$-remember-LayoutKt$Layout$3$iv":I
    invoke-static {v2}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .line 599
    .end local v0    # "$i$a$-remember-LayoutKt$Layout$3$iv":I
    nop

    .line 600
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v22, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 601
    nop

    .line 598
    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_d
    nop

    .line 597
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v22    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 596
    .end local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local v23    # "invalid$iv$iv$iv":Z
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v15    # "$changed$iv$iv":I
    .end local v16    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    and-int/lit8 v1, v4, 0x70

    .line 592
    nop

    .local v0, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v1, "$changed$iv$iv":I
    .local v6, "content$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v15, 0x0

    move-object/from16 v16, v2

    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local v15, "$i$f$Layout":I
    .local v16, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    const v2, -0x4ee9b9da

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 603
    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    .line 604
    .local v2, "compositeKeyHash$iv$iv":I
    move/from16 p5, v3

    .end local v3    # "$i$f$Layout":I
    .local p5, "$i$f$Layout":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 606
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 613
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    move/from16 v21, v4

    .end local v4    # "$changed$iv":I
    .local v21, "$changed$iv":I
    shl-int/lit8 v4, v1, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/lit8 v4, v4, 0x6

    .line 605
    nop

    .local v4, "$changed$iv$iv$iv":I
    move-object/from16 v22, v19

    .local v22, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v19, v18

    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 614
    .local v18, "$i$f$ReusableComposeNode":I
    move/from16 v23, v1

    .end local v1    # "$changed$iv$iv":I
    .local v23, "$changed$iv$iv":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 615
    :cond_15
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 616
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 617
    move-object/from16 v1, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 619
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_16
    move-object/from16 v1, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 621
    :goto_e
    move-object/from16 v19, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 608
    .local v24, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v5

    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v26, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 609
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 611
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v25, 0x0

    .line 622
    .local v25, "$i$f$set-impl":I
    move-object/from16 v27, v1

    .local v27, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 623
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_18

    move-object/from16 v29, v0

    .end local v0    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v29, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v3, v27

    goto :goto_10

    .end local v29    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v0    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_18
    move-object/from16 v29, v0

    move-object/from16 v30, v3

    .line 624
    .end local v0    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v29    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v27

    .end local v27    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 625
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 627
    :goto_10
    nop

    .line 622
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 627
    nop

    .line 612
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v25    # "$i$f$set-impl":I
    nop

    .line 621
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 628
    invoke-static {v13}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v4, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v22

    .end local v22    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v0, v13, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const v0, 0x7ab4aae9

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 630
    shr-int/lit8 v0, v4, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v13, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 632
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 633
    nop

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v4    # "$changed$iv$iv$iv":I
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 634
    nop

    .end local v2    # "compositeKeyHash$iv$iv":I
    .end local v6    # "content$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v15    # "$i$f$Layout":I
    .end local v23    # "$changed$iv$iv":I
    .end local v29    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 635
    nop

    .end local v16    # "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local v20    # "contents$iv":Ljava/util/List;
    .end local v21    # "$changed$iv":I
    .end local v26    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "$i$f$Layout":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 273
    .end local v17    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    :cond_19
    :goto_11
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_1a

    new-instance v16, Landroidx/compose/material3/ListItemKt$ListItemLayout$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt$ListItemLayout$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method private static final ProvideTextStyleFromToken-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p0, "color"    # J
    .param p2, "textToken"    # Landroidx/compose/material3/tokens/TypographyKeyTokens;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/material3/tokens/TypographyKeyTokens;",
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

    .line 519
    const v0, 0x4396f9b3

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(ProvideTextStyleFromToken)P(0:c#ui.graphics.Color,2)520@20833L10,518@20747L142:ListItem.kt#uh7d8r"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x6

    if-nez v2, :cond_1

    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p5, 0x30

    if-nez v2, :cond_3

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p5, 0x180

    if-nez v2, :cond_5

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    move v7, v1

    .end local v1    # "$dirty":I
    .local v7, "$dirty":I
    and-int/lit16 v1, v7, 0x93

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 523
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 519
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ProvideTextStyleFromToken (ListItem.kt:518)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 520
    :cond_8
    nop

    .line 521
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p4, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 522
    and-int/lit8 v0, v7, 0xe

    and-int/lit16 v1, v7, 0x380

    or-int v6, v0, v1

    .line 519
    move-wide v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ProvideContentColorTextStyleKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 523
    :cond_9
    :goto_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v8, Landroidx/compose/material3/ListItemKt$ProvideTextStyleFromToken$1;

    move-object v1, v8

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/ListItemKt$ProvideTextStyleFromToken$1;-><init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;I)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method public static final synthetic access$ListItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "leading"    # Lkotlin/jvm/functions/Function2;
    .param p1, "trailing"    # Lkotlin/jvm/functions/Function2;
    .param p2, "headline"    # Lkotlin/jvm/functions/Function2;
    .param p3, "overline"    # Lkotlin/jvm/functions/Function2;
    .param p4, "supporting"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/ListItemKt;->ListItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ProvideTextStyleFromToken-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "color"    # J
    .param p2, "textToken"    # Landroidx/compose/material3/tokens/TypographyKeyTokens;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ListItemKt;->ProvideTextStyleFromToken-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/PaddingValues;J)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "leadingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "trailingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "headlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "overlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "supportingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p6, "listItemType"    # I
    .param p7, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "constraints"    # J

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ListItemKt;->calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/PaddingValues;J)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$calculateWidth-xygx4p4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;J)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "leadingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "trailingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "headlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "overlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "supportingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p6, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p7, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "constraints"    # J

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/ListItemKt;->calculateWidth-xygx4p4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;J)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$place(Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leadingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "trailingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "headlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p6, "overlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p7, "supportingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p8, "isThreeLine"    # Z
    .param p9, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p10, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;

    .line 1
    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/ListItemKt;->place(Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/PaddingValues;J)I
    .locals 9
    .param p0, "$this$calculateHeight_u2dN4Jib3Y"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "leadingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "trailingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "headlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "overlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "supportingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p6, "listItemType"    # I
    .param p7, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "constraints"    # J

    .line 312
    move-object v0, p0

    move v1, p6

    .line 313
    sget-object v2, Landroidx/compose/material3/ListItemType;->Companion:Landroidx/compose/material3/ListItemType$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/ListItemType$Companion;->getOneLine-AlXitO8()I

    move-result v2

    invoke-static {p6, v2}, Landroidx/compose/material3/ListItemType;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->INSTANCE:Landroidx/compose/material3/tokens/ListTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemOneLineContainerHeight-D9Ej5fM()F

    move-result v2

    goto :goto_0

    .line 314
    :cond_0
    sget-object v2, Landroidx/compose/material3/ListItemType;->Companion:Landroidx/compose/material3/ListItemType$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/ListItemType$Companion;->getTwoLine-AlXitO8()I

    move-result v2

    invoke-static {p6, v2}, Landroidx/compose/material3/ListItemType;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->INSTANCE:Landroidx/compose/material3/tokens/ListTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemTwoLineContainerHeight-D9Ej5fM()F

    move-result v2

    goto :goto_0

    .line 315
    :cond_1
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->INSTANCE:Landroidx/compose/material3/tokens/ListTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemThreeLineContainerHeight-D9Ej5fM()F

    move-result v2

    .line 312
    :goto_0
    nop

    .line 317
    .local v2, "defaultMinHeight":F
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-interface {p0, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 320
    .local v3, "minHeight":I
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v4

    .local v4, "arg0$iv":F
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v5

    .local v5, "other$iv":F
    const/4 v6, 0x0

    .line 637
    .local v6, "$i$f$plus-5rwHm24":I
    add-float v7, v4, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 320
    .end local v4    # "arg0$iv":F
    .end local v5    # "other$iv":F
    .end local v6    # "$i$f$plus-5rwHm24":I
    nop

    .line 319
    nop

    .line 322
    .local v4, "verticalPadding":F
    invoke-static {p3}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    .line 323
    invoke-static {p4}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v6

    .line 322
    add-int/2addr v5, v6

    .line 324
    invoke-static {p5}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v6

    .line 322
    add-int/2addr v5, v6

    .line 326
    .local v5, "mainContentHeight":I
    nop

    .line 328
    invoke-interface {p0, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    .line 329
    invoke-static {p1}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    .line 331
    invoke-static {p2}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 328
    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 333
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v7

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    .line 326
    return v6
.end method

.method private static final calculateWidth-xygx4p4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;J)I
    .locals 4
    .param p0, "$this$calculateWidth_u2dxygx4p4"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "leadingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "trailingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "headlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "overlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "supportingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p6, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p7, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "constraints"    # J

    .line 285
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    return v0

    .line 290
    :cond_0
    nop

    .line 289
    invoke-interface {p7, p6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    .line 290
    invoke-interface {p7, p6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    .line 289
    nop

    .local v0, "arg0$iv":F
    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 636
    .local v2, "$i$f$plus-5rwHm24":I
    add-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 290
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$plus-5rwHm24":I
    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 289
    nop

    .line 291
    .local v0, "horizontalPadding":I
    nop

    .line 292
    invoke-static {p3}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    .line 293
    invoke-static {p4}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 294
    invoke-static {p5}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 291
    nop

    .line 296
    .local v1, "mainContentWidth":I
    nop

    .line 297
    invoke-static {p1}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 296
    add-int/2addr v2, v0

    .line 298
    nop

    .line 296
    add-int/2addr v2, v1

    .line 299
    invoke-static {p2}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 296
    add-int/2addr v2, v3

    return v2
.end method

.method public static final getLeadingContentEndPadding()F
    .locals 1

    .line 575
    sget v0, Landroidx/compose/material3/ListItemKt;->LeadingContentEndPadding:F

    return v0
.end method

.method public static synthetic getLeadingContentEndPadding$annotations()V
    .locals 0

    return-void
.end method

.method public static final getListItemEndPadding()F
    .locals 1

    .line 570
    sget v0, Landroidx/compose/material3/ListItemKt;->ListItemEndPadding:F

    return v0
.end method

.method public static synthetic getListItemEndPadding$annotations()V
    .locals 0

    return-void
.end method

.method public static final getListItemStartPadding()F
    .locals 1

    .line 567
    sget v0, Landroidx/compose/material3/ListItemKt;->ListItemStartPadding:F

    return v0
.end method

.method public static synthetic getListItemStartPadding$annotations()V
    .locals 0

    return-void
.end method

.method public static final getListItemThreeLineVerticalPadding()F
    .locals 1

    .line 564
    sget v0, Landroidx/compose/material3/ListItemKt;->ListItemThreeLineVerticalPadding:F

    return v0
.end method

.method public static synthetic getListItemThreeLineVerticalPadding$annotations()V
    .locals 0

    return-void
.end method

.method public static final getListItemVerticalPadding()F
    .locals 1

    .line 561
    sget v0, Landroidx/compose/material3/ListItemKt;->ListItemVerticalPadding:F

    return v0
.end method

.method public static synthetic getListItemVerticalPadding$annotations()V
    .locals 0

    return-void
.end method

.method public static final getTrailingContentStartPadding()F
    .locals 1

    .line 580
    sget v0, Landroidx/compose/material3/ListItemKt;->TrailingContentStartPadding:F

    return v0
.end method

.method public static synthetic getTrailingContentStartPadding$annotations()V
    .locals 0

    return-void
.end method

.method private static final place(Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .param p0, "$this$place"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leadingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p4, "trailingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p5, "headlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p6, "overlinePlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p7, "supportingPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p8, "isThreeLine"    # Z
    .param p9, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p10, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;

    .line 348
    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/material3/ListItemKt$place$1;

    move-object v4, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p10

    move-object/from16 v7, p9

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p8

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p2

    move/from16 v15, p1

    invoke-direct/range {v4 .. v15}, Landroidx/compose/material3/ListItemKt$place$1;-><init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;II)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
