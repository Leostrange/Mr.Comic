.class public final Landroidx/compose/material3/MenuDefaults;
.super Ljava/lang/Object;
.source "Menu.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material3/MenuDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,407:1\n154#2:408\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material3/MenuDefaults\n*L\n123#1:408\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u000c\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\rJN\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000fH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u00020\u0008*\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/material3/MenuDefaults;",
        "",
        "()V",
        "DropdownMenuItemContentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "getDropdownMenuItemContentPadding",
        "()Landroidx/compose/foundation/layout/PaddingValues;",
        "defaultMenuItemColors",
        "Landroidx/compose/material3/MenuItemColors;",
        "Landroidx/compose/material3/ColorScheme;",
        "getDefaultMenuItemColors$material3_release",
        "(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;",
        "itemColors",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MenuItemColors;",
        "textColor",
        "Landroidx/compose/ui/graphics/Color;",
        "leadingIconColor",
        "trailingIconColor",
        "disabledTextColor",
        "disabledLeadingIconColor",
        "disabledTrailingIconColor",
        "itemColors-5tl4gsc",
        "(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/MenuItemColors;",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public static final INSTANCE:Landroidx/compose/material3/MenuDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/MenuDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/MenuDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    .line 121
    nop

    .line 122
    invoke-static {}, Landroidx/compose/material3/MenuKt;->access$getDropdownMenuItemHorizontalPadding$p()F

    move-result v0

    .line 123
    const/4 v1, 0x0

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 408
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 121
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultMenuItemColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;
    .locals 21
    .param p1, "$this$defaultMenuItemColors"    # Landroidx/compose/material3/ColorScheme;

    .line 103
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultMenuItemColorsCached$material3_release()Landroidx/compose/material3/MenuItemColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/material3/MenuItemColors;

    .line 104
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    .line 105
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 106
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 107
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    .line 108
    const v11, 0x3ec28f5c    # 0.38f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    .line 109
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    .line 110
    const v13, 0x3ec28f5c    # 0.38f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    .line 111
    sget-object v2, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/MenuTokens;->getListItemDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    .line 112
    const v15, 0x3ec28f5c    # 0.38f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    const/4 v15, 0x0

    .line 103
    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    nop

    .local v2, "it":Landroidx/compose/material3/MenuItemColors;
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$a$-also-MenuDefaults$defaultMenuItemColors$1":I
    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultMenuItemColorsCached$material3_release(Landroidx/compose/material3/MenuItemColors;)V

    .line 115
    nop

    .line 113
    .end local v2    # "it":Landroidx/compose/material3/MenuItemColors;
    .end local v3    # "$i$a$-also-MenuDefaults$defaultMenuItemColors$1":I
    nop

    .line 103
    :cond_0
    return-object v1
.end method

.method public final getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 121
    sget-object v0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public final itemColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MenuItemColors;
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x4f1143bc    # 2.43713536E9f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(itemColors)67@2725L11:Menu.kt#uh7d8r"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.MenuDefaults.itemColors (Menu.kt:67)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/MenuDefaults;->getDefaultMenuItemColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public final itemColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/MenuItemColors;
    .locals 27
    .param p1, "textColor"    # J
    .param p3, "leadingIconColor"    # J
    .param p5, "trailingIconColor"    # J
    .param p7, "disabledTextColor"    # J
    .param p9, "disabledLeadingIconColor"    # J
    .param p11, "disabledTrailingIconColor"    # J
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I

    move-object/from16 v0, p13

    const v1, -0x4c3506dc

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(itemColors)P(4:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,1:c#ui.graphics.Color,0:c#ui.graphics.Color,2:c#ui.graphics.Color)91@3951L11:Menu.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p15, 0x1

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    .end local p1    # "textColor":J
    .local v2, "textColor":J
    goto :goto_0

    .line 0
    .end local v2    # "textColor":J
    .restart local p1    # "textColor":J
    :cond_0
    move-wide/from16 v2, p1

    .line 86
    .end local p1    # "textColor":J
    .restart local v2    # "textColor":J
    :goto_0
    and-int/lit8 v4, p15, 0x2

    if-eqz v4, :cond_1

    .line 87
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v17, v4

    .end local p3    # "leadingIconColor":J
    .local v4, "leadingIconColor":J
    goto :goto_1

    .line 86
    .end local v4    # "leadingIconColor":J
    .restart local p3    # "leadingIconColor":J
    :cond_1
    move-wide/from16 v17, p3

    .line 87
    .end local p3    # "leadingIconColor":J
    .local v17, "leadingIconColor":J
    :goto_1
    and-int/lit8 v4, p15, 0x4

    if-eqz v4, :cond_2

    .line 88
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v19, v4

    .end local p5    # "trailingIconColor":J
    .local v4, "trailingIconColor":J
    goto :goto_2

    .line 87
    .end local v4    # "trailingIconColor":J
    .restart local p5    # "trailingIconColor":J
    :cond_2
    move-wide/from16 v19, p5

    .line 88
    .end local p5    # "trailingIconColor":J
    .local v19, "trailingIconColor":J
    :goto_2
    and-int/lit8 v4, p15, 0x8

    if-eqz v4, :cond_3

    .line 89
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v21, v4

    .end local p7    # "disabledTextColor":J
    .local v4, "disabledTextColor":J
    goto :goto_3

    .line 88
    .end local v4    # "disabledTextColor":J
    .restart local p7    # "disabledTextColor":J
    :cond_3
    move-wide/from16 v21, p7

    .line 89
    .end local p7    # "disabledTextColor":J
    .local v21, "disabledTextColor":J
    :goto_3
    and-int/lit8 v4, p15, 0x10

    if-eqz v4, :cond_4

    .line 90
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v23, v4

    .end local p9    # "disabledLeadingIconColor":J
    .local v4, "disabledLeadingIconColor":J
    goto :goto_4

    .line 89
    .end local v4    # "disabledLeadingIconColor":J
    .restart local p9    # "disabledLeadingIconColor":J
    :cond_4
    move-wide/from16 v23, p9

    .line 90
    .end local p9    # "disabledLeadingIconColor":J
    .local v23, "disabledLeadingIconColor":J
    :goto_4
    and-int/lit8 v4, p15, 0x20

    if-eqz v4, :cond_5

    .line 91
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v25, v4

    .end local p11    # "disabledTrailingIconColor":J
    .local v4, "disabledTrailingIconColor":J
    goto :goto_5

    .line 90
    .end local v4    # "disabledTrailingIconColor":J
    .restart local p11    # "disabledTrailingIconColor":J
    :cond_5
    move-wide/from16 v25, p11

    .line 91
    .end local p11    # "disabledTrailingIconColor":J
    .local v25, "disabledTrailingIconColor":J
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material3.MenuDefaults.itemColors (Menu.kt:91)"

    move/from16 v15, p14

    invoke-static {v1, v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_6

    .line 91
    :cond_6
    move/from16 v15, p14

    .line 92
    :goto_6
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v4, 0x6

    invoke-virtual {v1, v0, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    move-object/from16 v13, p0

    invoke-virtual {v13, v1}, Landroidx/compose/material3/MenuDefaults;->getDefaultMenuItemColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;

    move-result-object v4

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 92
    move-wide v5, v2

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    move-wide/from16 v11, v21

    move-wide/from16 v13, v23

    move-wide/from16 v15, v25

    invoke-virtual/range {v4 .. v16}, Landroidx/compose/material3/MenuItemColors;->copy-tNS2XkQ(JJJJJJ)Landroidx/compose/material3/MenuItemColors;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
