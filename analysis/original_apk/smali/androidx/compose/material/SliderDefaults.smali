.class public final Landroidx/compose/material/SliderDefaults;
.super Ljava/lang/Object;
.source "Slider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Jv\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/material/SliderDefaults;",
        "",
        "()V",
        "DisabledActiveTrackAlpha",
        "",
        "DisabledInactiveTrackAlpha",
        "DisabledTickAlpha",
        "InactiveTrackAlpha",
        "TickAlpha",
        "colors",
        "Landroidx/compose/material/SliderColors;",
        "thumbColor",
        "Landroidx/compose/ui/graphics/Color;",
        "disabledThumbColor",
        "activeTrackColor",
        "inactiveTrackColor",
        "disabledActiveTrackColor",
        "disabledInactiveTrackColor",
        "activeTickColor",
        "inactiveTickColor",
        "disabledActiveTickColor",
        "disabledInactiveTickColor",
        "colors-q0g_0yA",
        "(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;",
        "material_release"
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
.field public static final $stable:I = 0x0

.field public static final DisabledActiveTrackAlpha:F = 0.32f

.field public static final DisabledInactiveTrackAlpha:F = 0.12f

.field public static final DisabledTickAlpha:F = 0.12f

.field public static final INSTANCE:Landroidx/compose/material/SliderDefaults;

.field public static final InactiveTrackAlpha:F = 0.24f

