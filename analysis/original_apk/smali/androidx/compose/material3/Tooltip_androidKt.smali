.class public final Landroidx/compose/material3/Tooltip_androidKt;
.super Ljava/lang/Object;
.source "Tooltip.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.android.kt\nandroidx/compose/material3/Tooltip_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,185:1\n154#2:186\n154#2:195\n74#3:187\n74#3:188\n1116#4,6:189\n*S KotlinDebug\n*F\n+ 1 Tooltip.android.kt\nandroidx/compose/material3/Tooltip_androidKt\n*L\n185#1:186\n129#1:195\n71#1:187\n72#1:188\n73#1:189,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aq\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a@\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "PlainTooltip",
        "",
        "Landroidx/compose/material3/CaretScope;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "caretProperties",
        "Landroidx/compose/material3/CaretProperties;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "contentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "containerColor",
        "tonalElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "shadowElevation",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "PlainTooltip-Fg7CxbU",
        "(Landroidx/compose/material3/CaretScope;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CaretProperties;Landroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "drawCaretWithPath",
        "Landroidx/compose/ui/draw/DrawResult;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "configuration",
        "Landroid/content/res/Configuration;",
        "anchorLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "drawCaretWithPath-Bx497Mc",
        "(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;",
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


# direct methods
.method public static final PlainTooltip-Fg7CxbU(Landroidx/compose/material3/CaretScope;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CaretProperties;Landroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "$this$PlainTooltip_u2dFg7CxbU"    # Landroidx/compose/material3/CaretScope;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "caretProperties"    # Landroidx/compose/material3/CaretProperties;
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "contentColor"    # J
    .param p6, "containerColor"    # J
    .param p8, "tonalElevation"    # F
    .param p9, "shadowElevation"    # F
    .param p10, "content"    # Lkotlin/jvm/functions/Function2;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/CaretScope;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/CaretProperties;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
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

    .line 68
    move-object/from16 v14, p0

    move-object/from16 v15, p10

    move/from16 v13, p12

    move/from16 v12, p13

    const v0, 0x18fb1bb3

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(PlainTooltip)P(4!1,6,3:c#ui.graphics.Color,1:c#ui.graphics.Color,7:c#ui.unit.Dp,5:c#ui.unit.Dp)184@7877L26,184@7947L24,184@8017L26,83@3344L784:Tooltip.android.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_3

    and-int/lit8 v2, v13, 0x8

    if-nez v2, :cond_1

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    :goto_2
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_4

    :cond_4
    and-int/lit8 v3, v13, 0x30

    if-nez v3, :cond_6

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_3

    :cond_5
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v1, v4

    goto :goto_4

    :cond_6
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_7

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v6, v13, 0x180

    if-nez v6, :cond_9

    move-object/from16 v6, p2

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_5

    :cond_8
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v1, v7

    goto :goto_6

    :cond_9
    move-object/from16 v6, p2

    :goto_6
    and-int/lit16 v7, v13, 0xc00

    if-nez v7, :cond_c

    and-int/lit8 v7, v12, 0x4

    if-nez v7, :cond_a

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_7

    :cond_a
    move-object/from16 v7, p3

    :cond_b
    const/16 v8, 0x400

    :goto_7
    or-int/2addr v1, v8

    goto :goto_8

    :cond_c
    move-object/from16 v7, p3

    :goto_8
    and-int/lit16 v8, v13, 0x6000

    if-nez v8, :cond_f

    and-int/lit8 v8, v12, 0x8

    if-nez v8, :cond_d

    move-wide/from16 v8, p4

    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v10, 0x4000

    goto :goto_9

    :cond_d
    move-wide/from16 v8, p4

    :cond_e
    const/16 v10, 0x2000

    :goto_9
    or-int/2addr v1, v10

    goto :goto_a

    :cond_f
    move-wide/from16 v8, p4

    :goto_a
    const/high16 v10, 0x30000

    and-int v16, v13, v10

    if-nez v16, :cond_12

    and-int/lit8 v16, v12, 0x10

    if-nez v16, :cond_10

    move-wide/from16 v5, p6

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x20000

    goto :goto_b

    :cond_10
    move-wide/from16 v5, p6

    :cond_11
    const/high16 v17, 0x10000

    :goto_b
    or-int v1, v1, v17

    goto :goto_c

    :cond_12
    move-wide/from16 v5, p6

    :goto_c
    and-int/lit8 v17, v12, 0x20

    const/high16 v18, 0x180000

    if-eqz v17, :cond_13

    or-int v1, v1, v18

    move/from16 v10, p8

    goto :goto_e

    :cond_13
    and-int v18, v13, v18

    if-nez v18, :cond_15

    move/from16 v10, p8

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_14

    const/high16 v19, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v19, 0x80000

    :goto_d
    or-int v1, v1, v19

    goto :goto_e

    :cond_15
    move/from16 v10, p8

    :goto_e
    and-int/lit8 v19, v12, 0x40

    const/high16 v20, 0xc00000

    if-eqz v19, :cond_16

    or-int v1, v1, v20

    move/from16 v0, p9

    goto :goto_10

    :cond_16
    and-int v21, v13, v20

    if-nez v21, :cond_18

    move/from16 v0, p9

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_17

    const/high16 v22, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v22, 0x400000

    :goto_f
    or-int v1, v1, v22

    goto :goto_10

    :cond_18
    move/from16 v0, p9

    :goto_10
    and-int/lit16 v0, v12, 0x80

    const/high16 v22, 0x6000000

    if-eqz v0, :cond_19

    or-int v1, v1, v22

    goto :goto_12

    :cond_19
    and-int v0, v13, v22

    if-nez v0, :cond_1b

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x4000000

    goto :goto_11

    :cond_1a
    const/high16 v0, 0x2000000

    :goto_11
    or-int/2addr v1, v0

    :cond_1b
    :goto_12
    const v0, 0x2492493

    and-int/2addr v0, v1

    const v3, 0x2492492

    if-ne v0, v3, :cond_1d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_13

    .line 109
    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v23, p9

    move/from16 v24, v1

    move-wide/from16 v20, v5

    move-object/from16 v29, v7

    move-wide/from16 v18, v8

    move/from16 v22, v10

    goto/16 :goto_20

    .line 68
    :cond_1d
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v3, -0x70001

    const v22, -0xe001

    if-eqz v0, :cond_22

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_14

    .line 186
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1f

    and-int/lit16 v1, v1, -0x1c01

    :cond_1f
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_20

    and-int v1, v1, v22

    :cond_20
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_21

    and-int v0, v1, v3

    move-object/from16 v2, p2

    move/from16 v1, p9

    move v3, v0

    move-object v4, v7

    move-wide v7, v8

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1a

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_21
    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move v3, v1

    move-object v4, v7

    move-wide v7, v8

    move/from16 v1, p9

    goto/16 :goto_1a

    .line 68
    :cond_22
    :goto_14
    if-eqz v2, :cond_23

    .line 185
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_15

    .line 68
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_23
    move-object/from16 v0, p1

    .line 185
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_15
    if-eqz v4, :cond_24

    const/4 v2, 0x0

    .end local p2    # "caretProperties":Landroidx/compose/material3/CaretProperties;
    .local v2, "caretProperties":Landroidx/compose/material3/CaretProperties;
    goto :goto_16

    .end local v2    # "caretProperties":Landroidx/compose/material3/CaretProperties;
    .restart local p2    # "caretProperties":Landroidx/compose/material3/CaretProperties;
    :cond_24
    move-object/from16 v2, p2

    .end local p2    # "caretProperties":Landroidx/compose/material3/CaretProperties;
    .restart local v2    # "caretProperties":Landroidx/compose/material3/CaretProperties;
    :goto_16
    and-int/lit8 v4, v12, 0x4

    const/4 v3, 0x6

    if-eqz v4, :cond_25

    sget-object v4, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    invoke-virtual {v4, v11, v3}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContainerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    .end local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v4, "shape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit16 v1, v1, -0x1c01

    goto :goto_17

    .end local v4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_25
    move-object v4, v7

    .end local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v4    # "shape":Landroidx/compose/ui/graphics/Shape;
    :goto_17
    and-int/lit8 v7, v12, 0x8

    if-eqz v7, :cond_26

    sget-object v7, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    invoke-virtual {v7, v11, v3}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    .end local p4    # "contentColor":J
    .local v7, "contentColor":J
    and-int v1, v1, v22

    goto :goto_18

    .end local v7    # "contentColor":J
    .restart local p4    # "contentColor":J
    :cond_26
    move-wide v7, v8

    .end local p4    # "contentColor":J
    .restart local v7    # "contentColor":J
    :goto_18
    and-int/lit8 v9, v12, 0x10

    if-eqz v9, :cond_27

    sget-object v9, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    invoke-virtual {v9, v11, v3}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    const v3, -0x70001

    .end local p6    # "containerColor":J
    .local v5, "containerColor":J
    and-int/2addr v1, v3

    :cond_27
    if-eqz v17, :cond_28

    const/4 v3, 0x0

    .local v3, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 186
    .local v9, "$i$f$getDp":I
    move-object/from16 p1, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    int-to-float v0, v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move v10, v0

    .end local v3    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    .end local p8    # "tonalElevation":F
    .local v0, "tonalElevation":F
    goto :goto_19

    .line 185
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p8    # "tonalElevation":F
    :cond_28
    move-object/from16 p1, v0

    .line 186
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p8    # "tonalElevation":F
    .local v10, "tonalElevation":F
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_19
    if-eqz v19, :cond_29

    .line 185
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$f$getDp":I
    int-to-float v9, v0

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move v3, v1

    move v1, v0

    move-object/from16 v0, p1

    .end local v3    # "$i$f$getDp":I
    .end local p9    # "shadowElevation":F
    .local v0, "shadowElevation":F
    goto :goto_1a

    .end local v0    # "shadowElevation":F
    .restart local p9    # "shadowElevation":F
    :cond_29
    move-object/from16 v0, p1

    move v3, v1

    move/from16 v1, p9

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p9    # "shadowElevation":F
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "shadowElevation":F
    .local v3, "$dirty":I
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 68
    const/4 v9, -0x1

    const-string/jumbo v12, "androidx.compose.material3.PlainTooltip (Tooltip.android.kt:67)"

    const v13, 0x18fb1bb3

    invoke-static {v13, v3, v9, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2a
    const v9, 0x7b3aa24b

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "70@2893L7,71@2952L7,72@2991L308"

    invoke-static {v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 70
    if-eqz v2, :cond_31

    .line 71
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .local v12, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v13, 0x0

    .local v13, "$changed$iv":I
    const/16 v17, 0x0

    .line 187
    .local v17, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    move/from16 p1, v13

    .end local v13    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v9, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v19

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 71
    .end local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v17    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    move-object/from16 v12, v19

    check-cast v12, Landroidx/compose/ui/unit/Density;

    .line 72
    .local v12, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v17, 0x0

    .local v17, "$changed$iv":I
    const/16 v19, 0x0

    .line 188
    .local v19, "$i$f$getCurrent":I
    move/from16 p8, v1

    const v1, 0x789c5f52

    .end local v1    # "shadowElevation":F
    .local p8, "shadowElevation":F
    invoke-static {v11, v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 72
    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v17    # "$changed$iv":I
    .end local v19    # "$i$f$getCurrent":I
    check-cast v1, Landroid/content/res/Configuration;

    .line 73
    .local v1, "configuration":Landroid/content/res/Configuration;
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    const v13, 0x7b3aa2f3

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Tooltip.android.kt#9igjgp"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    or-int v13, v13, v17

    const/high16 v17, 0x70000

    and-int v17, v3, v17

    move/from16 p9, v10

    const/high16 v18, 0x30000

    .end local v10    # "tonalElevation":F
    .local p9, "tonalElevation":F
    xor-int v10, v17, v18

    move-object/from16 v29, v4

    const/high16 v4, 0x20000

    .end local v4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v29, "shape":Landroidx/compose/ui/graphics/Shape;
    if-le v10, v4, :cond_2b

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_2b
    const/high16 v4, 0x30000

    and-int/2addr v4, v3

    const/high16 v10, 0x20000

    if-ne v4, v10, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v4, 0x0

    :goto_1b
    or-int/2addr v4, v13

    and-int/lit16 v10, v3, 0x380

    const/16 v13, 0x100

    if-ne v10, v13, :cond_2e

    const/4 v10, 0x1

    goto :goto_1c

    :cond_2e
    const/4 v10, 0x0

    :goto_1c
    or-int/2addr v4, v10

    .local v4, "invalid$iv":Z
    move-object v10, v11

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 189
    .local v13, "$i$f$cache":I
    move/from16 p11, v13

    .end local v13    # "$i$f$cache":I
    .local p11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 190
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_30

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v4

    .end local v4    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_2f

    goto :goto_1d

    .line 194
    :cond_2f
    move-object v4, v13

    goto :goto_1e

    .line 190
    .end local v18    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_30
    move/from16 v18, v4

    .line 191
    .end local v4    # "invalid$iv":Z
    .restart local v18    # "invalid$iv":Z
    :goto_1d
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$a$-cache-Tooltip_androidKt$PlainTooltip$customModifier$1":I
    new-instance v17, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;

    move-object/from16 p1, v17

    move-object/from16 p2, v12

    move-object/from16 p3, v1

    move-wide/from16 p4, v5

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;)V

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 191
    .end local v4    # "$i$a$-cache-Tooltip_androidKt$PlainTooltip$customModifier$1":I
    move-object/from16 v4, v17

    .line 192
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    nop

    .line 190
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_1e
    nop

    .line 189
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 73
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "invalid$iv":Z
    .end local p11    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-interface {v14, v9, v4}, Landroidx/compose/material3/CaretScope;->drawCaret(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 81
    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v16, v1

    .end local v1    # "configuration":Landroid/content/res/Configuration;
    .end local v12    # "density":Landroidx/compose/ui/unit/Density;
    goto :goto_1f

    .line 82
    .end local v29    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local p8    # "shadowElevation":F
    .end local p9    # "tonalElevation":F
    .local v1, "shadowElevation":F
    .local v4, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v10, "tonalElevation":F
    :cond_31
    move/from16 p8, v1

    move-object/from16 v29, v4

    move/from16 p9, v10

    .end local v1    # "shadowElevation":F
    .end local v4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v10    # "tonalElevation":F
    .restart local v29    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p8    # "shadowElevation":F
    .restart local p9    # "tonalElevation":F
    move-object/from16 v16, v0

    .line 70
    :goto_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    nop

    .line 85
    .local v16, "customModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 86
    nop

    .line 87
    const-wide/16 v9, 0x0

    .line 88
    nop

    .line 89
    const/16 v24, 0x0

    .line 90
    new-instance v1, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$1;

    invoke-direct {v1, v7, v8, v15}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v4, -0x2a131d08

    const/4 v12, 0x1

    invoke-static {v11, v4, v12, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v3, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int v1, v1, v20

    shr-int/lit8 v4, v3, 0x9

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v1, v4

    shr-int/lit8 v4, v3, 0x6

    const v12, 0xe000

    and-int/2addr v4, v12

    or-int/2addr v1, v4

    shr-int/lit8 v4, v3, 0x6

    const/high16 v12, 0x70000

    and-int/2addr v4, v12

    or-int v27, v1, v4

    const/16 v28, 0x48

    .line 84
    move-object/from16 v17, v29

    move-wide/from16 v18, v5

    move-wide/from16 v20, v9

    move/from16 v22, p9

    move/from16 v23, p8

    move-object/from16 v26, v11

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 109
    .end local v16    # "customModifier":Landroidx/compose/ui/Modifier;
    :cond_32
    move/from16 v23, p8

    move/from16 v22, p9

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v24, v3

    move-wide/from16 v20, v5

    move-wide/from16 v18, v7

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "caretProperties":Landroidx/compose/material3/CaretProperties;
    .end local v3    # "$dirty":I
    .end local v5    # "containerColor":J
    .end local v7    # "contentColor":J
    .end local p8    # "shadowElevation":F
    .end local p9    # "tonalElevation":F
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "caretProperties":Landroidx/compose/material3/CaretProperties;
    .local v18, "contentColor":J
    .local v20, "containerColor":J
    .local v22, "tonalElevation":F
    .local v23, "shadowElevation":F
    .local v24, "$dirty":I
    :goto_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_33

    new-instance v25, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v29

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v26, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object v14, v13

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$2;-><init>(Landroidx/compose/material3/CaretScope;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CaretProperties;Landroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v25

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_21

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_33
    move-object/from16 v26, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v26    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_21
    return-void
.end method

.method public static final synthetic access$drawCaretWithPath-Bx497Mc(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/draw/CacheDrawScope;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "containerColor"    # J
    .param p5, "caretProperties"    # Landroidx/compose/material3/CaretProperties;
    .param p6, "anchorLayoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/Tooltip_androidKt;->drawCaretWithPath-Bx497Mc(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method

.method private static final drawCaretWithPath-Bx497Mc(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;
    .locals 24
    .param p0, "$this$drawCaretWithPath_u2dBx497Mc"    # Landroidx/compose/ui/draw/CacheDrawScope;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "containerColor"    # J
    .param p5, "caretProperties"    # Landroidx/compose/material3/CaretProperties;
    .param p6, "anchorLayoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 119
    move-object/from16 v0, p6

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    .line 121
    .local v1, "path":Landroidx/compose/ui/graphics/Path;
    if-eqz v0, :cond_4

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "caretHeightPx":I
    const/4 v3, 0x0

    .line 124
    .local v3, "caretWidthPx":I
    const/4 v4, 0x0

    .line 125
    .local v4, "screenWidthPx":I
    const/4 v5, 0x0

    .line 126
    .local v5, "tooltipAnchorSpacing":I
    move-object/from16 v6, p1

    .local v6, "$this$drawCaretWithPath_Bx497Mc_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v7, 0x0

    .line 127
    .local v7, "$i$a$-with-Tooltip_androidKt$drawCaretWithPath$1":I
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/CaretProperties;->getCaretHeight-D9Ej5fM()F

    move-result v8

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    .line 128
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/CaretProperties;->getCaretWidth-D9Ej5fM()F

    move-result v8

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    .line 129
    move-object/from16 v8, p2

    iget v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 195
    .local v10, "$i$f$getDp":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 129
    .end local v9    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-interface {v6, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    .line 130
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getSpacingBetweenTooltipAndAnchor()F

    move-result v9

    invoke-interface {v6, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    .line 131
    nop

    .line 126
    .end local v6    # "$this$drawCaretWithPath_Bx497Mc_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v7    # "$i$a$-with-Tooltip_androidKt$drawCaretWithPath$1":I
    nop

    .line 132
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    .line 133
    .local v6, "anchorBounds":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v7

    .line 134
    .local v7, "anchorLeft":F
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v9

    .line 135
    .local v9, "anchorRight":F
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v10

    .line 136
    .local v10, "anchorTop":F
    add-float v11, v9, v7

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 137
    .local v11, "anchorMid":F
    sub-float v13, v9, v7

    .line 138
    .local v13, "anchorWidth":F
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v14

    .line 139
    .local v14, "tooltipWidth":F
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v15

    .line 140
    .local v15, "tooltipHeight":F
    sub-float v16, v10, v15

    move-object/from16 v17, v6

    .end local v6    # "anchorBounds":Landroidx/compose/ui/geometry/Rect;
    .local v17, "anchorBounds":Landroidx/compose/ui/geometry/Rect;
    int-to-float v6, v5

    sub-float v16, v16, v6

    const/4 v6, 0x0

    cmpg-float v16, v16, v6

    if-gez v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 141
    .local v16, "isCaretTop":Z
    :goto_0
    if-eqz v16, :cond_1

    move/from16 v18, v6

    goto :goto_1

    :cond_1
    move/from16 v18, v15

    :goto_1
    move/from16 v19, v18

    .line 144
    .local v19, "caretY":F
    div-float v18, v14, v12

    add-float v18, v11, v18

    int-to-float v6, v4

    cmpl-float v6, v18, v6

    if-lez v6, :cond_2

    .line 146
    int-to-float v6, v4

    sub-float/2addr v6, v11

    .line 145
    nop

    .line 147
    .local v6, "anchorMidFromRightScreenEdge":F
    sub-float v12, v14, v6

    .line 148
    .local v12, "caretX":F
    move/from16 v18, v4

    move/from16 v4, v19

    .end local v19    # "caretY":F
    .local v4, "caretY":F
    .local v18, "screenWidthPx":I
    invoke-static {v12, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v19

    .end local v6    # "anchorMidFromRightScreenEdge":F
    .end local v12    # "caretX":F
    goto :goto_2

    .line 151
    .end local v18    # "screenWidthPx":I
    .local v4, "screenWidthPx":I
    .restart local v19    # "caretY":F
    :cond_2
    move/from16 v18, v4

    move/from16 v4, v19

    .end local v19    # "caretY":F
    .local v4, "caretY":F
    .restart local v18    # "screenWidthPx":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    div-float/2addr v6, v12

    div-float v12, v13, v12

    sub-float/2addr v6, v12

    sub-float v6, v7, v6

    .line 150
    nop

    .line 152
    .local v6, "tooltipLeft":F
    const/4 v12, 0x0

    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-float v12, v11, v12

    .line 153
    .restart local v12    # "caretX":F
    invoke-static {v12, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v19

    .line 144
    .end local v6    # "tooltipLeft":F
    .end local v12    # "caretX":F
    :goto_2
    nop

    .line 143
    nop

    .line 156
    .local v19, "position":J
    if-eqz v16, :cond_3

    .line 157
    move-object v6, v1

    .local v6, "$this$drawCaretWithPath_Bx497Mc_u24lambda_u242":Landroidx/compose/ui/graphics/Path;
    const/4 v12, 0x0

    .line 158
    .local v12, "$i$a$-apply-Tooltip_androidKt$drawCaretWithPath$2":I
    move/from16 v21, v4

    .end local v4    # "caretY":F
    .local v21, "caretY":F
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    move/from16 v22, v5

    .end local v5    # "tooltipAnchorSpacing":I
    .local v22, "tooltipAnchorSpacing":I
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 159
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 160
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    move/from16 v23, v7

    .end local v7    # "anchorLeft":F
    .local v23, "anchorLeft":F
    int-to-float v7, v2

    sub-float/2addr v5, v7

    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 161
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 162
    invoke-interface {v6}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 163
    nop

    .line 157
    .end local v6    # "$this$drawCaretWithPath_Bx497Mc_u24lambda_u242":Landroidx/compose/ui/graphics/Path;
    .end local v12    # "$i$a$-apply-Tooltip_androidKt$drawCaretWithPath$2":I
    goto :goto_3

    .line 165
    .end local v21    # "caretY":F
    .end local v22    # "tooltipAnchorSpacing":I
    .end local v23    # "anchorLeft":F
    .restart local v4    # "caretY":F
    .restart local v5    # "tooltipAnchorSpacing":I
    .restart local v7    # "anchorLeft":F
    :cond_3
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v7

    .end local v4    # "caretY":F
    .end local v5    # "tooltipAnchorSpacing":I
    .end local v7    # "anchorLeft":F
    .restart local v21    # "caretY":F
    .restart local v22    # "tooltipAnchorSpacing":I
    .restart local v23    # "anchorLeft":F
    move-object v4, v1

    .local v4, "$this$drawCaretWithPath_Bx497Mc_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    const/4 v5, 0x0

    .line 166
    .local v5, "$i$a$-apply-Tooltip_androidKt$drawCaretWithPath$3":I
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 167
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 168
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    int-to-float v12, v2

    add-float/2addr v7, v12

    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 169
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 170
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 171
    nop

    .line 165
    .end local v4    # "$this$drawCaretWithPath_Bx497Mc_u24lambda_u243":Landroidx/compose/ui/graphics/Path;
    .end local v5    # "$i$a$-apply-Tooltip_androidKt$drawCaretWithPath$3":I
    goto :goto_3

    .line 121
    .end local v2    # "caretHeightPx":I
    .end local v3    # "caretWidthPx":I
    .end local v9    # "anchorRight":F
    .end local v10    # "anchorTop":F
    .end local v11    # "anchorMid":F
    .end local v13    # "anchorWidth":F
    .end local v14    # "tooltipWidth":F
    .end local v15    # "tooltipHeight":F
    .end local v16    # "isCaretTop":Z
    .end local v17    # "anchorBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v18    # "screenWidthPx":I
    .end local v19    # "position":J
    .end local v21    # "caretY":F
    .end local v22    # "tooltipAnchorSpacing":I
    .end local v23    # "anchorLeft":F
    :cond_4
    move-object/from16 v8, p2

    .line 175
    :goto_3
    new-instance v2, Landroidx/compose/material3/Tooltip_androidKt$drawCaretWithPath$4;

    move-wide/from16 v3, p3

    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/compose/material3/Tooltip_androidKt$drawCaretWithPath$4;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/graphics/Path;J)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, p0

    invoke-virtual {v5, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    return-object v2
.end method
