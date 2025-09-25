.class public final Landroidx/compose/material3/AssistChipDefaults;
.super Ljava/lang/Object;
.source "Chip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ8\u0010\u0015\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\"\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010#Jb\u0010\"\u001a\u00020\u000f2\u0008\u0008\u0002\u0010$\u001a\u00020\u00182\u0008\u0008\u0002\u0010%\u001a\u00020\u00182\u0008\u0008\u0002\u0010&\u001a\u00020\u00182\u0008\u0008\u0002\u0010\'\u001a\u00020\u00182\u0008\u0008\u0002\u0010(\u001a\u00020\u00182\u0008\u0008\u0002\u0010)\u001a\u00020\u00182\u0008\u0008\u0002\u0010*\u001a\u00020\u00182\u0008\u0008\u0002\u0010+\u001a\u00020\u0018H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-JN\u0010.\u001a\u00020/2\u0008\u0008\u0002\u00100\u001a\u00020\u00042\u0008\u0008\u0002\u00101\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\u00042\u0008\u0008\u0002\u00103\u001a\u00020\u00042\u0008\u0008\u0002\u00104\u001a\u00020\u00042\u0008\u0008\u0002\u00105\u001a\u00020\u0004H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107J\r\u00108\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010#Jb\u00108\u001a\u00020\u000f2\u0008\u0008\u0002\u0010$\u001a\u00020\u00182\u0008\u0008\u0002\u0010%\u001a\u00020\u00182\u0008\u0008\u0002\u0010&\u001a\u00020\u00182\u0008\u0008\u0002\u0010\'\u001a\u00020\u00182\u0008\u0008\u0002\u0010(\u001a\u00020\u00182\u0008\u0008\u0002\u0010)\u001a\u00020\u00182\u0008\u0008\u0002\u0010*\u001a\u00020\u00182\u0008\u0008\u0002\u0010+\u001a\u00020\u0018H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010-JN\u0010:\u001a\u00020/2\u0008\u0008\u0002\u00100\u001a\u00020\u00042\u0008\u0008\u0002\u00101\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\u00042\u0008\u0008\u0002\u00103\u001a\u00020\u00042\u0008\u0008\u0002\u00104\u001a\u00020\u00042\u0008\u0008\u0002\u00105\u001a\u00020\u0004H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u00107R\u0019\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u000b8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000f*\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u00020\u000f*\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006<"
    }
    d2 = {
        "Landroidx/compose/material3/AssistChipDefaults;",
        "",
        "()V",
        "Height",
        "Landroidx/compose/ui/unit/Dp;",
        "getHeight-D9Ej5fM",
        "()F",
        "F",
        "IconSize",
        "getIconSize-D9Ej5fM",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "getShape",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;",
        "defaultAssistChipColors",
        "Landroidx/compose/material3/ChipColors;",
        "Landroidx/compose/material3/ColorScheme;",
        "getDefaultAssistChipColors$material3_release",
        "(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;",
        "defaultElevatedAssistChipColors",
        "getDefaultElevatedAssistChipColors$material3_release",
        "assistChipBorder",
        "Landroidx/compose/material3/ChipBorder;",
        "borderColor",
        "Landroidx/compose/ui/graphics/Color;",
        "disabledBorderColor",
        "borderWidth",
        "assistChipBorder-d_3_b6Q",
        "(JJFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipBorder;",
        "Landroidx/compose/foundation/BorderStroke;",
        "enabled",
        "",
        "assistChipBorder-h1eT-Ww",
        "(ZJJFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/BorderStroke;",
        "assistChipColors",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ChipColors;",
        "containerColor",
        "labelColor",
        "leadingIconContentColor",
        "trailingIconContentColor",
        "disabledContainerColor",
        "disabledLabelColor",
        "disabledLeadingIconContentColor",
        "disabledTrailingIconContentColor",
        "assistChipColors-oq7We08",
        "(JJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;",
        "assistChipElevation",
        "Landroidx/compose/material3/ChipElevation;",
        "elevation",
        "pressedElevation",
        "focusedElevation",
        "hoveredElevation",
        "draggedElevation",
        "disabledElevation",
        "assistChipElevation-aqJV_2Y",
        "(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;",
        "elevatedAssistChipColors",
        "elevatedAssistChipColors-oq7We08",
        "elevatedAssistChipElevation",
        "elevatedAssistChipElevation-aqJV_2Y",
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

.field private static final Height:F

.field public static final INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

.field private static final IconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/AssistChipDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/AssistChipDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/AssistChipDefaults;->INSTANCE:Landroidx/compose/material3/AssistChipDefaults;

    .line 941
    sget-object v0, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/AssistChipTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/AssistChipDefaults;->Height:F

    .line 946
    sget-object v0, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/AssistChipTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/AssistChipDefaults;->IconSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final assistChipBorder-d_3_b6Q(JJFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipBorder;
    .locals 15
    .param p1, "borderColor"    # J
    .param p3, "disabledBorderColor"    # J
    .param p5, "borderWidth"    # F
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility. Use the assistChipBorder function that returns BorderStroke instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "assistChipBorder(enabled, borderColor, disabledBorderColor, borderWidth)"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v0, p6

    const v1, 0x16ca8bef

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(assistChipBorder)P(0:c#ui.graphics.Color,2:c#ui.graphics.Color,1:c#ui.unit.Dp)1072@53313L5,1073@53399L5:Chip.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p8, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 1073
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p1    # "borderColor":J
    .local v4, "borderColor":J
    goto :goto_0

    .line 0
    .end local v4    # "borderColor":J
    .restart local p1    # "borderColor":J
    :cond_0
    move-wide/from16 v4, p1

    .line 1073
    .end local p1    # "borderColor":J
    .restart local v4    # "borderColor":J
    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    .line 1075
    nop

    .line 1074
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatDisabledOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    .line 1075
    const v8, 0x3df5c28f    # 0.12f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    .end local p3    # "disabledBorderColor":J
    .local v2, "disabledBorderColor":J
    goto :goto_1

    .line 1073
    .end local v2    # "disabledBorderColor":J
    .restart local p3    # "disabledBorderColor":J
    :cond_1
    move-wide/from16 v2, p3

    .line 1075
    .end local p3    # "disabledBorderColor":J
    .restart local v2    # "disabledBorderColor":J
    :goto_1
    and-int/lit8 v6, p8, 0x4

    if-eqz v6, :cond_2

    .line 1076
    sget-object v6, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatOutlineWidth-D9Ej5fM()F

    move-result v6

    move v13, v6

    .end local p5    # "borderWidth":F
    .local v6, "borderWidth":F
    goto :goto_2

    .line 1075
    .end local v6    # "borderWidth":F
    .restart local p5    # "borderWidth":F
    :cond_2
    move/from16 v13, p5

    .line 1076
    .end local p5    # "borderWidth":F
    .local v13, "borderWidth":F
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1077
    const/4 v6, -0x1

    const-string/jumbo v7, "androidx.compose.material3.AssistChipDefaults.assistChipBorder (Chip.kt:1076)"

    move/from16 v14, p7

    invoke-static {v1, v14, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_3

    .line 1076
    :cond_3
    move/from16 v14, p7

    .line 1077
    :goto_3
    new-instance v1, Landroidx/compose/material3/ChipBorder;

    .line 1078
    nop

    .line 1079
    nop

    .line 1080
    const/4 v12, 0x0

    .line 1077
    move-object v6, v1

    move-wide v7, v4

    move-wide v9, v2

    move v11, v13

    invoke-direct/range {v6 .. v12}, Landroidx/compose/material3/ChipBorder;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final assistChipBorder-h1eT-Ww(ZJJFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/BorderStroke;
    .locals 14
    .param p1, "enabled"    # Z
    .param p2, "borderColor"    # J
    .param p4, "disabledBorderColor"    # J
    .param p6, "borderWidth"    # F
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    move-object/from16 v0, p7

    const v1, -0x56f139d9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(assistChipBorder)P(3,0:c#ui.graphics.Color,2:c#ui.graphics.Color,1:c#ui.unit.Dp)1049@52199L5,1050@52285L5:Chip.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p9, 0x2

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 1050
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p2    # "borderColor":J
    .local v4, "borderColor":J
    goto :goto_0

    .line 0
    .end local v4    # "borderColor":J
    .restart local p2    # "borderColor":J
    :cond_0
    move-wide/from16 v4, p2

    .line 1050
    .end local p2    # "borderColor":J
    .restart local v4    # "borderColor":J
    :goto_0
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_1

    .line 1052
    nop

    .line 1051
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatDisabledOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    .line 1052
    const v8, 0x3df5c28f    # 0.12f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    .end local p4    # "disabledBorderColor":J
    .local v2, "disabledBorderColor":J
    goto :goto_1

    .line 1050
    .end local v2    # "disabledBorderColor":J
    .restart local p4    # "disabledBorderColor":J
    :cond_1
    move-wide/from16 v2, p4

    .line 1052
    .end local p4    # "disabledBorderColor":J
    .restart local v2    # "disabledBorderColor":J
    :goto_1
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_2

    .line 1053
    sget-object v6, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatOutlineWidth-D9Ej5fM()F

    move-result v6

    .end local p6    # "borderWidth":F
    .local v6, "borderWidth":F
    goto :goto_2

    .line 1052
    .end local v6    # "borderWidth":F
    .restart local p6    # "borderWidth":F
    :cond_2
    move/from16 v6, p6

    .line 1053
    .end local p6    # "borderWidth":F
    .restart local v6    # "borderWidth":F
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1054
    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material3.AssistChipDefaults.assistChipBorder (Chip.kt:1053)"

    move/from16 v9, p8

    invoke-static {v1, v9, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_3

    .line 1053
    :cond_3
    move/from16 v9, p8

    .line 1054
    :goto_3
    if-eqz p1, :cond_4

    move-wide v7, v4

    goto :goto_4

    :cond_4
    move-wide v7, v2

    :goto_4
    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final assistChipColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ChipColors;
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x74e36c29

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(assistChipColors)952@47331L11:Chip.kt#uh7d8r"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.AssistChipDefaults.assistChipColors (Chip.kt:952)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/AssistChipDefaults;->getDefaultAssistChipColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public final assistChipColors-oq7We08(JJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;
    .locals 36
    .param p1, "containerColor"    # J
    .param p3, "labelColor"    # J
    .param p5, "leadingIconContentColor"    # J
    .param p7, "trailingIconContentColor"    # J
    .param p9, "disabledContainerColor"    # J
    .param p11, "disabledLabelColor"    # J
    .param p13, "disabledLeadingIconContentColor"    # J
    .param p15, "disabledTrailingIconContentColor"    # J
    .param p17, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p18, "$changed"    # I

    move-object/from16 v0, p17

    move/from16 v1, p19

    const v2, -0x175990bd

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(assistChipColors)P(0:c#ui.graphics.Color,5:c#ui.graphics.Color,6:c#ui.graphics.Color,7:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color)977@48744L11:Chip.kt#uh7d8r"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 970
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    .end local p1    # "containerColor":J
    .local v3, "containerColor":J
    goto :goto_0

    .line 0
    .end local v3    # "containerColor":J
    .restart local p1    # "containerColor":J
    :cond_0
    move-wide/from16 v3, p1

    .line 970
    .end local p1    # "containerColor":J
    .restart local v3    # "containerColor":J
    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    .line 971
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v22, v5

    .end local p3    # "labelColor":J
    .local v5, "labelColor":J
    goto :goto_1

    .line 970
    .end local v5    # "labelColor":J
    .restart local p3    # "labelColor":J
    :cond_1
    move-wide/from16 v22, p3

    .line 971
    .end local p3    # "labelColor":J
    .local v22, "labelColor":J
    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    .line 972
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v24, v5

    .end local p5    # "leadingIconContentColor":J
    .local v5, "leadingIconContentColor":J
    goto :goto_2

    .line 971
    .end local v5    # "leadingIconContentColor":J
    .restart local p5    # "leadingIconContentColor":J
    :cond_2
    move-wide/from16 v24, p5

    .line 972
    .end local p5    # "leadingIconContentColor":J
    .local v24, "leadingIconContentColor":J
    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 973
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v26, v5

    .end local p7    # "trailingIconContentColor":J
    .local v5, "trailingIconContentColor":J
    goto :goto_3

    .line 972
    .end local v5    # "trailingIconContentColor":J
    .restart local p7    # "trailingIconContentColor":J
    :cond_3
    move-wide/from16 v26, p7

    .line 973
    .end local p7    # "trailingIconContentColor":J
    .local v26, "trailingIconContentColor":J
    :goto_3
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_4

    .line 974
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v28, v5

    .end local p9    # "disabledContainerColor":J
    .local v5, "disabledContainerColor":J
    goto :goto_4

    .line 973
    .end local v5    # "disabledContainerColor":J
    .restart local p9    # "disabledContainerColor":J
    :cond_4
    move-wide/from16 v28, p9

    .line 974
    .end local p9    # "disabledContainerColor":J
    .local v28, "disabledContainerColor":J
    :goto_4
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_5

    .line 975
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v30, v5

    .end local p11    # "disabledLabelColor":J
    .local v5, "disabledLabelColor":J
    goto :goto_5

    .line 974
    .end local v5    # "disabledLabelColor":J
    .restart local p11    # "disabledLabelColor":J
    :cond_5
    move-wide/from16 v30, p11

    .line 975
    .end local p11    # "disabledLabelColor":J
    .local v30, "disabledLabelColor":J
    :goto_5
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_6

    .line 976
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v32, v5

    .end local p13    # "disabledLeadingIconContentColor":J
    .local v5, "disabledLeadingIconContentColor":J
    goto :goto_6

    .line 975
    .end local v5    # "disabledLeadingIconContentColor":J
    .restart local p13    # "disabledLeadingIconContentColor":J
    :cond_6
    move-wide/from16 v32, p13

    .line 976
    .end local p13    # "disabledLeadingIconContentColor":J
    .local v32, "disabledLeadingIconContentColor":J
    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 977
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v34, v5

    .end local p15    # "disabledTrailingIconContentColor":J
    .local v5, "disabledTrailingIconContentColor":J
    goto :goto_7

    .line 976
    .end local v5    # "disabledTrailingIconContentColor":J
    .restart local p15    # "disabledTrailingIconContentColor":J
    :cond_7
    move-wide/from16 v34, p15

    .line 977
    .end local p15    # "disabledTrailingIconContentColor":J
    .local v34, "disabledTrailingIconContentColor":J
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 978
    const/4 v1, -0x1

    const-string/jumbo v5, "androidx.compose.material3.AssistChipDefaults.assistChipColors (Chip.kt:977)"

    move/from16 v14, p18

    invoke-static {v2, v14, v1, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_8

    .line 977
    :cond_8
    move/from16 v14, p18

    .line 978
    :goto_8
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroidx/compose/material3/AssistChipDefaults;->getDefaultAssistChipColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;

    move-result-object v5

    .line 979
    nop

    .line 980
    nop

    .line 981
    nop

    .line 982
    nop

    .line 983
    nop

    .line 984
    nop

    .line 985
    nop

    .line 986
    nop

    .line 978
    move-wide v6, v3

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move-wide/from16 v14, v28

    move-wide/from16 v16, v30

    move-wide/from16 v18, v32

    move-wide/from16 v20, v34

    invoke-virtual/range {v5 .. v21}, Landroidx/compose/material3/ChipColors;->copy-FD3wquc(JJJJJJJJ)Landroidx/compose/material3/ChipColors;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface/range {p17 .. p17}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final assistChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;
    .locals 17
    .param p1, "elevation"    # F
    .param p2, "pressedElevation"    # F
    .param p3, "focusedElevation"    # F
    .param p4, "hoveredElevation"    # F
    .param p5, "draggedElevation"    # F
    .param p6, "disabledElevation"    # F
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    move-object/from16 v0, p7

    const v1, 0xe9ffd53

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(assistChipElevation)P(2:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,1:c#ui.unit.Dp,0:c#ui.unit.Dp):Chip.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    .line 1024
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/AssistChipTokens;->getFlatContainerElevation-D9Ej5fM()F

    move-result v2

    .end local p1    # "elevation":F
    .local v2, "elevation":F
    goto :goto_0

    .line 0
    .end local v2    # "elevation":F
    .restart local p1    # "elevation":F
    :cond_0
    move/from16 v2, p1

    .line 1024
    .end local p1    # "elevation":F
    .restart local v2    # "elevation":F
    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    .line 1025
    move v3, v2

    move v11, v3

    .end local p2    # "pressedElevation":F
    .local v3, "pressedElevation":F
    goto :goto_1

    .line 1024
    .end local v3    # "pressedElevation":F
    .restart local p2    # "pressedElevation":F
    :cond_1
    move/from16 v11, p2

    .line 1025
    .end local p2    # "pressedElevation":F
    .local v11, "pressedElevation":F
    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    .line 1026
    move v3, v2

    move v12, v3

    .end local p3    # "focusedElevation":F
    .local v3, "focusedElevation":F
    goto :goto_2

    .line 1025
    .end local v3    # "focusedElevation":F
    .restart local p3    # "focusedElevation":F
    :cond_2
    move/from16 v12, p3

    .line 1026
    .end local p3    # "focusedElevation":F
    .local v12, "focusedElevation":F
    :goto_2
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_3

    .line 1027
    move v3, v2

    move v13, v3

    .end local p4    # "hoveredElevation":F
    .local v3, "hoveredElevation":F
    goto :goto_3

    .line 1026
    .end local v3    # "hoveredElevation":F
    .restart local p4    # "hoveredElevation":F
    :cond_3
    move/from16 v13, p4

    .line 1027
    .end local p4    # "hoveredElevation":F
    .local v13, "hoveredElevation":F
    :goto_3
    and-int/lit8 v3, p9, 0x10

    if-eqz v3, :cond_4

    .line 1028
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDraggedContainerElevation-D9Ej5fM()F

    move-result v3

    move v14, v3

    .end local p5    # "draggedElevation":F
    .local v3, "draggedElevation":F
    goto :goto_4

    .line 1027
    .end local v3    # "draggedElevation":F
    .restart local p5    # "draggedElevation":F
    :cond_4
    move/from16 v14, p5

    .line 1028
    .end local p5    # "draggedElevation":F
    .local v14, "draggedElevation":F
    :goto_4
    and-int/lit8 v3, p9, 0x20

    if-eqz v3, :cond_5

    .line 1029
    move v3, v2

    move v15, v3

    .end local p6    # "disabledElevation":F
    .local v3, "disabledElevation":F
    goto :goto_5

    .line 1028
    .end local v3    # "disabledElevation":F
    .restart local p6    # "disabledElevation":F
    :cond_5
    move/from16 v15, p6

    .line 1029
    .end local p6    # "disabledElevation":F
    .local v15, "disabledElevation":F
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1030
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.AssistChipDefaults.assistChipElevation (Chip.kt:1029)"

    move/from16 v10, p8

    invoke-static {v1, v10, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_6

    .line 1029
    :cond_6
    move/from16 v10, p8

    .line 1030
    :goto_6
    new-instance v1, Landroidx/compose/material3/ChipElevation;

    .line 1031
    nop

    .line 1032
    nop

    .line 1033
    nop

    .line 1034
    nop

    .line 1035
    nop

    .line 1036
    const/16 v16, 0x0

    .line 1030
    move-object v3, v1

    move v4, v2

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/ChipElevation;-><init>(FFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final elevatedAssistChipColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ChipColors;
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x270d2f9f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(elevatedAssistChipColors)1087@53913L11:Chip.kt#uh7d8r"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.AssistChipDefaults.elevatedAssistChipColors (Chip.kt:1087)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/AssistChipDefaults;->getDefaultElevatedAssistChipColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public final elevatedAssistChipColors-oq7We08(JJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipColors;
    .locals 36
    .param p1, "containerColor"    # J
    .param p3, "labelColor"    # J
    .param p5, "leadingIconContentColor"    # J
    .param p7, "trailingIconContentColor"    # J
    .param p9, "disabledContainerColor"    # J
    .param p11, "disabledLabelColor"    # J
    .param p13, "disabledLeadingIconContentColor"    # J
    .param p15, "disabledTrailingIconContentColor"    # J
    .param p17, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p18, "$changed"    # I

    move-object/from16 v0, p17

    move/from16 v1, p19

    const v2, -0x1fef16f3

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(elevatedAssistChipColors)P(0:c#ui.graphics.Color,5:c#ui.graphics.Color,6:c#ui.graphics.Color,7:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color)1112@55342L11:Chip.kt#uh7d8r"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 1105
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    .end local p1    # "containerColor":J
    .local v3, "containerColor":J
    goto :goto_0

    .line 0
    .end local v3    # "containerColor":J
    .restart local p1    # "containerColor":J
    :cond_0
    move-wide/from16 v3, p1

    .line 1105
    .end local p1    # "containerColor":J
    .restart local v3    # "containerColor":J
    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    .line 1106
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v22, v5

    .end local p3    # "labelColor":J
    .local v5, "labelColor":J
    goto :goto_1

    .line 1105
    .end local v5    # "labelColor":J
    .restart local p3    # "labelColor":J
    :cond_1
    move-wide/from16 v22, p3

    .line 1106
    .end local p3    # "labelColor":J
    .local v22, "labelColor":J
    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    .line 1107
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v24, v5

    .end local p5    # "leadingIconContentColor":J
    .local v5, "leadingIconContentColor":J
    goto :goto_2

    .line 1106
    .end local v5    # "leadingIconContentColor":J
    .restart local p5    # "leadingIconContentColor":J
    :cond_2
    move-wide/from16 v24, p5

    .line 1107
    .end local p5    # "leadingIconContentColor":J
    .local v24, "leadingIconContentColor":J
    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 1108
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v26, v5

    .end local p7    # "trailingIconContentColor":J
    .local v5, "trailingIconContentColor":J
    goto :goto_3

    .line 1107
    .end local v5    # "trailingIconContentColor":J
    .restart local p7    # "trailingIconContentColor":J
    :cond_3
    move-wide/from16 v26, p7

    .line 1108
    .end local p7    # "trailingIconContentColor":J
    .local v26, "trailingIconContentColor":J
    :goto_3
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_4

    .line 1109
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v28, v5

    .end local p9    # "disabledContainerColor":J
    .local v5, "disabledContainerColor":J
    goto :goto_4

    .line 1108
    .end local v5    # "disabledContainerColor":J
    .restart local p9    # "disabledContainerColor":J
    :cond_4
    move-wide/from16 v28, p9

    .line 1109
    .end local p9    # "disabledContainerColor":J
    .local v28, "disabledContainerColor":J
    :goto_4
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_5

    .line 1110
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v30, v5

    .end local p11    # "disabledLabelColor":J
    .local v5, "disabledLabelColor":J
    goto :goto_5

    .line 1109
    .end local v5    # "disabledLabelColor":J
    .restart local p11    # "disabledLabelColor":J
    :cond_5
    move-wide/from16 v30, p11

    .line 1110
    .end local p11    # "disabledLabelColor":J
    .local v30, "disabledLabelColor":J
    :goto_5
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_6

    .line 1111
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v32, v5

    .end local p13    # "disabledLeadingIconContentColor":J
    .local v5, "disabledLeadingIconContentColor":J
    goto :goto_6

    .line 1110
    .end local v5    # "disabledLeadingIconContentColor":J
    .restart local p13    # "disabledLeadingIconContentColor":J
    :cond_6
    move-wide/from16 v32, p13

    .line 1111
    .end local p13    # "disabledLeadingIconContentColor":J
    .local v32, "disabledLeadingIconContentColor":J
    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1112
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-wide/from16 v34, v5

    .end local p15    # "disabledTrailingIconContentColor":J
    .local v5, "disabledTrailingIconContentColor":J
    goto :goto_7

    .line 1111
    .end local v5    # "disabledTrailingIconContentColor":J
    .restart local p15    # "disabledTrailingIconContentColor":J
    :cond_7
    move-wide/from16 v34, p15

    .line 1112
    .end local p15    # "disabledTrailingIconContentColor":J
    .local v34, "disabledTrailingIconContentColor":J
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1113
    const/4 v1, -0x1

    const-string/jumbo v5, "androidx.compose.material3.AssistChipDefaults.elevatedAssistChipColors (Chip.kt:1112)"

    move/from16 v14, p18

    invoke-static {v2, v14, v1, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_8

    .line 1112
    :cond_8
    move/from16 v14, p18

    .line 1113
    :goto_8
    sget-object v1, Landroidx/compose/material3/SuggestionChipDefaults;->INSTANCE:Landroidx/compose/material3/SuggestionChipDefaults;

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v5, 0x6

    invoke-virtual {v2, v0, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/material3/SuggestionChipDefaults;->getDefaultElevatedSuggestionChipColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;

    move-result-object v5

    .line 1114
    nop

    .line 1115
    nop

    .line 1116
    nop

    .line 1117
    nop

    .line 1118
    nop

    .line 1119
    nop

    .line 1120
    nop

    .line 1121
    nop

    .line 1113
    move-wide v6, v3

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move-wide/from16 v14, v28

    move-wide/from16 v16, v30

    move-wide/from16 v18, v32

    move-wide/from16 v20, v34

    invoke-virtual/range {v5 .. v21}, Landroidx/compose/material3/ChipColors;->copy-FD3wquc(JJJJJJJJ)Landroidx/compose/material3/ChipColors;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface/range {p17 .. p17}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final elevatedAssistChipElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ChipElevation;
    .locals 17
    .param p1, "elevation"    # F
    .param p2, "pressedElevation"    # F
    .param p3, "focusedElevation"    # F
    .param p4, "hoveredElevation"    # F
    .param p5, "draggedElevation"    # F
    .param p6, "disabledElevation"    # F
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    move-object/from16 v0, p7

    const v1, 0x56e2b51d

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(elevatedAssistChipElevation)P(2:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,1:c#ui.unit.Dp,0:c#ui.unit.Dp):Chip.kt#uh7d8r"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    .line 1159
    sget-object v2, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedContainerElevation-D9Ej5fM()F

    move-result v2

    .end local p1    # "elevation":F
    .local v2, "elevation":F
    goto :goto_0

    .line 0
    .end local v2    # "elevation":F
    .restart local p1    # "elevation":F
    :cond_0
    move/from16 v2, p1

    .line 1159
    .end local p1    # "elevation":F
    .restart local v2    # "elevation":F
    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    .line 1160
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedPressedContainerElevation-D9Ej5fM()F

    move-result v3

    move v11, v3

    .end local p2    # "pressedElevation":F
    .local v3, "pressedElevation":F
    goto :goto_1

    .line 1159
    .end local v3    # "pressedElevation":F
    .restart local p2    # "pressedElevation":F
    :cond_1
    move/from16 v11, p2

    .line 1160
    .end local p2    # "pressedElevation":F
    .local v11, "pressedElevation":F
    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    .line 1161
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedFocusContainerElevation-D9Ej5fM()F

    move-result v3

    move v12, v3

    .end local p3    # "focusedElevation":F
    .local v3, "focusedElevation":F
    goto :goto_2

    .line 1160
    .end local v3    # "focusedElevation":F
    .restart local p3    # "focusedElevation":F
    :cond_2
    move/from16 v12, p3

    .line 1161
    .end local p3    # "focusedElevation":F
    .local v12, "focusedElevation":F
    :goto_2
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_3

    .line 1162
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedHoverContainerElevation-D9Ej5fM()F

    move-result v3

    move v13, v3

    .end local p4    # "hoveredElevation":F
    .local v3, "hoveredElevation":F
    goto :goto_3

    .line 1161
    .end local v3    # "hoveredElevation":F
    .restart local p4    # "hoveredElevation":F
    :cond_3
    move/from16 v13, p4

    .line 1162
    .end local p4    # "hoveredElevation":F
    .local v13, "hoveredElevation":F
    :goto_3
    and-int/lit8 v3, p9, 0x10

    if-eqz v3, :cond_4

    .line 1163
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDraggedContainerElevation-D9Ej5fM()F

    move-result v3

    move v14, v3

    .end local p5    # "draggedElevation":F
    .local v3, "draggedElevation":F
    goto :goto_4

    .line 1162
    .end local v3    # "draggedElevation":F
    .restart local p5    # "draggedElevation":F
    :cond_4
    move/from16 v14, p5

    .line 1163
    .end local p5    # "draggedElevation":F
    .local v14, "draggedElevation":F
    :goto_4
    and-int/lit8 v3, p9, 0x20

    if-eqz v3, :cond_5

    .line 1164
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedDisabledContainerElevation-D9Ej5fM()F

    move-result v3

    move v15, v3

    .end local p6    # "disabledElevation":F
    .local v3, "disabledElevation":F
    goto :goto_5

    .line 1163
    .end local v3    # "disabledElevation":F
    .restart local p6    # "disabledElevation":F
    :cond_5
    move/from16 v15, p6

    .line 1164
    .end local p6    # "disabledElevation":F
    .local v15, "disabledElevation":F
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1165
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.AssistChipDefaults.elevatedAssistChipElevation (Chip.kt:1164)"

    move/from16 v10, p8

    invoke-static {v1, v10, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_6

    .line 1164
    :cond_6
    move/from16 v10, p8

    .line 1165
    :goto_6
    new-instance v1, Landroidx/compose/material3/ChipElevation;

    .line 1166
    nop

    .line 1167
    nop

    .line 1168
    nop

    .line 1169
    nop

    .line 1170
    nop

    .line 1171
    const/16 v16, 0x0

    .line 1165
    move-object v3, v1

    move v4, v2

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/ChipElevation;-><init>(FFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final getDefaultAssistChipColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;
    .locals 29
    .param p1, "$this$defaultAssistChipColors"    # Landroidx/compose/material3/ColorScheme;

    .line 991
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultAssistChipColorsCached$material3_release()Landroidx/compose/material3/ChipColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/material3/ChipColors;

    move-object v2, v1

    .line 992
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v3

    .line 993
    sget-object v5, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/AssistChipTokens;->getLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 994
    sget-object v7, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/AssistChipTokens;->getIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 995
    sget-object v9, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v9}, Landroidx/compose/material3/tokens/AssistChipTokens;->getIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    .line 996
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v11

    .line 997
    sget-object v13, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v13}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v13

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    .line 998
    const v16, 0x3ec28f5c    # 0.38f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    .line 1000
    sget-object v15, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDisabledIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v15

    invoke-static {v0, v15}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v16

    .line 1001
    const v18, 0x3ec28f5c    # 0.38f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v15

    .line 1003
    sget-object v17, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    move-object/from16 v20, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDisabledIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v21

    .line 1004
    const v23, 0x3ec28f5c    # 0.38f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xe

    const/16 v28, 0x0

    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v17

    const/16 v19, 0x0

    .line 991
    invoke-direct/range {v2 .. v19}, Landroidx/compose/material3/ChipColors;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1005
    move-object/from16 v1, v20

    .local v1, "it":Landroidx/compose/material3/ChipColors;
    const/4 v2, 0x0

    .line 1006
    .local v2, "$i$a$-also-AssistChipDefaults$defaultAssistChipColors$1":I
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultAssistChipColorsCached$material3_release(Landroidx/compose/material3/ChipColors;)V

    .line 1007
    nop

    .line 1005
    .end local v1    # "it":Landroidx/compose/material3/ChipColors;
    .end local v2    # "$i$a$-also-AssistChipDefaults$defaultAssistChipColors$1":I
    nop

    .line 991
    :cond_0
    return-object v1
.end method

.method public final getDefaultElevatedAssistChipColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ChipColors;
    .locals 29
    .param p1, "$this$defaultElevatedAssistChipColors"    # Landroidx/compose/material3/ColorScheme;

    .line 1126
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultElevatedAssistChipColorsCached$material3_release()Landroidx/compose/material3/ChipColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/material3/ChipColors;

    move-object v2, v1

    .line 1127
    sget-object v3, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    .line 1128
    sget-object v5, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/AssistChipTokens;->getLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 1129
    sget-object v7, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/AssistChipTokens;->getIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 1130
    sget-object v9, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v9}, Landroidx/compose/material3/tokens/AssistChipTokens;->getIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    .line 1131
    sget-object v11, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v11}, Landroidx/compose/material3/tokens/AssistChipTokens;->getElevatedDisabledContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    .line 1132
    const v14, 0x3df5c28f    # 0.12f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    .line 1133
    sget-object v13, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v13}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v13

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    .line 1134
    const v16, 0x3ec28f5c    # 0.38f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    .line 1136
    sget-object v15, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDisabledIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v15

    invoke-static {v0, v15}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v16

    .line 1137
    const v18, 0x3ec28f5c    # 0.38f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v15

    .line 1138
    sget-object v17, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    move-object/from16 v20, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/tokens/AssistChipTokens;->getDisabledIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v21

    .line 1139
    const v23, 0x3ec28f5c    # 0.38f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xe

    const/16 v28, 0x0

    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v17

    const/16 v19, 0x0

    .line 1126
    invoke-direct/range {v2 .. v19}, Landroidx/compose/material3/ChipColors;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1140
    move-object/from16 v1, v20

    .local v1, "it":Landroidx/compose/material3/ChipColors;
    const/4 v2, 0x0

    .line 1141
    .local v2, "$i$a$-also-AssistChipDefaults$defaultElevatedAssistChipColors$1":I
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultElevatedAssistChipColorsCached$material3_release(Landroidx/compose/material3/ChipColors;)V

    .line 1142
    nop

    .line 1140
    .end local v1    # "it":Landroidx/compose/material3/ChipColors;
    .end local v2    # "$i$a$-also-AssistChipDefaults$defaultElevatedAssistChipColors$1":I
    nop

    .line 1126
    :cond_0
    return-object v1
.end method

.method public final getHeight-D9Ej5fM()F
    .locals 1

    .line 941
    sget v0, Landroidx/compose/material3/AssistChipDefaults;->Height:F

    return v0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 1

    .line 946
    sget v0, Landroidx/compose/material3/AssistChipDefaults;->IconSize:F

    return v0
.end method

.method public final getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x7680d23c

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C1174@58755L5:Chip.kt#uh7d8r"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.AssistChipDefaults.<get-shape> (Chip.kt:1174)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/material3/tokens/AssistChipTokens;->INSTANCE:Landroidx/compose/material3/tokens/AssistChipTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/AssistChipTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
