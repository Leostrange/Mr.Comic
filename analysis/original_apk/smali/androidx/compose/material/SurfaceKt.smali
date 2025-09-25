.class public final Landroidx/compose/material/SurfaceKt;
.super Ljava/lang/Object;
.source "Surface.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,642:1\n154#2:643\n154#2:646\n154#2:656\n154#2:666\n154#2:676\n74#3:644\n74#3:654\n74#3:664\n74#3:674\n74#3:684\n74#3:685\n51#4:645\n51#4:655\n51#4:665\n51#4:675\n51#4:686\n25#5:647\n25#5:657\n25#5:667\n25#5:677\n1116#6,6:648\n1116#6,6:658\n1116#6,6:668\n1116#6,6:678\n*S KotlinDebug\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt\n*L\n111#1:643\n220#1:646\n334#1:656\n449#1:666\n577#1:676\n114#1:644\n224#1:654\n338#1:664\n453#1:674\n579#1:684\n585#1:685\n114#1:645\n224#1:655\n338#1:665\n453#1:675\n585#1:686\n221#1:647\n335#1:657\n450#1:667\n578#1:677\n221#1:648,6\n335#1:658,6\n450#1:668,6\n578#1:678,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u00a9\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a\u0085\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001ac\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a\u008d\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00142\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u0093\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u00142\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010&2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010\'\u001a,\u0010(\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u000eH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-\u001a8\u0010.\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00101\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00062"
    }
    d2 = {
        "Surface",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "border",
        "Landroidx/compose/foundation/BorderStroke;",
        "elevation",
        "Landroidx/compose/ui/unit/Dp;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "indication",
        "Landroidx/compose/foundation/Indication;",
        "enabled",
        "",
        "onClickLabel",
        "",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "Surface-9VG74zQ",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "Surface-LPr_se0",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "Surface-F-jzlyU",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "selected",
        "Surface-Ny5ogXk",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "checked",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "surfaceColorAtElevation",
        "elevationOverlay",
        "Landroidx/compose/material/ElevationOverlay;",
        "absoluteElevation",
        "surfaceColorAtElevation-cq6XJ1M",
        "(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J",
        "surface",
        "backgroundColor",
        "surface-8ww4TTg",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;",
        "material_release"
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
.method public static final Surface-9VG74zQ(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .param p0, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p3, "color"    # J
    .param p5, "contentColor"    # J
    .param p7, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p8, "elevation"    # F
    .param p9, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p10, "indication"    # Landroidx/compose/foundation/Indication;
    .param p11, "enabled"    # Z
    .param p12, "onClickLabel"    # Ljava/lang/String;
    .param p13, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p14, "content"    # Lkotlin/jvm/functions/Function2;
    .param p15, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p16, "$changed"    # I
    .param p17, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This API is deprecated with the introduction a newer Surface function overload that accepts an onClick()."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Surface(onClick, modifier, enabled, shape, color, contentColor, border, elevation, interactionSource, content)"
            imports = {}
        .end subannotation
    .end annotation

    .line 584
    move/from16 v15, p16

    move/from16 v14, p17

    move/from16 v13, p18

    const v0, 0x5e874d70

    move-object/from16 v1, p15

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Surface)P(9,8,12,1:c#ui.graphics.Color,3:c#ui.graphics.Color!1,4:c#ui.unit.Dp,7,6,5,10,11:c#ui.semantics.Role)573@28985L6,574@29027L22,577@29161L39,578@29248L7,*584@29435L7,585@29459L1128:Surface.kt#jmzs0o"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p16

    .local v1, "$dirty":I
    move/from16 v2, p17

    .local v2, "$dirty1":I
    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v3, v13, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v15, 0x70

    if-nez v8, :cond_5

    move-object/from16 v8, p1

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v1, v9

    goto :goto_3

    :cond_5
    move-object/from16 v8, p1

    :goto_3
    and-int/lit8 v9, v13, 0x4

    const/16 v16, 0x100

    if-eqz v9, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v15, 0x380

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v16

    goto :goto_4

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v1, v1, v17

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v6, v15, 0x1c00

    if-nez v6, :cond_b

    and-int/lit8 v6, v13, 0x8

    if-nez v6, :cond_9

    move-wide/from16 v7, p3

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p3

    :cond_a
    const/16 v18, 0x400

    :goto_6
    or-int v1, v1, v18

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p3

    :goto_7
    const v18, 0xe000

    and-int v18, v15, v18

    if-nez v18, :cond_e

    and-int/lit8 v18, v13, 0x10

    if-nez v18, :cond_c

    move-wide/from16 v6, p5

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v6, p5

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    goto :goto_9

    :cond_e
    move-wide/from16 v6, p5

    :goto_9
    and-int/lit8 v8, v13, 0x20

    if-eqz v8, :cond_f

    const/high16 v19, 0x30000

    or-int v1, v1, v19

    move-object/from16 v10, p7

    goto :goto_b

    :cond_f
    const/high16 v19, 0x70000

    and-int v19, v15, v19

    if-nez v19, :cond_11

    move-object/from16 v10, p7

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_11
    move-object/from16 v10, p7

    :goto_b
    and-int/lit8 v20, v13, 0x40

    if-eqz v20, :cond_12

    const/high16 v21, 0x180000

    or-int v1, v1, v21

    move/from16 v5, p8

    goto :goto_d

    :cond_12
    const/high16 v21, 0x380000

    and-int v21, v15, v21

    if-nez v21, :cond_14

    move/from16 v5, p8

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v21, 0x80000

    :goto_c
    or-int v1, v1, v21

    goto :goto_d

    :cond_14
    move/from16 v5, p8

    :goto_d
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_15

    const/high16 v23, 0xc00000

    or-int v1, v1, v23

    move-object/from16 v4, p9

    goto :goto_f

    :cond_15
    const/high16 v23, 0x1c00000

    and-int v23, v15, v23

    if-nez v23, :cond_17

    move-object/from16 v4, p9

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v23, 0x400000

    :goto_e
    or-int v1, v1, v23

    goto :goto_f

    :cond_17
    move-object/from16 v4, p9

    :goto_f
    const/high16 v23, 0xe000000

    and-int v23, v15, v23

    if-nez v23, :cond_1a

    and-int/lit16 v4, v13, 0x100

    if-nez v4, :cond_18

    move-object/from16 v4, p10

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    const/high16 v23, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v4, p10

    :cond_19
    const/high16 v23, 0x2000000

    :goto_10
    or-int v1, v1, v23

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p10

    :goto_11
    and-int/lit16 v4, v13, 0x200

    if-eqz v4, :cond_1b

    const/high16 v23, 0x30000000

    or-int v1, v1, v23

    move/from16 v5, p11

    goto :goto_13

    :cond_1b
    const/high16 v23, 0x70000000

    and-int v23, v15, v23

    if-nez v23, :cond_1d

    move/from16 v5, p11

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/high16 v23, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v23, 0x10000000

    :goto_12
    or-int v1, v1, v23

    goto :goto_13

    :cond_1d
    move/from16 v5, p11

    :goto_13
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v6, p12

    goto :goto_15

    :cond_1e
    and-int/lit8 v23, v14, 0xe

    if-nez v23, :cond_20

    move-object/from16 v6, p12

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x4

    goto :goto_14

    :cond_1f
    const/4 v7, 0x2

    :goto_14
    or-int/2addr v2, v7

    goto :goto_15

    :cond_20
    move-object/from16 v6, p12

    :goto_15
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p13

    goto :goto_17

    :cond_21
    and-int/lit8 v23, v14, 0x70

    if-nez v23, :cond_23

    move-object/from16 v6, p13

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v17, 0x20

    goto :goto_16

    :cond_22
    const/16 v17, 0x10

    :goto_16
    or-int v2, v2, v17

    goto :goto_17

    :cond_23
    move-object/from16 v6, p13

    :goto_17
    and-int/lit16 v6, v13, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v6, p14

    goto :goto_19

    :cond_24
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_26

    move-object/from16 v6, p14

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    goto :goto_18

    :cond_25
    const/16 v16, 0x80

    :goto_18
    or-int v2, v2, v16

    goto :goto_19

    :cond_26
    move-object/from16 v6, p14

    :goto_19
    const v16, 0x5b6db6db

    and-int v6, v1, v16

    const v10, 0x12492492

    if-ne v6, v10, :cond_28

    and-int/lit16 v6, v2, 0x2db

    const/16 v10, 0x92

    if-ne v6, v10, :cond_28

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_1a

    .line 618
    :cond_27
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-wide/from16 v21, p3

    move-wide/from16 v23, p5

    move-object/from16 v25, p7

    move/from16 v26, p8

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    move/from16 v29, p11

    move-object/from16 v30, p12

    move-object/from16 v31, p13

    move/from16 v33, v1

    move/from16 v32, v2

    goto/16 :goto_29

    .line 584
    :cond_28
    :goto_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v15, 0x1

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    const v16, -0xe000001

    const v17, -0xe001

    if-eqz v6, :cond_2d

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_1b

    .line 582
    :cond_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_2a

    and-int/lit16 v1, v1, -0x1c01

    :cond_2a
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_2b

    and-int v1, v1, v17

    :cond_2b
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_2c

    and-int v0, v1, v16

    move-object/from16 v6, p2

    move-wide/from16 v14, p3

    move-wide/from16 v3, p5

    move-object/from16 v8, p7

    move/from16 v1, p8

    move-object/from16 v5, p9

    move-object/from16 v7, p10

    move/from16 v9, p11

    move-object/from16 v11, p12

    move-object/from16 v31, p13

    move v13, v0

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_27

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_2c
    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-wide/from16 v14, p3

    move-wide/from16 v3, p5

    move-object/from16 v8, p7

    move-object/from16 v5, p9

    move-object/from16 v7, p10

    move/from16 v9, p11

    move-object/from16 v11, p12

    move-object/from16 v31, p13

    move v13, v1

    move/from16 v1, p8

    goto/16 :goto_27

    .line 584
    :cond_2d
    :goto_1b
    if-eqz v3, :cond_2e

    .line 572
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1c

    .line 584
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2e
    move-object/from16 v3, p1

    .line 572
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1c
    if-eqz v9, :cond_2f

    .line 573
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    .end local p2    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v6, "shape":Landroidx/compose/ui/graphics/Shape;
    goto :goto_1d

    .line 572
    .end local v6    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p2    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_2f
    move-object/from16 v6, p2

    .line 573
    .end local p2    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v6    # "shape":Landroidx/compose/ui/graphics/Shape;
    :goto_1d
    and-int/lit8 v9, v13, 0x8

    if-eqz v9, :cond_30

    .line 574
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v11, 0x6

    invoke-virtual {v9, v12, v11}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v18

    .end local p3    # "color":J
    .local v18, "color":J
    and-int/lit16 v1, v1, -0x1c01

    move-wide/from16 v14, v18

    goto :goto_1e

    .line 573
    .end local v18    # "color":J
    .restart local p3    # "color":J
    :cond_30
    move-wide/from16 v14, p3

    .line 574
    .end local p3    # "color":J
    .local v14, "color":J
    :goto_1e
    and-int/lit8 v9, v13, 0x10

    if-eqz v9, :cond_31

    .line 575
    shr-int/lit8 v9, v1, 0x9

    and-int/lit8 v9, v9, 0xe

    invoke-static {v14, v15, v12, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    .end local p5    # "contentColor":J
    .local v18, "contentColor":J
    and-int v1, v1, v17

    goto :goto_1f

    .line 574
    .end local v18    # "contentColor":J
    .restart local p5    # "contentColor":J
    :cond_31
    move-wide/from16 v18, p5

    .line 575
    .end local p5    # "contentColor":J
    .restart local v18    # "contentColor":J
    :goto_1f
    if-eqz v8, :cond_32

    .line 576
    const/4 v8, 0x0

    .end local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v8, "border":Landroidx/compose/foundation/BorderStroke;
    goto :goto_20

    .line 575
    .end local v8    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_32
    move-object/from16 v8, p7

    .line 576
    .end local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v8    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_20
    if-eqz v20, :cond_33

    .line 577
    const/4 v9, 0x0

    .local v9, "$this$dp$iv":I
    const/4 v11, 0x0

    .line 676
    .local v11, "$i$f$getDp":I
    move-object/from16 p1, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    int-to-float v3, v9

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .end local v9    # "$this$dp$iv":I
    .end local v11    # "$i$f$getDp":I
    .end local p8    # "elevation":F
    .local v3, "elevation":F
    goto :goto_21

    .line 576
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p8    # "elevation":F
    :cond_33
    move-object/from16 p1, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v3, p8

    .line 676
    .end local p8    # "elevation":F
    .local v3, "elevation":F
    :goto_21
    if-eqz v0, :cond_35

    .line 578
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$remember":I
    const v11, -0x1d58f75c

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 677
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv":Z
    move-object/from16 p2, v12

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 678
    .local v17, "$i$f$cache":I
    move/from16 p3, v0

    .end local v0    # "$changed$iv":I
    .local p3, "$changed$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 679
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v3

    .end local v3    # "elevation":F
    .local p4, "elevation":F
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_34

    .line 680
    const/4 v3, 0x0

    .line 578
    .local v3, "$i$a$-remember-SurfaceKt$Surface$12":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 680
    .end local v3    # "$i$a$-remember-SurfaceKt$Surface$12":I
    nop

    .line 681
    .local v3, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 682
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_22

    .line 683
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_34
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, p5

    .line 679
    :goto_22
    nop

    .line 678
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 677
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v9    # "$i$f$remember":I
    .end local p3    # "$changed$iv":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_23

    .line 676
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p4    # "elevation":F
    .local v3, "elevation":F
    .restart local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_35
    move/from16 p4, v3

    .end local v3    # "elevation":F
    .restart local p4    # "elevation":F
    move-object/from16 v0, p9

    .line 677
    .end local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_23
    and-int/lit16 v3, v13, 0x100

    if-eqz v3, :cond_36

    .line 579
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v9, 0x0

    .local v9, "$changed$iv":I
    const/4 v11, 0x0

    .line 684
    .local v11, "$i$f$getCurrent":I
    move-object/from16 p2, v0

    const v0, 0x789c5f52

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p2, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static {v12, v0, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v9    # "$changed$iv":I
    .end local v11    # "$i$f$getCurrent":I
    check-cast v0, Landroidx/compose/foundation/Indication;

    .end local p10    # "indication":Landroidx/compose/foundation/Indication;
    .local v0, "indication":Landroidx/compose/foundation/Indication;
    and-int v1, v1, v16

    goto :goto_24

    .line 677
    .end local p2    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p10    # "indication":Landroidx/compose/foundation/Indication;
    :cond_36
    move-object/from16 p2, v0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p2    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move-object/from16 v0, p10

    .line 684
    .end local p10    # "indication":Landroidx/compose/foundation/Indication;
    .local v0, "indication":Landroidx/compose/foundation/Indication;
    :goto_24
    if-eqz v4, :cond_37

    .line 580
    const/4 v3, 0x1

    .end local p11    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_25

    .line 684
    .end local v3    # "enabled":Z
    .restart local p11    # "enabled":Z
    :cond_37
    move/from16 v3, p11

    .line 580
    .end local p11    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_25
    if-eqz v5, :cond_38

    .line 581
    const/4 v4, 0x0

    .end local p12    # "onClickLabel":Ljava/lang/String;
    .local v4, "onClickLabel":Ljava/lang/String;
    goto :goto_26

    .line 580
    .end local v4    # "onClickLabel":Ljava/lang/String;
    .restart local p12    # "onClickLabel":Ljava/lang/String;
    :cond_38
    move-object/from16 v4, p12

    .line 581
    .end local p12    # "onClickLabel":Ljava/lang/String;
    .restart local v4    # "onClickLabel":Ljava/lang/String;
    :goto_26
    if-eqz v7, :cond_39

    .line 582
    const/4 v5, 0x0

    move-object v7, v0

    move v13, v1

    move v9, v3

    move-object v11, v4

    move-object/from16 v31, v5

    move-wide/from16 v3, v18

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move/from16 v1, p4

    .end local p13    # "role":Landroidx/compose/ui/semantics/Role;
    .local v5, "role":Landroidx/compose/ui/semantics/Role;
    goto :goto_27

    .line 581
    .end local v5    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local p13    # "role":Landroidx/compose/ui/semantics/Role;
    :cond_39
    move-object/from16 v5, p2

    move-object/from16 v31, p13

    move-object v7, v0

    move v13, v1

    move v9, v3

    move-object v11, v4

    move-wide/from16 v3, v18

    move-object/from16 v0, p1

    move/from16 v1, p4

    .line 582
    .end local v4    # "onClickLabel":Ljava/lang/String;
    .end local v18    # "contentColor":J
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p4    # "elevation":F
    .end local p13    # "role":Landroidx/compose/ui/semantics/Role;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "elevation":F
    .local v3, "contentColor":J
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v7, "indication":Landroidx/compose/foundation/Indication;
    .local v9, "enabled":Z
    .local v11, "onClickLabel":Ljava/lang/String;
    .local v13, "$dirty":I
    .local v31, "role":Landroidx/compose/ui/semantics/Role;
    :goto_27
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_3a

    .line 584
    move-object/from16 p1, v11

    .end local v11    # "onClickLabel":Ljava/lang/String;
    .local p1, "onClickLabel":Ljava/lang/String;
    const-string/jumbo v11, "androidx.compose.material.Surface (Surface.kt:583)"

    move/from16 p2, v9

    const v9, 0x5e874d70

    .end local v9    # "enabled":Z
    .local p2, "enabled":Z
    invoke-static {v9, v13, v2, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_28

    .line 582
    .end local p1    # "onClickLabel":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .restart local v9    # "enabled":Z
    .restart local v11    # "onClickLabel":Ljava/lang/String;
    :cond_3a
    move/from16 p2, v9

    move-object/from16 p1, v11

    .line 585
    .end local v9    # "enabled":Z
    .end local v11    # "onClickLabel":Ljava/lang/String;
    .restart local p1    # "onClickLabel":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :goto_28
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v11, 0x6

    .local v11, "$changed$iv":I
    const/16 v16, 0x0

    .line 685
    .local v16, "$i$f$getCurrent":I
    move/from16 v32, v2

    const v2, 0x789c5f52

    .end local v2    # "$dirty1":I
    .local v32, "$dirty1":I
    invoke-static {v12, v2, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v11    # "$changed$iv":I
    .end local v16    # "$i$f$getCurrent":I
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 585
    nop

    .local v2, "arg0$iv":F
    const/4 v9, 0x0

    .line 686
    .local v9, "$i$f$plus-5rwHm24":I
    add-float v10, v2, v1

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v21

    .line 585
    .end local v2    # "arg0$iv":F
    .end local v9    # "$i$f$plus-5rwHm24":I
    nop

    .line 587
    .local v21, "absoluteElevation":F
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v2, v10

    .line 588
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v2, v10

    .line 587
    nop

    .line 589
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$13;

    move-object/from16 v16, v9

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-wide/from16 v19, v14

    move-object/from16 v22, v8

    move/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move/from16 v26, p2

    move-object/from16 v27, p1

    move-object/from16 v28, v31

    move-object/from16 v29, p0

    move-object/from16 v30, p14

    invoke-direct/range {v16 .. v30}, Landroidx/compose/material/SurfaceKt$Surface$13;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v11, 0x8eaa230

    invoke-static {v12, v11, v10, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 586
    const/16 v10, 0x38

    invoke-static {v2, v9, v12, v10}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 618
    .end local v21    # "absoluteElevation":F
    :cond_3b
    move-object/from16 v30, p1

    move/from16 v29, p2

    move-object/from16 v19, v0

    move/from16 v26, v1

    move-wide/from16 v23, v3

    move-object/from16 v27, v5

    move-object/from16 v20, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move/from16 v33, v13

    move-wide/from16 v21, v14

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "elevation":F
    .end local v3    # "contentColor":J
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v6    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v7    # "indication":Landroidx/compose/foundation/Indication;
    .end local v8    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v13    # "$dirty":I
    .end local v14    # "color":J
    .end local p1    # "onClickLabel":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .local v19, "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v21, "color":J
    .local v23, "contentColor":J
    .local v25, "border":Landroidx/compose/foundation/BorderStroke;
    .local v26, "elevation":F
    .local v27, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v28, "indication":Landroidx/compose/foundation/Indication;
    .local v29, "enabled":Z
    .local v30, "onClickLabel":Ljava/lang/String;
    .local v33, "$dirty":I
    :goto_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_3c

    new-instance v34, Landroidx/compose/material/SurfaceKt$Surface$14;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-wide/from16 v4, v21

    move-wide/from16 v6, v23

    move-object/from16 v8, v25

    move/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v35, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v35, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v36, v15

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material/SurfaceKt$Surface$14;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v34

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2a

    .end local v35    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_3c
    move-object/from16 v35, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v35    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_2a
    return-void
.end method

.method public static final Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p2, "color"    # J
    .param p4, "contentColor"    # J
    .param p6, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p7, "elevation"    # F
    .param p8, "content"    # Lkotlin/jvm/functions/Function2;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
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

    .line 113
    move/from16 v12, p10

    const v0, 0x542c837a

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Surface)P(5,6,1:c#ui.graphics.Color,3:c#ui.graphics.Color!1,4:c#ui.unit.Dp)107@5308L6,108@5350L22,*113@5525L7,114@5549L894:Surface.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v12, 0xe

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v1, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p11, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v12, 0x70

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v1, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v7, v12, 0x380

    if-nez v7, :cond_8

    and-int/lit8 v7, p11, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p2

    invoke-interface {v13, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p2

    :goto_5
    and-int/lit16 v9, v12, 0x1c00

    if-nez v9, :cond_b

    and-int/lit8 v9, p11, 0x8

    if-nez v9, :cond_9

    move-wide/from16 v9, p4

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v9, p4

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_b
    move-wide/from16 v9, p4

    :goto_7
    and-int/lit8 v11, p11, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v14, p6

    goto :goto_9

    :cond_c
    const v14, 0xe000

    and-int/2addr v14, v12

    if-nez v14, :cond_e

    move-object/from16 v14, p6

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v1, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p6

    :goto_9
    and-int/lit8 v15, p11, 0x20

    if-eqz v15, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v3, p7

    goto :goto_b

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v12, v16

    if-nez v16, :cond_11

    move/from16 v3, p7

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    move/from16 v3, p7

    :goto_b
    and-int/lit8 v16, p11, 0x40

    if-eqz v16, :cond_12

    const/high16 v16, 0x180000

    or-int v1, v1, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    const/high16 v16, 0x380000

    and-int v16, v12, v16

    if-nez v16, :cond_14

    move-object/from16 v0, p8

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    const v17, 0x2db6db

    and-int v0, v1, v17

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 141
    :cond_15
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, p7

    move/from16 v22, v1

    move-object v15, v6

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-object/from16 v20, v14

    move-object v14, v4

    goto/16 :goto_11

    .line 113
    :cond_16
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_1a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 643
    :cond_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v1, v1, -0x381

    :cond_18
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v0, v1, -0x1c01

    move v1, v0

    move/from16 v0, p7

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_10

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_19
    move/from16 v0, p7

    goto :goto_10

    .line 113
    :cond_1a
    :goto_f
    if-eqz v2, :cond_1b

    .line 106
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v4, v0

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    if-eqz v5, :cond_1c

    .line 107
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    move-object v6, v0

    .end local p1    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v6, "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_1c
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1d

    .line 108
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v0, v13, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v2

    .end local p2    # "color":J
    .local v2, "color":J
    and-int/lit16 v1, v1, -0x381

    move-wide v7, v2

    .end local v2    # "color":J
    .local v7, "color":J
    :cond_1d
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_1e

    .line 109
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v7, v8, v13, v0}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    .end local p4    # "contentColor":J
    .local v2, "contentColor":J
    and-int/lit16 v1, v1, -0x1c01

    move-wide v9, v2

    .end local v2    # "contentColor":J
    .local v9, "contentColor":J
    :cond_1e
    if-eqz v11, :cond_1f

    .line 110
    const/4 v0, 0x0

    move-object v14, v0

    .end local p6    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v14, "border":Landroidx/compose/foundation/BorderStroke;
    :cond_1f
    if-eqz v15, :cond_20

    .line 111
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 643
    .local v2, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .end local v2    # "$i$f$getDp":I
    .end local p7    # "elevation":F
    .local v0, "elevation":F
    goto :goto_10

    .line 110
    .end local v0    # "elevation":F
    .restart local p7    # "elevation":F
    :cond_20
    move/from16 v0, p7

    .line 643
    .end local p7    # "elevation":F
    .restart local v0    # "elevation":F
    :goto_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 113
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material.Surface (Surface.kt:112)"

    const v5, 0x542c837a

    invoke-static {v5, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 114
    :cond_21
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x6

    .local v3, "$changed$iv":I
    const/4 v5, 0x0

    .line 644
    .local v5, "$i$f$getCurrent":I
    const v11, 0x789c5f52

    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v5    # "$i$f$getCurrent":I
    check-cast v11, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v11}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 114
    nop

    .local v2, "arg0$iv":F
    const/4 v3, 0x0

    .line 645
    .local v3, "$i$f$plus-5rwHm24":I
    add-float v5, v2, v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v22

    .line 114
    .end local v2    # "arg0$iv":F
    .end local v3    # "$i$f$plus-5rwHm24":I
    nop

    .line 116
    .local v22, "absoluteElevation":F
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 117
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 116
    nop

    .line 118
    new-instance v3, Landroidx/compose/material/SurfaceKt$Surface$1;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-wide/from16 v20, v7

    move-object/from16 v23, v14

    move/from16 v24, v0

    move-object/from16 v25, p8

    invoke-direct/range {v17 .. v25}, Landroidx/compose/material/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;)V

    const v11, -0x6c9bf7c6

    invoke-static {v13, v11, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 115
    const/16 v5, 0x38

    invoke-static {v2, v3, v13, v5}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 141
    .end local v22    # "absoluteElevation":F
    :cond_22
    move/from16 v21, v0

    move/from16 v22, v1

    move-object v15, v6

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-object/from16 v20, v14

    move-object v14, v4

    .end local v0    # "elevation":F
    .end local v1    # "$dirty":I
    .end local v4    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v7    # "color":J
    .end local v9    # "contentColor":J
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v16, "color":J
    .local v18, "contentColor":J
    .local v20, "border":Landroidx/compose/foundation/BorderStroke;
    .local v21, "elevation":F
    .local v22, "$dirty":I
    :goto_11
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_23

    new-instance v23, Landroidx/compose/material/SurfaceKt$Surface$2;

    move-object/from16 v0, v23

    move-object v1, v14

    move-object v2, v15

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, p8

    move/from16 v10, p10

    move-object v12, v11

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_23
    return-void
.end method

.method public static final Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enabled"    # Z
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "color"    # J
    .param p6, "contentColor"    # J
    .param p8, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p9, "elevation"    # F
    .param p10, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p11, "content"    # Lkotlin/jvm/functions/Function2;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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

    .line 223
    move/from16 v15, p13

    move/from16 v14, p14

    const v0, 0x5d0914cd

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Surface)P(8,7,5,9,1:c#ui.graphics.Color,3:c#ui.graphics.Color!1,4:c#ui.unit.Dp,6)216@10794L6,217@10836L22,220@10970L39,*223@11102L7,224@11126L982:Surface.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0xe

    if-nez v2, :cond_2

    move-object/from16 v12, p0

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v2, v14, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v15, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, v14, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    move/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    goto :goto_5

    :cond_8
    move/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v14, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    const v9, 0xe000

    and-int/2addr v9, v15

    if-nez v9, :cond_e

    and-int/lit8 v9, v14, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v9, p4

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v9, p4

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v1, v11

    goto :goto_9

    :cond_e
    move-wide/from16 v9, p4

    :goto_9
    const/high16 v11, 0x70000

    and-int/2addr v11, v15

    if-nez v11, :cond_11

    and-int/lit8 v11, v14, 0x20

    if-nez v11, :cond_f

    move-wide/from16 v3, p6

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_10

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v3, p6

    :cond_10
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v1, v11

    goto :goto_b

    :cond_11
    move-wide/from16 v3, p6

    :goto_b
    and-int/lit8 v11, v14, 0x40

    if-eqz v11, :cond_12

    const/high16 v16, 0x180000

    or-int v1, v1, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    const/high16 v16, 0x380000

    and-int v16, v15, v16

    if-nez v16, :cond_14

    move-object/from16 v0, p8

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_15

    const/high16 v17, 0xc00000

    or-int v1, v1, v17

    move/from16 v3, p9

    goto :goto_f

    :cond_15
    const/high16 v17, 0x1c00000

    and-int v17, v15, v17

    if-nez v17, :cond_17

    move/from16 v3, p9

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_16

    const/high16 v4, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v4, 0x400000

    :goto_e
    or-int/2addr v1, v4

    goto :goto_f

    :cond_17
    move/from16 v3, p9

    :goto_f
    and-int/lit16 v4, v14, 0x100

    if-eqz v4, :cond_18

    const/high16 v17, 0x6000000

    or-int v1, v1, v17

    move-object/from16 v3, p10

    goto :goto_11

    :cond_18
    const/high16 v17, 0xe000000

    and-int v17, v15, v17

    if-nez v17, :cond_1a

    move-object/from16 v3, p10

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v17, 0x2000000

    :goto_10
    or-int v1, v1, v17

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p10

    :goto_11
    and-int/lit16 v3, v14, 0x200

    if-eqz v3, :cond_1b

    const/high16 v3, 0x30000000

    or-int/2addr v1, v3

    move-object/from16 v3, p11

    goto :goto_13

    :cond_1b
    const/high16 v3, 0x70000000

    and-int/2addr v3, v15

    if-nez v3, :cond_1d

    move-object/from16 v3, p11

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_12
    or-int v1, v1, v17

    goto :goto_13

    :cond_1d
    move-object/from16 v3, p11

    :goto_13
    const v17, 0x5b6db6db

    and-int v3, v1, v17

    const v6, 0x12492492

    if-ne v3, v6, :cond_1f

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_14

    .line 253
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p1

    move/from16 v17, p2

    move-wide/from16 v21, p6

    move-object/from16 v23, p8

    move/from16 v24, p9

    move-object/from16 v25, p10

    move/from16 v26, v1

    move-object/from16 v18, v8

    move-wide/from16 v19, v9

    goto/16 :goto_1f

    .line 223
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v15, 0x1

    const v6, -0x70001

    const v17, -0xe001

    if-eqz v3, :cond_23

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_15

    .line 647
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_21

    and-int v1, v1, v17

    :cond_21
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_22

    and-int v0, v1, v6

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    move-object/from16 v1, p10

    move v4, v0

    move-object v5, v8

    move-wide v7, v9

    move-wide/from16 v9, p6

    move/from16 v0, p9

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1e

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_22
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p8

    move/from16 v0, p9

    move v4, v1

    move-object v5, v8

    move-wide v7, v9

    move-wide/from16 v9, p6

    move-object/from16 v1, p10

    goto/16 :goto_1e

    .line 223
    :cond_23
    :goto_15
    if-eqz v2, :cond_24

    .line 214
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 223
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_24
    move-object/from16 v2, p1

    .line 214
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    if-eqz v5, :cond_25

    .line 215
    const/4 v3, 0x1

    .end local p2    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_17

    .line 214
    .end local v3    # "enabled":Z
    .restart local p2    # "enabled":Z
    :cond_25
    move/from16 v3, p2

    .line 215
    .end local p2    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_17
    if-eqz v7, :cond_26

    .line 216
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    .end local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v5, "shape":Landroidx/compose/ui/graphics/Shape;
    goto :goto_18

    .line 215
    .end local v5    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_26
    move-object v5, v8

    .line 216
    .end local p3    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v5    # "shape":Landroidx/compose/ui/graphics/Shape;
    :goto_18
    and-int/lit8 v7, v14, 0x10

    if-eqz v7, :cond_27

    .line 217
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v13, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    .end local p4    # "color":J
    .local v7, "color":J
    and-int v1, v1, v17

    goto :goto_19

    .line 216
    .end local v7    # "color":J
    .restart local p4    # "color":J
    :cond_27
    move-wide v7, v9

    .line 217
    .end local p4    # "color":J
    .restart local v7    # "color":J
    :goto_19
    and-int/lit8 v9, v14, 0x20

    if-eqz v9, :cond_28

    .line 218
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0xe

    invoke-static {v7, v8, v13, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    .end local p6    # "contentColor":J
    .local v9, "contentColor":J
    and-int/2addr v1, v6

    goto :goto_1a

    .line 217
    .end local v9    # "contentColor":J
    .restart local p6    # "contentColor":J
    :cond_28
    move-wide/from16 v9, p6

    .line 218
    .end local p6    # "contentColor":J
    .restart local v9    # "contentColor":J
    :goto_1a
    if-eqz v11, :cond_29

    .line 219
    const/4 v6, 0x0

    .end local p8    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v6, "border":Landroidx/compose/foundation/BorderStroke;
    goto :goto_1b

    .line 218
    .end local v6    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p8    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_29
    move-object/from16 v6, p8

    .line 219
    .end local p8    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v6    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_1b
    if-eqz v0, :cond_2a

    .line 220
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v11, 0x0

    .line 646
    .local v11, "$i$f$getDp":I
    move/from16 p1, v1

    .end local v1    # "$dirty":I
    .local p1, "$dirty":I
    int-to-float v1, v0

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .end local v11    # "$i$f$getDp":I
    .end local p9    # "elevation":F
    .local v0, "elevation":F
    goto :goto_1c

    .line 219
    .end local v0    # "elevation":F
    .end local p1    # "$dirty":I
    .restart local v1    # "$dirty":I
    .restart local p9    # "elevation":F
    :cond_2a
    move/from16 p1, v1

    .end local v1    # "$dirty":I
    .restart local p1    # "$dirty":I
    move/from16 v0, p9

    .line 646
    .end local p9    # "elevation":F
    .restart local v0    # "elevation":F
    :goto_1c
    if-eqz v4, :cond_2c

    .line 221
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$remember":I
    const v11, -0x1d58f75c

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v13, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 647
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv":Z
    move-object/from16 p2, v13

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 648
    .local v17, "$i$f$cache":I
    move/from16 p3, v0

    .end local v0    # "elevation":F
    .local p3, "elevation":F
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 649
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    .line 650
    const/4 v1, 0x0

    .line 221
    .local v1, "$i$a$-remember-SurfaceKt$Surface$3":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 650
    .end local v1    # "$i$a$-remember-SurfaceKt$Surface$3":I
    nop

    .line 651
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 652
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1d

    .line 653
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_2b
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p5

    .line 649
    :goto_1d
    nop

    .line 648
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 647
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v4, p1

    move-object v1, v0

    move/from16 v0, p3

    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_1e

    .line 646
    .end local p3    # "elevation":F
    .local v0, "elevation":F
    .restart local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_2c
    move/from16 p3, v0

    .end local v0    # "elevation":F
    .restart local p3    # "elevation":F
    move/from16 v4, p1

    move-object/from16 v1, p10

    .line 647
    .end local p1    # "$dirty":I
    .end local p3    # "elevation":F
    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "elevation":F
    .local v1, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v4, "$dirty":I
    :goto_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 223
    const/4 v11, -0x1

    const-string/jumbo v12, "androidx.compose.material.Surface (Surface.kt:222)"

    const v14, 0x5d0914cd

    invoke-static {v14, v4, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 224
    :cond_2d
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .local v11, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v12, 0x6

    .local v12, "$changed$iv":I
    const/4 v14, 0x0

    .line 654
    .local v14, "$i$f$getCurrent":I
    move/from16 p1, v4

    .end local v4    # "$dirty":I
    .restart local p1    # "$dirty":I
    const v4, 0x789c5f52

    move/from16 p2, v12

    .end local v12    # "$changed$iv":I
    .local p2, "$changed$iv":I
    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v4, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v4

    .line 224
    nop

    .local v4, "arg0$iv":F
    const/4 v11, 0x0

    .line 655
    .local v11, "$i$f$plus-5rwHm24":I
    add-float v12, v4, v0

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v21

    .line 224
    .end local v4    # "arg0$iv":F
    .end local v11    # "$i$f$plus-5rwHm24":I
    nop

    .line 226
    .local v21, "absoluteElevation":F
    const/4 v4, 0x2

    new-array v4, v4, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v4, v12

    .line 227
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v4, v12

    .line 226
    nop

    .line 228
    new-instance v11, Landroidx/compose/material/SurfaceKt$Surface$4;

    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-wide/from16 v19, v7

    move-object/from16 v22, v6

    move/from16 v23, v0

    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v26, p0

    move-object/from16 v27, p11

    invoke-direct/range {v16 .. v27}, Landroidx/compose/material/SurfaceKt$Surface$4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v14, 0x7916180d

    invoke-static {v13, v14, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 225
    const/16 v12, 0x38

    invoke-static {v4, v11, v13, v12}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 253
    .end local v21    # "absoluteElevation":F
    :cond_2e
    move/from16 v26, p1

    move/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v23, v6

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    .end local v0    # "elevation":F
    .end local v1    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "enabled":Z
    .end local v5    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v6    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v7    # "color":J
    .end local v9    # "contentColor":J
    .end local p1    # "$dirty":I
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "enabled":Z
    .local v18, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v19, "color":J
    .local v21, "contentColor":J
    .local v23, "border":Landroidx/compose/foundation/BorderStroke;
    .local v24, "elevation":F
    .local v25, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v26, "$dirty":I
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_2f

    new-instance v27, Landroidx/compose/material/SurfaceKt$Surface$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-object/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, p11

    move-object/from16 v28, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v13, p13

    move-object v15, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v27

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_20

    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2f
    move-object/from16 v28, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v28    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_20
    return-void
.end method

.method public static final Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "color"    # J
    .param p7, "contentColor"    # J
    .param p9, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p10, "elevation"    # F
    .param p11, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p12, "content"    # Lkotlin/jvm/functions/Function2;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
    .param p15, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 337
    move/from16 v15, p14

    move/from16 v14, p16

    const v0, 0xf9e37f1

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Surface)P(9,8,7,5,10,1:c#ui.graphics.Color,3:c#ui.graphics.Color!1,4:c#ui.unit.Dp,6)330@16547L6,331@16589L22,334@16723L39,*337@16855L7,338@16879L1024:Surface.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p14

    .local v1, "$dirty":I
    move/from16 v2, p15

    .local v2, "$dirty1":I
    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    move/from16 v12, p0

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move/from16 v12, p0

    :goto_1
    and-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v15, 0x70

    if-nez v3, :cond_5

    move-object/from16 v11, p1

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v11, p1

    :goto_3
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v14, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move/from16 v8, p3

    :goto_7
    and-int/lit8 v9, v14, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v10, p4

    goto :goto_9

    :cond_c
    const v10, 0xe000

    and-int/2addr v10, v15

    if-nez v10, :cond_e

    move-object/from16 v10, p4

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_e
    move-object/from16 v10, p4

    :goto_9
    const/high16 v16, 0x70000

    and-int v16, v15, v16

    if-nez v16, :cond_11

    and-int/lit8 v16, v14, 0x20

    if-nez v16, :cond_f

    move-wide/from16 v4, p5

    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v4, p5

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_11
    move-wide/from16 v4, p5

    :goto_b
    const/high16 v17, 0x380000

    and-int v17, v15, v17

    if-nez v17, :cond_14

    and-int/lit8 v17, v14, 0x40

    if-nez v17, :cond_12

    move/from16 v18, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .local v18, "$dirty":I
    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    .end local v18    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_12
    move/from16 v18, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .restart local v18    # "$dirty":I
    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v18, v18, v19

    goto :goto_d

    .end local v18    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_14
    move/from16 v18, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .restart local v18    # "$dirty":I
    :goto_d
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_15

    const/high16 v1, 0xc00000

    or-int v18, v18, v1

    move-object/from16 v1, p9

    goto :goto_f

    :cond_15
    const/high16 v1, 0x1c00000

    and-int/2addr v1, v15

    if-nez v1, :cond_17

    move-object/from16 v1, p9

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v18, v18, v19

    goto :goto_f

    :cond_17
    move-object/from16 v1, p9

    :goto_f
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_18

    const/high16 v19, 0x6000000

    or-int v18, v18, v19

    move/from16 v4, p10

    goto :goto_11

    :cond_18
    const/high16 v19, 0xe000000

    and-int v19, v15, v19

    if-nez v19, :cond_1a

    move/from16 v4, p10

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_19

    const/high16 v5, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v5, 0x2000000

    :goto_10
    or-int v18, v18, v5

    goto :goto_11

    :cond_1a
    move/from16 v4, p10

    :goto_11
    and-int/lit16 v5, v14, 0x200

    if-eqz v5, :cond_1b

    const/high16 v19, 0x30000000

    or-int v18, v18, v19

    move-object/from16 v4, p11

    goto :goto_13

    :cond_1b
    const/high16 v19, 0x70000000

    and-int v19, v15, v19

    if-nez v19, :cond_1d

    move-object/from16 v4, p11

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_12
    or-int v18, v18, v19

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p11

    :goto_13
    and-int/lit16 v4, v14, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p12

    goto :goto_15

    :cond_1e
    and-int/lit8 v4, p15, 0xe

    if-nez v4, :cond_20

    move-object/from16 v4, p12

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/16 v19, 0x4

    goto :goto_14

    :cond_1f
    const/16 v19, 0x2

    :goto_14
    or-int v2, v2, v19

    goto :goto_15

    :cond_20
    move-object/from16 v4, p12

    :goto_15
    const v19, 0x5b6db6db

    and-int v4, v18, v19

    const v6, 0x12492492

    if-ne v4, v6, :cond_22

    and-int/lit8 v4, v2, 0xb

    const/4 v6, 0x2

    if-ne v4, v6, :cond_22

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_16

    .line 368
    :cond_21
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, p2

    move-wide/from16 v20, p5

    move-wide/from16 v22, p7

    move-object/from16 v24, p9

    move/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 p13, v2

    move-object/from16 v19, v10

    move/from16 v27, v18

    move/from16 v18, v8

    goto/16 :goto_21

    .line 337
    :cond_22
    :goto_16
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v15, 0x1

    const v6, -0x380001

    const v19, -0x70001

    if-eqz v4, :cond_26

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_17

    .line 657
    :cond_23
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_24

    and-int v18, v18, v19

    :cond_24
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_25

    and-int v0, v18, v6

    move-object/from16 v3, p2

    move-object/from16 v5, p9

    move/from16 v6, p10

    move v11, v0

    move v4, v8

    move-object v7, v10

    move-wide/from16 v8, p5

    move-wide/from16 v0, p7

    move-object/from16 v10, p11

    .end local v18    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_20

    .end local v0    # "$dirty":I
    .restart local v18    # "$dirty":I
    :cond_25
    move-object/from16 v3, p2

    move-wide/from16 v0, p7

    move-object/from16 v5, p9

    move/from16 v6, p10

    move v4, v8

    move-object v7, v10

    move/from16 v11, v18

    move-wide/from16 v8, p5

    move-object/from16 v10, p11

    goto/16 :goto_20

    .line 337
    :cond_26
    :goto_17
    if-eqz v3, :cond_27

    .line 328
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_18

    .line 337
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v3, p2

    .line 328
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    if-eqz v7, :cond_28

    .line 329
    const/4 v4, 0x1

    .end local p3    # "enabled":Z
    .local v4, "enabled":Z
    goto :goto_19

    .line 328
    .end local v4    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_28
    move v4, v8

    .line 329
    .end local p3    # "enabled":Z
    .restart local v4    # "enabled":Z
    :goto_19
    if-eqz v9, :cond_29

    .line 330
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    .end local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "shape":Landroidx/compose/ui/graphics/Shape;
    goto :goto_1a

    .line 329
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_29
    move-object v7, v10

    .line 330
    .end local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    :goto_1a
    and-int/lit8 v8, v14, 0x20

    if-eqz v8, :cond_2a

    .line 331
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v9, 0x6

    invoke-virtual {v8, v13, v9}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v8

    .end local p5    # "color":J
    .local v8, "color":J
    and-int v18, v18, v19

    goto :goto_1b

    .line 330
    .end local v8    # "color":J
    .restart local p5    # "color":J
    :cond_2a
    move-wide/from16 v8, p5

    .line 331
    .end local p5    # "color":J
    .restart local v8    # "color":J
    :goto_1b
    and-int/lit8 v10, v14, 0x40

    if-eqz v10, :cond_2b

    .line 332
    shr-int/lit8 v10, v18, 0xf

    and-int/lit8 v10, v10, 0xe

    invoke-static {v8, v9, v13, v10}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    .end local p7    # "contentColor":J
    .local v19, "contentColor":J
    and-int v18, v18, v6

    goto :goto_1c

    .line 331
    .end local v19    # "contentColor":J
    .restart local p7    # "contentColor":J
    :cond_2b
    move-wide/from16 v19, p7

    .line 332
    .end local p7    # "contentColor":J
    .restart local v19    # "contentColor":J
    :goto_1c
    if-eqz v0, :cond_2c

    .line 333
    const/4 v0, 0x0

    .end local p9    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v0, "border":Landroidx/compose/foundation/BorderStroke;
    goto :goto_1d

    .line 332
    .end local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p9    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_2c
    move-object/from16 v0, p9

    .line 333
    .end local p9    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_1d
    if-eqz v1, :cond_2d

    .line 334
    const/4 v1, 0x0

    .local v1, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 656
    .local v6, "$i$f$getDp":I
    int-to-float v10, v1

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .end local v6    # "$i$f$getDp":I
    .end local p10    # "elevation":F
    .local v1, "elevation":F
    goto :goto_1e

    .line 333
    .end local v1    # "elevation":F
    .restart local p10    # "elevation":F
    :cond_2d
    move/from16 v1, p10

    .line 656
    .end local p10    # "elevation":F
    .restart local v1    # "elevation":F
    :goto_1e
    if-eqz v5, :cond_2f

    .line 335
    const/4 v5, 0x0

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v10, -0x1d58f75c

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v13, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 657
    const/4 v10, 0x0

    .local v10, "invalid$iv$iv":Z
    move-object/from16 p2, v13

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 658
    .local v21, "$i$f$cache":I
    move-object/from16 p3, v0

    .end local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    .local p3, "border":Landroidx/compose/foundation/BorderStroke;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 659
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "elevation":F
    .local p4, "elevation":F
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2e

    .line 660
    const/4 v1, 0x0

    .line 335
    .local v1, "$i$a$-remember-SurfaceKt$Surface$6":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 660
    .end local v1    # "$i$a$-remember-SurfaceKt$Surface$6":I
    nop

    .line 661
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 662
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1f

    .line 663
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_2e
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p5

    .line 659
    :goto_1f
    nop

    .line 658
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 657
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "invalid$iv$iv":Z
    .end local v21    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v5    # "$changed$iv":I
    .end local v6    # "$i$f$remember":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v10, v0

    move/from16 v11, v18

    move-wide/from16 v0, v19

    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_20

    .line 656
    .end local p3    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local p4    # "elevation":F
    .local v0, "border":Landroidx/compose/foundation/BorderStroke;
    .local v1, "elevation":F
    .restart local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_2f
    move-object/from16 p3, v0

    move/from16 p4, v1

    .end local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v1    # "elevation":F
    .restart local p3    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p4    # "elevation":F
    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v10, p11

    move/from16 v11, v18

    move-wide/from16 v0, v19

    .line 657
    .end local v18    # "$dirty":I
    .end local v19    # "contentColor":J
    .end local p3    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local p4    # "elevation":F
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "contentColor":J
    .local v5, "border":Landroidx/compose/foundation/BorderStroke;
    .local v6, "elevation":F
    .local v10, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v11, "$dirty":I
    :goto_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_30

    .line 337
    const-string/jumbo v12, "androidx.compose.material.Surface (Surface.kt:336)"

    const v14, 0xf9e37f1

    invoke-static {v14, v11, v2, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 338
    :cond_30
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .local v12, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x6

    .local v14, "$changed$iv":I
    const/16 v17, 0x0

    .line 664
    .local v17, "$i$f$getCurrent":I
    move/from16 p13, v2

    .end local v2    # "$dirty1":I
    .local p13, "$dirty1":I
    const v2, 0x789c5f52

    move/from16 p2, v11

    .end local v11    # "$dirty":I
    .local p2, "$dirty":I
    const-string v11, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v2, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 338
    nop

    .local v2, "arg0$iv":F
    const/4 v11, 0x0

    .line 665
    .local v11, "$i$f$plus-5rwHm24":I
    add-float v12, v2, v6

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v21

    .line 338
    .end local v2    # "arg0$iv":F
    .end local v11    # "$i$f$plus-5rwHm24":I
    nop

    .line 340
    .local v21, "absoluteElevation":F
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v2, v12

    .line 341
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v2, v12

    .line 340
    nop

    .line 342
    new-instance v11, Landroidx/compose/material/SurfaceKt$Surface$7;

    move-object/from16 v16, v11

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, p0

    move-object/from16 v25, v10

    move/from16 v26, v4

    move-object/from16 v27, p1

    move-object/from16 v28, p12

    invoke-direct/range {v16 .. v28}, Landroidx/compose/material/SurfaceKt$Surface$7;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v14, -0x52ec04cf

    invoke-static {v13, v14, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 339
    const/16 v12, 0x38

    invoke-static {v2, v11, v13, v12}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 368
    .end local v21    # "absoluteElevation":F
    :cond_31
    move/from16 v27, p2

    move-wide/from16 v22, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    move-object/from16 v26, v10

    .end local v0    # "contentColor":J
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "enabled":Z
    .end local v5    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v6    # "elevation":F
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "color":J
    .end local v10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p2    # "$dirty":I
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "enabled":Z
    .local v19, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v20, "color":J
    .local v22, "contentColor":J
    .local v24, "border":Landroidx/compose/foundation/BorderStroke;
    .local v25, "elevation":F
    .local v26, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v27, "$dirty":I
    :goto_21
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_32

    new-instance v28, Landroidx/compose/material/SurfaceKt$Surface$8;

    move-object/from16 v0, v28

    move/from16 v1, p0

    move/from16 v29, p13

    .end local p13    # "$dirty1":I
    .local v29, "$dirty1":I
    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v30, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v30, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v13, p12

    move-object/from16 v31, v14

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$8;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v28

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v31

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_22

    .end local v29    # "$dirty1":I
    .end local v30    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p13    # "$dirty1":I
    :cond_32
    move/from16 v29, p13

    move-object/from16 v30, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p13    # "$dirty1":I
    .restart local v29    # "$dirty1":I
    .restart local v30    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_22
    return-void
.end method

.method public static final Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p0, "checked"    # Z
    .param p1, "onCheckedChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "color"    # J
    .param p7, "contentColor"    # J
    .param p9, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p10, "elevation"    # F
    .param p11, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p12, "content"    # Lkotlin/jvm/functions/Function2;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
    .param p15, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 452
    move/from16 v15, p14

    move/from16 v14, p16

    const v0, 0x4ff6b910

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Surface)P(1,9,8,6,10,2:c#ui.graphics.Color,4:c#ui.graphics.Color!1,5:c#ui.unit.Dp,7)445@22417L6,446@22459L22,449@22593L39,*452@22725L7,453@22749L1034:Surface.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p14

    .local v1, "$dirty":I
    move/from16 v2, p15

    .local v2, "$dirty1":I
    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    move/from16 v12, p0

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move/from16 v12, p0

    :goto_1
    and-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v15, 0x70

    if-nez v3, :cond_5

    move-object/from16 v11, p1

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v11, p1

    :goto_3
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v1, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v14, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move/from16 v8, p3

    :goto_7
    and-int/lit8 v9, v14, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v10, p4

    goto :goto_9

    :cond_c
    const v10, 0xe000

    and-int/2addr v10, v15

    if-nez v10, :cond_e

    move-object/from16 v10, p4

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_e
    move-object/from16 v10, p4

    :goto_9
    const/high16 v16, 0x70000

    and-int v16, v15, v16

    if-nez v16, :cond_11

    and-int/lit8 v16, v14, 0x20

    if-nez v16, :cond_f

    move-wide/from16 v4, p5

    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v4, p5

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_11
    move-wide/from16 v4, p5

    :goto_b
    const/high16 v17, 0x380000

    and-int v17, v15, v17

    if-nez v17, :cond_14

    and-int/lit8 v17, v14, 0x40

    if-nez v17, :cond_12

    move/from16 v18, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .local v18, "$dirty":I
    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    .end local v18    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_12
    move/from16 v18, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .restart local v18    # "$dirty":I
    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v18, v18, v19

    goto :goto_d

    .end local v18    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_14
    move/from16 v18, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .restart local v18    # "$dirty":I
    :goto_d
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_15

    const/high16 v1, 0xc00000

    or-int v18, v18, v1

    move-object/from16 v1, p9

    goto :goto_f

    :cond_15
    const/high16 v1, 0x1c00000

    and-int/2addr v1, v15

    if-nez v1, :cond_17

    move-object/from16 v1, p9

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v18, v18, v19

    goto :goto_f

    :cond_17
    move-object/from16 v1, p9

    :goto_f
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_18

    const/high16 v19, 0x6000000

    or-int v18, v18, v19

    move/from16 v4, p10

    goto :goto_11

    :cond_18
    const/high16 v19, 0xe000000

    and-int v19, v15, v19

    if-nez v19, :cond_1a

    move/from16 v4, p10

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_19

    const/high16 v5, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v5, 0x2000000

    :goto_10
    or-int v18, v18, v5

    goto :goto_11

    :cond_1a
    move/from16 v4, p10

    :goto_11
    and-int/lit16 v5, v14, 0x200

    if-eqz v5, :cond_1b

    const/high16 v19, 0x30000000

    or-int v18, v18, v19

    move-object/from16 v4, p11

    goto :goto_13

    :cond_1b
    const/high16 v19, 0x70000000

    and-int v19, v15, v19

    if-nez v19, :cond_1d

    move-object/from16 v4, p11

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_12
    or-int v18, v18, v19

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p11

    :goto_13
    and-int/lit16 v4, v14, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p12

    goto :goto_15

    :cond_1e
    and-int/lit8 v4, p15, 0xe

    if-nez v4, :cond_20

    move-object/from16 v4, p12

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/16 v19, 0x4

    goto :goto_14

    :cond_1f
    const/16 v19, 0x2

    :goto_14
    or-int v2, v2, v19

    goto :goto_15

    :cond_20
    move-object/from16 v4, p12

    :goto_15
    const v19, 0x5b6db6db

    and-int v4, v18, v19

    const v6, 0x12492492

    if-ne v4, v6, :cond_22

    and-int/lit8 v4, v2, 0xb

    const/4 v6, 0x2

    if-ne v4, v6, :cond_22

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_16

    .line 483
    :cond_21
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, p2

    move-wide/from16 v20, p5

    move-wide/from16 v22, p7

    move-object/from16 v24, p9

    move/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 p13, v2

    move-object/from16 v19, v10

    move/from16 v27, v18

    move/from16 v18, v8

    goto/16 :goto_21

    .line 452
    :cond_22
    :goto_16
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v15, 0x1

    const v6, -0x380001

    const v19, -0x70001

    if-eqz v4, :cond_26

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_17

    .line 667
    :cond_23
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_24

    and-int v18, v18, v19

    :cond_24
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_25

    and-int v0, v18, v6

    move-object/from16 v3, p2

    move-object/from16 v5, p9

    move/from16 v6, p10

    move v11, v0

    move v4, v8

    move-object v7, v10

    move-wide/from16 v8, p5

    move-wide/from16 v0, p7

    move-object/from16 v10, p11

    .end local v18    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_20

    .end local v0    # "$dirty":I
    .restart local v18    # "$dirty":I
    :cond_25
    move-object/from16 v3, p2

    move-wide/from16 v0, p7

    move-object/from16 v5, p9

    move/from16 v6, p10

    move v4, v8

    move-object v7, v10

    move/from16 v11, v18

    move-wide/from16 v8, p5

    move-object/from16 v10, p11

    goto/16 :goto_20

    .line 452
    :cond_26
    :goto_17
    if-eqz v3, :cond_27

    .line 443
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_18

    .line 452
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v3, p2

    .line 443
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    if-eqz v7, :cond_28

    .line 444
    const/4 v4, 0x1

    .end local p3    # "enabled":Z
    .local v4, "enabled":Z
    goto :goto_19

    .line 443
    .end local v4    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_28
    move v4, v8

    .line 444
    .end local p3    # "enabled":Z
    .restart local v4    # "enabled":Z
    :goto_19
    if-eqz v9, :cond_29

    .line 445
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    .end local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "shape":Landroidx/compose/ui/graphics/Shape;
    goto :goto_1a

    .line 444
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_29
    move-object v7, v10

    .line 445
    .end local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    :goto_1a
    and-int/lit8 v8, v14, 0x20

    if-eqz v8, :cond_2a

    .line 446
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v9, 0x6

    invoke-virtual {v8, v13, v9}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v8

    .end local p5    # "color":J
    .local v8, "color":J
    and-int v18, v18, v19

    goto :goto_1b

    .line 445
    .end local v8    # "color":J
    .restart local p5    # "color":J
    :cond_2a
    move-wide/from16 v8, p5

    .line 446
    .end local p5    # "color":J
    .restart local v8    # "color":J
    :goto_1b
    and-int/lit8 v10, v14, 0x40

    if-eqz v10, :cond_2b

    .line 447
    shr-int/lit8 v10, v18, 0xf

    and-int/lit8 v10, v10, 0xe

    invoke-static {v8, v9, v13, v10}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    .end local p7    # "contentColor":J
    .local v19, "contentColor":J
    and-int v18, v18, v6

    goto :goto_1c

    .line 446
    .end local v19    # "contentColor":J
    .restart local p7    # "contentColor":J
    :cond_2b
    move-wide/from16 v19, p7

    .line 447
    .end local p7    # "contentColor":J
    .restart local v19    # "contentColor":J
    :goto_1c
    if-eqz v0, :cond_2c

    .line 448
    const/4 v0, 0x0

    .end local p9    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v0, "border":Landroidx/compose/foundation/BorderStroke;
    goto :goto_1d

    .line 447
    .end local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p9    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_2c
    move-object/from16 v0, p9

    .line 448
    .end local p9    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_1d
    if-eqz v1, :cond_2d

    .line 449
    const/4 v1, 0x0

    .local v1, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 666
    .local v6, "$i$f$getDp":I
    int-to-float v10, v1

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .end local v6    # "$i$f$getDp":I
    .end local p10    # "elevation":F
    .local v1, "elevation":F
    goto :goto_1e

    .line 448
    .end local v1    # "elevation":F
    .restart local p10    # "elevation":F
    :cond_2d
    move/from16 v1, p10

    .line 666
    .end local p10    # "elevation":F
    .restart local v1    # "elevation":F
    :goto_1e
    if-eqz v5, :cond_2f

    .line 450
    const/4 v5, 0x0

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v10, -0x1d58f75c

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v13, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 667
    const/4 v10, 0x0

    .local v10, "invalid$iv$iv":Z
    move-object/from16 p2, v13

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 668
    .local v21, "$i$f$cache":I
    move-object/from16 p3, v0

    .end local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    .local p3, "border":Landroidx/compose/foundation/BorderStroke;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 669
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "elevation":F
    .local p4, "elevation":F
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2e

    .line 670
    const/4 v1, 0x0

    .line 450
    .local v1, "$i$a$-remember-SurfaceKt$Surface$9":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 670
    .end local v1    # "$i$a$-remember-SurfaceKt$Surface$9":I
    nop

    .line 671
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 672
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1f

    .line 673
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_2e
    move-object/from16 p5, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p5

    .line 669
    :goto_1f
    nop

    .line 668
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 667
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "invalid$iv$iv":Z
    .end local v21    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v5    # "$changed$iv":I
    .end local v6    # "$i$f$remember":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v10, v0

    move/from16 v11, v18

    move-wide/from16 v0, v19

    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_20

    .line 666
    .end local p3    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local p4    # "elevation":F
    .local v0, "border":Landroidx/compose/foundation/BorderStroke;
    .local v1, "elevation":F
    .restart local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_2f
    move-object/from16 p3, v0

    move/from16 p4, v1

    .end local v0    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v1    # "elevation":F
    .restart local p3    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p4    # "elevation":F
    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v10, p11

    move/from16 v11, v18

    move-wide/from16 v0, v19

    .line 667
    .end local v18    # "$dirty":I
    .end local v19    # "contentColor":J
    .end local p3    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local p4    # "elevation":F
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "contentColor":J
    .local v5, "border":Landroidx/compose/foundation/BorderStroke;
    .local v6, "elevation":F
    .local v10, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v11, "$dirty":I
    :goto_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_30

    .line 452
    const-string/jumbo v12, "androidx.compose.material.Surface (Surface.kt:451)"

    const v14, 0x4ff6b910

    invoke-static {v14, v11, v2, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 453
    :cond_30
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .local v12, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x6

    .local v14, "$changed$iv":I
    const/16 v17, 0x0

    .line 674
    .local v17, "$i$f$getCurrent":I
    move/from16 p13, v2

    .end local v2    # "$dirty1":I
    .local p13, "$dirty1":I
    const v2, 0x789c5f52

    move/from16 p2, v11

    .end local v11    # "$dirty":I
    .local p2, "$dirty":I
    const-string v11, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v2, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 453
    nop

    .local v2, "arg0$iv":F
    const/4 v11, 0x0

    .line 675
    .local v11, "$i$f$plus-5rwHm24":I
    add-float v12, v2, v6

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v21

    .line 453
    .end local v2    # "arg0$iv":F
    .end local v11    # "$i$f$plus-5rwHm24":I
    nop

    .line 455
    .local v21, "absoluteElevation":F
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v2, v12

    .line 456
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v2, v12

    .line 455
    nop

    .line 457
    new-instance v11, Landroidx/compose/material/SurfaceKt$Surface$10;

    move-object/from16 v16, v11

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, p0

    move-object/from16 v25, v10

    move/from16 v26, v4

    move-object/from16 v27, p1

    move-object/from16 v28, p12

    invoke-direct/range {v16 .. v28}, Landroidx/compose/material/SurfaceKt$Surface$10;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    const v14, -0x129383b0

    invoke-static {v13, v14, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 454
    const/16 v12, 0x38

    invoke-static {v2, v11, v13, v12}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 483
    .end local v21    # "absoluteElevation":F
    :cond_31
    move/from16 v27, p2

    move-wide/from16 v22, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    move-object/from16 v26, v10

    .end local v0    # "contentColor":J
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "enabled":Z
    .end local v5    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v6    # "elevation":F
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "color":J
    .end local v10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p2    # "$dirty":I
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "enabled":Z
    .local v19, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v20, "color":J
    .local v22, "contentColor":J
    .local v24, "border":Landroidx/compose/foundation/BorderStroke;
    .local v25, "elevation":F
    .local v26, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v27, "$dirty":I
    :goto_21
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_32

    new-instance v28, Landroidx/compose/material/SurfaceKt$Surface$11;

    move-object/from16 v0, v28

    move/from16 v1, p0

    move/from16 v29, p13

    .end local p13    # "$dirty1":I
    .local v29, "$dirty1":I
    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v30, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v30, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v13, p12

    move-object/from16 v31, v14

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$11;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v28

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v31

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_22

    .end local v29    # "$dirty1":I
    .end local v30    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p13    # "$dirty1":I
    :cond_32
    move/from16 v29, p13

    move-object/from16 v30, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p13    # "$dirty1":I
    .restart local v29    # "$dirty1":I
    .restart local v30    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_22
    return-void
.end method

.method public static final synthetic access$surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p2, "backgroundColor"    # J
    .param p4, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p5, "elevation"    # F

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 2
    .param p0, "color"    # J
    .param p2, "elevationOverlay"    # Landroidx/compose/material/ElevationOverlay;
    .param p3, "absoluteElevation"    # F
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0, "$this$surface_u2d8ww4TTg"    # Landroidx/compose/ui/Modifier;
    .param p1, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p2, "backgroundColor"    # J
    .param p4, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p5, "elevation"    # F

    .line 625
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p5

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 626
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    if-eqz p4, :cond_0

    invoke-static {v1, p4, p1}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_0
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 627
    invoke-static {v0, p2, p3, p1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 628
    invoke-static {v0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method private static final surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 8
    .param p0, "color"    # J
    .param p2, "elevationOverlay"    # Landroidx/compose/material/ElevationOverlay;
    .param p3, "absoluteElevation"    # F
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    const v0, 0x5d144bf8

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(surfaceColorAtElevation)P(1:c#ui.graphics.Color,2,0:c#ui.unit.Dp)635@31093L6,636@31164L31:Surface.kt#jmzs0o"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.surfaceColorAtElevation (Surface.kt:634)"

    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 636
    :cond_0
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 637
    and-int/lit8 v0, p5, 0xe

    shr-int/lit8 v1, p5, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shl-int/lit8 v1, p5, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v7, v0, v1

    move-object v2, p2

    move-wide v3, p0

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroidx/compose/material/ElevationOverlay;->apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    goto :goto_0

    .line 639
    :cond_1
    move-wide v0, p0

    .line 636
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method