.field public static final TickAlpha:F = 0.54f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/SliderDefaults;

    invoke-direct {v0}, Landroidx/compose/material/SliderDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;
    .locals 46
    .param p1, "thumbColor"    # J
    .param p3, "disabledThumbColor"    # J
    .param p5, "activeTrackColor"    # J
    .param p7, "inactiveTrackColor"    # J
    .param p9, "disabledActiveTrackColor"    # J
    .param p11, "disabledInactiveTrackColor"    # J
    .param p13, "activeTickColor"    # J
    .param p15, "inactiveTickColor"    # J
    .param p17, "disabledActiveTickColor"    # J
    .param p19, "disabledInactiveTickColor"    # J
    .param p21, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p22, "$changed"    # I
    .param p23, "$changed1"    # I

    move-object/from16 v0, p21

    move/from16 v1, p22

    move/from16 v2, p24

    const v3, 0x19fd1a17

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C(colors)P(9:c#ui.graphics.Color,6:c#ui.graphics.Color,1:c#ui.graphics.Color,8:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,0:c#ui.graphics.Color,7:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color)483@20982L6,484@21048L6,485@21104L8,486@21155L6,487@21220L6,490@21391L6,493@21604L33:Slider.kt#jmzs0o"

    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x6

    if-eqz v4, :cond_0

    .line 484
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v6

    .end local p1    # "thumbColor":J
    .local v6, "thumbColor":J
    goto :goto_0

    .line 0
    .end local v6    # "thumbColor":J
    .restart local p1    # "thumbColor":J
    :cond_0
    move-wide/from16 v6, p1

    .line 484
    .end local p1    # "thumbColor":J
    .restart local v6    # "thumbColor":J
    :goto_0
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    .line 487
    nop

    .line 485
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v8

    .line 486
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v8

    .line 487
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v8

    move-wide/from16 v30, v8

    .end local p3    # "disabledThumbColor":J
    .local v8, "disabledThumbColor":J
    goto :goto_1

    .line 484
    .end local v8    # "disabledThumbColor":J
    .restart local p3    # "disabledThumbColor":J
    :cond_1
    move-wide/from16 v30, p3

    .line 487
    .end local p3    # "disabledThumbColor":J
    .local v30, "disabledThumbColor":J
    :goto_1
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_2

    .line 488
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v8

    .end local p5    # "activeTrackColor":J
    .local v8, "activeTrackColor":J
    goto :goto_2

    .line 487
    .end local v8    # "activeTrackColor":J
    .restart local p5    # "activeTrackColor":J
    :cond_2
    move-wide/from16 v8, p5

    .line 488
    .end local p5    # "activeTrackColor":J
    .restart local v8    # "activeTrackColor":J
    :goto_2
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_3

    .line 489
    const v12, 0x3e75c28f    # 0.24f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/16 v17, 0x0

    move-wide v10, v8

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    move-wide/from16 v32, v10

    .end local p7    # "inactiveTrackColor":J
    .local v10, "inactiveTrackColor":J
    goto :goto_3

    .line 488
    .end local v10    # "inactiveTrackColor":J
    .restart local p7    # "inactiveTrackColor":J
    :cond_3
    move-wide/from16 v32, p7

    .line 489
    .end local p7    # "inactiveTrackColor":J
    .local v32, "inactiveTrackColor":J
    :goto_3
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_4

    .line 491
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    const v10, 0x3ea3d70a    # 0.32f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    .end local p9    # "disabledActiveTrackColor":J
    .local v4, "disabledActiveTrackColor":J
    goto :goto_4

    .line 489
    .end local v4    # "disabledActiveTrackColor":J
    .restart local p9    # "disabledActiveTrackColor":J
    :cond_4
    move-wide/from16 v4, p9

    .line 491
    .end local p9    # "disabledActiveTrackColor":J
    .restart local v4    # "disabledActiveTrackColor":J
    :goto_4
    and-int/lit8 v10, v2, 0x20

    if-eqz v10, :cond_5

    .line 493
    const v10, 0x3df5c28f    # 0.12f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    move-wide/from16 v34, v10

    .end local p11    # "disabledInactiveTrackColor":J
    .local v10, "disabledInactiveTrackColor":J
    goto :goto_5

    .line 491
    .end local v10    # "disabledInactiveTrackColor":J
    .restart local p11    # "disabledInactiveTrackColor":J
    :cond_5
    move-wide/from16 v34, p11

    .line 493
    .end local p11    # "disabledInactiveTrackColor":J
    .local v34, "disabledInactiveTrackColor":J
    :goto_5
    and-int/lit8 v10, v2, 0x40

    if-eqz v10, :cond_6

    .line 494
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0xe

    invoke-static {v8, v9, v0, v10}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    const v12, 0x3f0a3d71    # 0.54f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/16 v17, 0x0

    move-wide/from16 p1, v10

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v16

    move-object/from16 p8, v17

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    move-wide/from16 v36, v10

    .end local p13    # "activeTickColor":J
    .local v10, "activeTickColor":J
    goto :goto_6

    .line 493
    .end local v10    # "activeTickColor":J
    .restart local p13    # "activeTickColor":J
    :cond_6
    move-wide/from16 v36, p13

    .line 494
    .end local p13    # "activeTickColor":J
    .local v36, "activeTickColor":J
    :goto_6
    and-int/lit16 v10, v2, 0x80

    if-eqz v10, :cond_7

    .line 495
    const v10, 0x3f0a3d71    # 0.54f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-wide/from16 p1, v8

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    move-wide/from16 v38, v10

    .end local p15    # "inactiveTickColor":J
    .local v10, "inactiveTickColor":J
    goto :goto_7

    .line 494
    .end local v10    # "inactiveTickColor":J
    .restart local p15    # "inactiveTickColor":J
    :cond_7
    move-wide/from16 v38, p15

    .line 495
    .end local p15    # "inactiveTickColor":J
    .local v38, "inactiveTickColor":J
    :goto_7
    and-int/lit16 v10, v2, 0x100

    if-eqz v10, :cond_8

    .line 496
    const v10, 0x3df5c28f    # 0.12f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-wide/from16 p1, v36

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    move-wide/from16 v40, v10

    .end local p17    # "disabledActiveTickColor":J
    .local v10, "disabledActiveTickColor":J
    goto :goto_8

    .line 495
    .end local v10    # "disabledActiveTickColor":J
    .restart local p17    # "disabledActiveTickColor":J
    :cond_8
    move-wide/from16 v40, p17

    .line 496
    .end local p17    # "disabledActiveTickColor":J
    .local v40, "disabledActiveTickColor":J
    :goto_8
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 498
    nop

    .line 497
    nop

    .line 498
    const v2, 0x3df5c28f    # 0.12f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    move-wide/from16 p1, v34

    move/from16 p3, v2

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v12

    move/from16 p7, v13

    move-object/from16 p8, v14

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    move-wide/from16 v42, v10

    .end local p19    # "disabledInactiveTickColor":J
    .local v10, "disabledInactiveTickColor":J
    goto :goto_9

    .line 496
    .end local v10    # "disabledInactiveTickColor":J
    .restart local p19    # "disabledInactiveTickColor":J
    :cond_9
    move-wide/from16 v42, p19

    .line 498
    .end local p19    # "disabledInactiveTickColor":J
    .local v42, "disabledInactiveTickColor":J
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 499
    const-string/jumbo v2, "androidx.compose.material.SliderDefaults.colors (Slider.kt:498)"

    move/from16 v15, p23

    invoke-static {v3, v1, v15, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_a

    .line 498
    :cond_a
    move/from16 v15, p23

    .line 499
    :goto_a
    new-instance v2, Landroidx/compose/material/DefaultSliderColors;

    move-wide/from16 v44, v8

    .end local v8    # "activeTrackColor":J
    .local v44, "activeTrackColor":J
    move-object v8, v2

    .line 500
    nop

    .line 501
    nop

    .line 502
    nop

    .line 503
    nop

    .line 504
    nop

    .line 505
    nop

    .line 506
    nop

    .line 507
    nop

    .line 508
    nop

    .line 509
    const/16 v29, 0x0

    .line 499
    move-wide v9, v6

    move-wide/from16 v11, v30

    move-wide/from16 v13, v44

    move-wide/from16 v15, v32

    move-wide/from16 v17, v4

    move-wide/from16 v19, v34

    move-wide/from16 v21, v36

    move-wide/from16 v23, v38

    move-wide/from16 v25, v40

    move-wide/from16 v27, v42

    invoke-direct/range {v8 .. v29}, Landroidx/compose/material/DefaultSliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p21 .. p21}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/material/SliderColors;

    return-object v2
.end method
