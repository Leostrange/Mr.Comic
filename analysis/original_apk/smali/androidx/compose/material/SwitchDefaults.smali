.class public final Landroidx/compose/material/SwitchDefaults;
.super Ljava/lang/Object;
.source "Switch.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Jv\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0006H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material/SwitchDefaults;",
        "",
        "()V",
        "colors",
        "Landroidx/compose/material/SwitchColors;",
        "checkedThumbColor",
        "Landroidx/compose/ui/graphics/Color;",
        "checkedTrackColor",
        "checkedTrackAlpha",
        "",
        "uncheckedThumbColor",
        "uncheckedTrackColor",
        "uncheckedTrackAlpha",
        "disabledCheckedThumbColor",
        "disabledCheckedTrackColor",
        "disabledUncheckedThumbColor",
        "disabledUncheckedTrackColor",
        "colors-SQMK_m0",
        "(JJFJJFJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SwitchColors;",
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
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/SwitchDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/SwitchDefaults;

    invoke-direct {v0}, Landroidx/compose/material/SwitchDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/SwitchDefaults;->INSTANCE:Landroidx/compose/material/SwitchDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colors-SQMK_m0(JJFJJFJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SwitchColors;
    .locals 28
    .param p1, "checkedThumbColor"    # J
    .param p3, "checkedTrackColor"    # J
    .param p5, "checkedTrackAlpha"    # F
    .param p6, "uncheckedThumbColor"    # J
    .param p8, "uncheckedTrackColor"    # J
    .param p10, "uncheckedTrackAlpha"    # F
    .param p11, "disabledCheckedThumbColor"    # J
    .param p13, "disabledCheckedTrackColor"    # J
    .param p15, "disabledUncheckedThumbColor"    # J
    .param p17, "disabledUncheckedTrackColor"    # J
    .param p19, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p20, "$changed"    # I
    .param p21, "$changed1"    # I

    move-object/from16 v0, p19

    move/from16 v1, p22

    const v2, -0x3d85042e

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(colors)P(0:c#ui.graphics.Color,2:c#ui.graphics.Color!1,7:c#ui.graphics.Color,9:c#ui.graphics.Color,8,3:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,6:c#ui.graphics.Color)322@13097L6,325@13269L6,326@13336L6,329@13498L8,330@13549L6,332@13666L8,333@13717L6,335@13838L8,336@13889L6,338@14010L8,339@14061L6:Switch.kt#jmzs0o"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x6

    if-eqz v3, :cond_0

    .line 323
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getSecondaryVariant-0d7_KjU()J

    move-result-wide v5

    .end local p1    # "checkedThumbColor":J
    .local v5, "checkedThumbColor":J
    goto :goto_0

    .line 0
    .end local v5    # "checkedThumbColor":J
    .restart local p1    # "checkedThumbColor":J
    :cond_0
    move-wide/from16 v5, p1

    .line 323
    .end local p1    # "checkedThumbColor":J
    .restart local v5    # "checkedThumbColor":J
    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 324
    move-wide v7, v5

    .end local p3    # "checkedTrackColor":J
    .local v7, "checkedTrackColor":J
    goto :goto_1

    .line 323
    .end local v7    # "checkedTrackColor":J
    .restart local p3    # "checkedTrackColor":J
    :cond_1
    move-wide/from16 v7, p3

    .line 324
    .end local p3    # "checkedTrackColor":J
    .restart local v7    # "checkedTrackColor":J
    :goto_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 325
    const v3, 0x3f0a3d71    # 0.54f

    .end local p5    # "checkedTrackAlpha":F
    .local v3, "checkedTrackAlpha":F
    goto :goto_2

    .line 324
    .end local v3    # "checkedTrackAlpha":F
    .restart local p5    # "checkedTrackAlpha":F
    :cond_2
    move/from16 v3, p5

    .line 325
    .end local p5    # "checkedTrackAlpha":F
    .restart local v3    # "checkedTrackAlpha":F
    :goto_2
    and-int/lit8 v9, v1, 0x8

    if-eqz v9, :cond_3

    .line 326
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v9, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v9

    .end local p6    # "uncheckedThumbColor":J
    .local v9, "uncheckedThumbColor":J
    goto :goto_3

    .line 325
    .end local v9    # "uncheckedThumbColor":J
    .restart local p6    # "uncheckedThumbColor":J
    :cond_3
    move-wide/from16 v9, p6

    .line 326
    .end local p6    # "uncheckedThumbColor":J
    .restart local v9    # "uncheckedThumbColor":J
    :goto_3
    and-int/lit8 v11, v1, 0x10

    if-eqz v11, :cond_4

    .line 327
    sget-object v11, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v11, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v11

    .end local p8    # "uncheckedTrackColor":J
    .local v11, "uncheckedTrackColor":J
    goto :goto_4

    .line 326
    .end local v11    # "uncheckedTrackColor":J
    .restart local p8    # "uncheckedTrackColor":J
    :cond_4
    move-wide/from16 v11, p8

    .line 327
    .end local p8    # "uncheckedTrackColor":J
    .restart local v11    # "uncheckedTrackColor":J
    :goto_4
    and-int/lit8 v13, v1, 0x20

    if-eqz v13, :cond_5

    .line 328
    const v13, 0x3ec28f5c    # 0.38f

    .end local p10    # "uncheckedTrackAlpha":F
    .local v13, "uncheckedTrackAlpha":F
    goto :goto_5

    .line 327
    .end local v13    # "uncheckedTrackAlpha":F
    .restart local p10    # "uncheckedTrackAlpha":F
    :cond_5
    move/from16 v13, p10

    .line 328
    .end local p10    # "uncheckedTrackAlpha":F
    .restart local v13    # "uncheckedTrackAlpha":F
    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    .line 331
    nop

    .line 329
    nop

    .line 330
    sget-object v14, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v14, v0, v4}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    move-wide/from16 p1, v5

    move/from16 p3, v14

    move/from16 p4, v15

    move/from16 p5, v16

    move/from16 p6, v17

    move/from16 p7, v18

    move-object/from16 p8, v19

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v14

    .line 331
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    move-wide/from16 v22, v5

    .end local v5    # "checkedThumbColor":J
    .local v22, "checkedThumbColor":J
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v4

    .end local p11    # "disabledCheckedThumbColor":J
    .local v4, "disabledCheckedThumbColor":J
    goto :goto_6

    .line 328
    .end local v4    # "disabledCheckedThumbColor":J
    .end local v22    # "checkedThumbColor":J
    .restart local v5    # "checkedThumbColor":J
    .restart local p11    # "disabledCheckedThumbColor":J
    :cond_6
    move-wide/from16 v22, v5

    .end local v5    # "checkedThumbColor":J
    .restart local v22    # "checkedThumbColor":J
    move-wide/from16 v4, p11

    .line 331
    .end local p11    # "disabledCheckedThumbColor":J
    .restart local v4    # "disabledCheckedThumbColor":J
    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    .line 334
    nop

    .line 332
    nop

    .line 333
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    const/4 v6, 0x6

    invoke-virtual {v2, v0, v6}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v2

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    move-wide/from16 p1, v7

    move/from16 p3, v2

    move/from16 p4, v6

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v18

    move-object/from16 p8, v19

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v14

    .line 334
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v2, v0, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    move-wide/from16 v24, v4

    .end local v4    # "disabledCheckedThumbColor":J
    .local v24, "disabledCheckedThumbColor":J
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v4

    .end local p13    # "disabledCheckedTrackColor":J
    .local v4, "disabledCheckedTrackColor":J
    goto :goto_7

    .line 331
    .end local v24    # "disabledCheckedThumbColor":J
    .local v4, "disabledCheckedThumbColor":J
    .restart local p13    # "disabledCheckedTrackColor":J
    :cond_7
    move-wide/from16 v24, v4

    .end local v4    # "disabledCheckedThumbColor":J
    .restart local v24    # "disabledCheckedThumbColor":J
    move-wide/from16 v4, p13

    .line 334
    .end local p13    # "disabledCheckedTrackColor":J
    .local v4, "disabledCheckedTrackColor":J
    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    .line 337
    nop

    .line 335
    nop

    .line 336
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    const/4 v6, 0x6

    invoke-virtual {v2, v0, v6}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v2

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    move-wide/from16 p1, v9

    move/from16 p3, v2

    move/from16 p4, v6

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v18

    move-object/from16 p8, v19

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v14

    .line 337
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v2, v0, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    move-wide/from16 v26, v9

    .end local v9    # "uncheckedThumbColor":J
    .local v26, "uncheckedThumbColor":J
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v9

    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v9

    .end local p15    # "disabledUncheckedThumbColor":J
    .local v9, "disabledUncheckedThumbColor":J
    goto :goto_8

    .line 334
    .end local v26    # "uncheckedThumbColor":J
    .local v9, "uncheckedThumbColor":J
    .restart local p15    # "disabledUncheckedThumbColor":J
    :cond_8
    move-wide/from16 v26, v9

    .end local v9    # "uncheckedThumbColor":J
    .restart local v26    # "uncheckedThumbColor":J
    move-wide/from16 v9, p15

    .line 337
    .end local p15    # "disabledUncheckedThumbColor":J
    .local v9, "disabledUncheckedThumbColor":J
    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 340
    nop

    .line 338
    nop

    .line 339
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe

    const/16 v18, 0x0

    move-wide/from16 p1, v11

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v6

    move/from16 p6, v14

    move/from16 p7, v15

    move-object/from16 p8, v18

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    .line 340
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v14, 0x6

    invoke-virtual {v6, v0, v14}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v1

    .end local p17    # "disabledUncheckedTrackColor":J
    .local v1, "disabledUncheckedTrackColor":J
    goto :goto_9

    .line 337
    .end local v1    # "disabledUncheckedTrackColor":J
    .restart local p17    # "disabledUncheckedTrackColor":J
    :cond_9
    move-wide/from16 v1, p17

    .line 340
    .end local p17    # "disabledUncheckedTrackColor":J
    .restart local v1    # "disabledUncheckedTrackColor":J
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 341
    const-string/jumbo v6, "androidx.compose.material.SwitchDefaults.colors (Switch.kt:340)"

    move/from16 v14, p20

    move/from16 v15, p21

    const v0, -0x3d85042e

    invoke-static {v0, v14, v15, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_a

    .line 340
    :cond_a
    move/from16 v14, p20

    move/from16 v15, p21

    .line 341
    :goto_a
    new-instance v0, Landroidx/compose/material/DefaultSwitchColors;

    move-object/from16 p1, v0

    .line 342
    nop

    .line 343
    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    move-wide/from16 p2, v7

    move/from16 p4, v3

    move/from16 p5, v6

    move/from16 p6, v16

    move/from16 p7, v17

    move/from16 p8, v18

    move-object/from16 p9, v19

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    move-wide/from16 p4, v16

    .line 344
    nop

    .line 345
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 p6, v11

    move/from16 p8, v13

    move/from16 p9, v6

    move/from16 p10, v16

    move/from16 p11, v17

    move/from16 p12, v18

    move-object/from16 p13, v19

    invoke-static/range {p6 .. p13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    move-wide/from16 p8, v16

    .line 346
    nop

    .line 347
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 p10, v4

    move/from16 p12, v3

    move/from16 p13, v6

    move/from16 p14, v16

    move/from16 p15, v17

    move/from16 p16, v18

    move-object/from16 p17, v19

    invoke-static/range {p10 .. p17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    move-wide/from16 p12, v16

    .line 348
    nop

    .line 349
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    move-wide v14, v1

    move/from16 v16, v13

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v14

    move-wide/from16 p16, v14

    const/4 v6, 0x0

    move-object/from16 p18, v6

    .line 341
    move-wide/from16 p2, v22

    move-wide/from16 p6, v26

    move-wide/from16 p10, v24

    move-wide/from16 p14, v9

    invoke-direct/range {p1 .. p18}, Landroidx/compose/material/DefaultSwitchColors;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p19 .. p19}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/material/SwitchColors;

    return-object v0
.end method
