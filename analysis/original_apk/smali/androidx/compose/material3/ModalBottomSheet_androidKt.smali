.class public final Landroidx/compose/material3/ModalBottomSheet_androidKt;
.super Ljava/lang/Object;
.source "ModalBottomSheet.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheet_androidKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,702:1\n74#2:703\n74#2:762\n74#2:763\n1116#3,6:704\n1116#3,3:715\n1119#3,3:721\n1116#3,6:725\n1116#3,6:731\n1116#3,6:737\n1116#3,6:743\n1116#3,6:750\n1116#3,6:756\n1116#3,6:764\n1116#3,6:770\n487#4,4:710\n491#4,2:718\n495#4:724\n25#5:714\n487#6:720\n646#7:749\n81#8:776\n81#8:777\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt\n*L\n153#1:703\n438#1:762\n442#1:763\n154#1:704,6\n157#1:715,3\n157#1:721,3\n158#1:725,6\n167#1:731,6\n175#1:737,6\n281#1:743,6\n379#1:750,6\n392#1:756,6\n443#1:764,6\n471#1:770,6\n157#1:710,4\n157#1:718,2\n157#1:724\n157#1:714\n157#1:720\n372#1:749\n373#1:776\n441#1:777\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u00b9\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r2\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00010\u0018\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a>\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0012H\u0001\u00a2\u0006\u0002\u0010\u001e\u001a0\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\r2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010!\u001a\u00020\"H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$\u001a-\u0010%\u001a\u00020\u00072\u0008\u0008\u0002\u0010&\u001a\u00020\"2\u0014\u0008\u0002\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\"0\u0018H\u0007\u00a2\u0006\u0002\u0010)\u001a\u000c\u0010*\u001a\u00020\"*\u00020+H\u0002\u001a\u001c\u0010,\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.H\u0003\u001a\u0014\u0010/\u001a\u00020\"*\u0002002\u0006\u00101\u001a\u00020\"H\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00062\u00b2\u0006\n\u00103\u001a\u00020.X\u008a\u0084\u0002\u00b2\u0006\u0015\u00104\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0012X\u008a\u0084\u0002"
    }
    d2 = {
        "ModalBottomSheet",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "sheetMaxWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "scrimColor",
        "dragHandle",
        "Landroidx/compose/runtime/Composable;",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "properties",
        "Landroidx/compose/material3/ModalBottomSheetProperties;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "ModalBottomSheet-dYc4hso",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "ModalBottomSheetPopup",
        "(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "Scrim",
        "color",
        "visible",
        "",
        "Scrim-3J-VO9M",
        "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V",
        "rememberModalBottomSheetState",
        "skipPartiallyExpanded",
        "confirmValueChange",
        "Landroidx/compose/material3/SheetValue;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;",
        "isFlagSecureEnabled",
        "Landroid/view/View;",
        "modalBottomSheetAnchors",
        "fullHeight",
        "",
        "shouldApplySecureFlag",
        "Landroidx/compose/ui/window/SecureFlagPolicy;",
        "isSecureFlagSetOnParent",
        "material3_release",
        "alpha",
        "currentContent"
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
.method public static final ModalBottomSheet-dYc4hso(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 41
    .param p0, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "sheetState"    # Landroidx/compose/material3/SheetState;
    .param p3, "sheetMaxWidth"    # F
    .param p4, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "containerColor"    # J
    .param p7, "contentColor"    # J
    .param p9, "tonalElevation"    # F
    .param p10, "scrimColor"    # J
    .param p12, "dragHandle"    # Lkotlin/jvm/functions/Function2;
    .param p13, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p14, "properties"    # Landroidx/compose/material3/ModalBottomSheetProperties;
    .param p15, "content"    # Lkotlin/jvm/functions/Function3;
    .param p16, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p17, "$changed"    # I
    .param p18, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SheetState;",
            "F",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/material3/ModalBottomSheetProperties;",
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
            "III)V"
        }
    .end annotation

    .line 151
    move-object/from16 v15, p0

    move/from16 v14, p17

    move/from16 v13, p18

    move/from16 v11, p19

    const v0, 0x385187de

    move-object/from16 v1, p16

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ModalBottomSheet)P(5,4,10,9:c#ui.unit.Dp,8,0:c#ui.graphics.Color,2:c#ui.graphics.Color,11:c#ui.unit.Dp,7:c#ui.graphics.Color,3,12,6)139@6724L31,141@6855L13,142@6918L14,143@6960L31,145@7093L10,147@7240L12,152@7505L7,153@7528L44,153@7517L55,156@7589L24,157@7653L277,166@7984L143,174@8216L350,172@8133L5284,280@13492L41,280@13465L68:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p17

    .local v1, "$dirty":I
    move/from16 v2, p18

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0x6

    if-nez v3, :cond_2

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v14, 0x30

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
    and-int/lit16 v9, v14, 0x180

    if-nez v9, :cond_8

    and-int/lit8 v9, v11, 0x4

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v9, p2

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v14, 0xc00

    if-nez v6, :cond_b

    move/from16 v6, p3

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_6

    :cond_a
    const/16 v18, 0x400

    :goto_6
    or-int v1, v1, v18

    goto :goto_7

    :cond_b
    move/from16 v6, p3

    :goto_7
    and-int/lit16 v7, v14, 0x6000

    if-nez v7, :cond_e

    and-int/lit8 v7, v11, 0x10

    if-nez v7, :cond_c

    move-object/from16 v7, p4

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v7, p4

    :cond_d
    const/16 v19, 0x2000

    :goto_8
    or-int v1, v1, v19

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    const/high16 v19, 0x30000

    and-int v19, v14, v19

    if-nez v19, :cond_11

    and-int/lit8 v19, v11, 0x20

    if-nez v19, :cond_f

    move-wide/from16 v5, p5

    invoke-interface {v12, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v5, p5

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v1, v1, v20

    goto :goto_b

    :cond_11
    move-wide/from16 v5, p5

    :goto_b
    const/high16 v20, 0x180000

    and-int v20, v14, v20

    if-nez v20, :cond_14

    and-int/lit8 v20, v11, 0x40

    if-nez v20, :cond_12

    move-wide/from16 v4, p7

    invoke-interface {v12, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_13

    const/high16 v6, 0x100000

    goto :goto_c

    :cond_12
    move-wide/from16 v4, p7

    :cond_13
    const/high16 v6, 0x80000

    :goto_c
    or-int/2addr v1, v6

    goto :goto_d

    :cond_14
    move-wide/from16 v4, p7

    :goto_d
    and-int/lit16 v6, v11, 0x80

    const/high16 v21, 0xc00000

    if-eqz v6, :cond_15

    or-int v1, v1, v21

    move/from16 v10, p9

    goto :goto_f

    :cond_15
    and-int v21, v14, v21

    if-nez v21, :cond_17

    move/from16 v10, p9

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_16

    const/high16 v22, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v22, 0x400000

    :goto_e
    or-int v1, v1, v22

    goto :goto_f

    :cond_17
    move/from16 v10, p9

    :goto_f
    const/high16 v22, 0x6000000

    and-int v22, v14, v22

    if-nez v22, :cond_1a

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_18

    move-wide/from16 v4, p10

    invoke-interface {v12, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_18
    move-wide/from16 v4, p10

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v1, v0

    goto :goto_11

    :cond_1a
    move-wide/from16 v4, p10

    :goto_11
    and-int/lit16 v0, v11, 0x200

    const/high16 v23, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v23

    move-object/from16 v4, p12

    goto :goto_13

    :cond_1b
    and-int v23, v14, v23

    if-nez v23, :cond_1d

    move-object/from16 v4, p12

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/high16 v5, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v5, 0x10000000

    :goto_12
    or-int/2addr v1, v5

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p12

    :goto_13
    and-int/lit8 v5, v13, 0x6

    if-nez v5, :cond_20

    and-int/lit16 v5, v11, 0x400

    if-nez v5, :cond_1e

    move-object/from16 v5, p13

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v23, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v5, p13

    :cond_1f
    const/16 v23, 0x2

    :goto_14
    or-int v2, v2, v23

    goto :goto_15

    :cond_20
    move-object/from16 v5, p13

    :goto_15
    and-int/lit8 v23, v13, 0x30

    if-nez v23, :cond_23

    and-int/lit16 v4, v11, 0x800

    if-nez v4, :cond_21

    move-object/from16 v4, p14

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v17, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v4, p14

    :cond_22
    const/16 v17, 0x10

    :goto_16
    or-int v2, v2, v17

    goto :goto_17

    :cond_23
    move-object/from16 v4, p14

    :goto_17
    and-int/lit16 v4, v11, 0x1000

    if-eqz v4, :cond_24

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v4, p15

    goto :goto_19

    :cond_24
    and-int/lit16 v4, v13, 0x180

    if-nez v4, :cond_26

    move-object/from16 v4, p15

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    const/16 v21, 0x100

    goto :goto_18

    :cond_25
    const/16 v21, 0x80

    :goto_18
    or-int v2, v2, v21

    goto :goto_19

    :cond_26
    move-object/from16 v4, p15

    :goto_19
    const v17, 0x12492493

    and-int v4, v1, v17

    const v5, 0x12492492

    if-ne v4, v5, :cond_28

    and-int/lit16 v4, v2, 0x93

    const/16 v5, 0x92

    if-ne v4, v5, :cond_28

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_1a

    .line 285
    :cond_27
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v22, p3

    move-wide/from16 v24, p5

    move-wide/from16 v26, p7

    move-wide/from16 v29, p10

    move-object/from16 v31, p12

    move-object/from16 v32, p13

    move-object/from16 v33, p14

    move/from16 v34, v1

    move/from16 v35, v2

    move-object/from16 v23, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v28, v10

    goto/16 :goto_3b

    .line 151
    :cond_28
    :goto_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v14, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_31

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_29

    goto/16 :goto_1b

    .line 149
    :cond_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_2a

    and-int/lit16 v1, v1, -0x381

    :cond_2a
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_2b

    const v0, -0xe001

    and-int/2addr v1, v0

    :cond_2b
    and-int/lit8 v0, v11, 0x20

    if-eqz v0, :cond_2c

    const v0, -0x70001

    and-int/2addr v1, v0

    :cond_2c
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_2d

    const v0, -0x380001

    and-int/2addr v1, v0

    :cond_2d
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_2e

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_2e
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_2f

    and-int/lit8 v2, v2, -0xf

    :cond_2f
    and-int/lit16 v0, v11, 0x800

    if-eqz v0, :cond_30

    and-int/lit8 v0, v2, -0x71

    move-wide/from16 v5, p5

    move-object/from16 v2, p12

    move-object/from16 v17, p13

    move-object/from16 v21, p14

    move v13, v0

    move v11, v1

    move-object/from16 v18, v8

    move-object v4, v9

    move v3, v10

    move/from16 v8, p3

    move-wide/from16 v0, p7

    move-wide/from16 v9, p10

    .end local v2    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_25

    .end local v0    # "$dirty1":I
    .restart local v2    # "$dirty1":I
    :cond_30
    move-wide/from16 v5, p5

    move-object/from16 v17, p13

    move-object/from16 v21, p14

    move v11, v1

    move v13, v2

    move-object/from16 v18, v8

    move-object v4, v9

    move v3, v10

    move/from16 v8, p3

    move-wide/from16 v0, p7

    move-wide/from16 v9, p10

    move-object/from16 v2, p12

    goto/16 :goto_25

    .line 151
    :cond_31
    :goto_1b
    if-eqz v3, :cond_32

    .line 139
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1c

    .line 151
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_32
    move-object v3, v8

    .line 139
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1c
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_33

    .line 140
    const/4 v4, 0x3

    const/4 v8, 0x0

    invoke-static {v5, v8, v12, v5, v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v4

    .end local p2    # "sheetState":Landroidx/compose/material3/SheetState;
    .local v4, "sheetState":Landroidx/compose/material3/SheetState;
    and-int/lit16 v1, v1, -0x381

    goto :goto_1d

    .line 139
    .end local v4    # "sheetState":Landroidx/compose/material3/SheetState;
    .restart local p2    # "sheetState":Landroidx/compose/material3/SheetState;
    :cond_33
    move-object v4, v9

    .line 140
    .end local p2    # "sheetState":Landroidx/compose/material3/SheetState;
    .restart local v4    # "sheetState":Landroidx/compose/material3/SheetState;
    :goto_1d
    if-eqz v16, :cond_34

    .line 141
    sget-object v8, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetMaxWidth-D9Ej5fM()F

    move-result v8

    .end local p3    # "sheetMaxWidth":F
    .local v8, "sheetMaxWidth":F
    goto :goto_1e

    .line 140
    .end local v8    # "sheetMaxWidth":F
    .restart local p3    # "sheetMaxWidth":F
    :cond_34
    move/from16 v8, p3

    .line 141
    .end local p3    # "sheetMaxWidth":F
    .restart local v8    # "sheetMaxWidth":F
    :goto_1e
    and-int/lit8 v9, v11, 0x10

    const/4 v5, 0x6

    if-eqz v9, :cond_35

    .line 142
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9, v12, v5}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    .end local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "shape":Landroidx/compose/ui/graphics/Shape;
    const v9, -0xe001

    and-int/2addr v1, v9

    :cond_35
    and-int/lit8 v9, v11, 0x20

    if-eqz v9, :cond_36

    .line 143
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9, v12, v5}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    .end local p5    # "containerColor":J
    .local v17, "containerColor":J
    const v9, -0x70001

    and-int/2addr v1, v9

    move v9, v6

    move-wide/from16 v5, v17

    goto :goto_1f

    .line 142
    .end local v17    # "containerColor":J
    .restart local p5    # "containerColor":J
    :cond_36
    move v9, v6

    move-wide/from16 v5, p5

    .line 143
    .end local p5    # "containerColor":J
    .local v5, "containerColor":J
    :goto_1f
    and-int/lit8 v17, v11, 0x40

    if-eqz v17, :cond_37

    .line 144
    shr-int/lit8 v17, v1, 0xf

    move-object/from16 v18, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    and-int/lit8 v3, v17, 0xe

    invoke-static {v5, v6, v12, v3}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    .end local p7    # "contentColor":J
    .local v23, "contentColor":J
    const v3, -0x380001

    and-int/2addr v1, v3

    goto :goto_20

    .line 143
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v23    # "contentColor":J
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p7    # "contentColor":J
    :cond_37
    move-object/from16 v18, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v18    # "modifier":Landroidx/compose/ui/Modifier;
    move-wide/from16 v23, p7

    .line 144
    .end local p7    # "contentColor":J
    .restart local v23    # "contentColor":J
    :goto_20
    if-eqz v9, :cond_38

    .line 145
    sget-object v3, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v3

    .end local p9    # "tonalElevation":F
    .local v3, "tonalElevation":F
    goto :goto_21

    .line 144
    .end local v3    # "tonalElevation":F
    .restart local p9    # "tonalElevation":F
    :cond_38
    move v3, v10

    .line 145
    .end local p9    # "tonalElevation":F
    .restart local v3    # "tonalElevation":F
    :goto_21
    and-int/lit16 v9, v11, 0x100

    if-eqz v9, :cond_39

    .line 146
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    const/4 v10, 0x6

    invoke-virtual {v9, v12, v10}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v25

    .end local p10    # "scrimColor":J
    .local v25, "scrimColor":J
    const v9, -0xe000001

    and-int/2addr v1, v9

    goto :goto_22

    .line 145
    .end local v25    # "scrimColor":J
    .restart local p10    # "scrimColor":J
    :cond_39
    move-wide/from16 v25, p10

    .line 146
    .end local p10    # "scrimColor":J
    .restart local v25    # "scrimColor":J
    :goto_22
    if-eqz v0, :cond_3a

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .end local p12    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .local v0, "dragHandle":Lkotlin/jvm/functions/Function2;
    goto :goto_23

    .end local v0    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .restart local p12    # "dragHandle":Lkotlin/jvm/functions/Function2;
    :cond_3a
    move-object/from16 v0, p12

    .end local p12    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "dragHandle":Lkotlin/jvm/functions/Function2;
    :goto_23
    and-int/lit16 v9, v11, 0x400

    if-eqz v9, :cond_3b

    .line 148
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    const/4 v10, 0x6

    invoke-virtual {v9, v12, v10}, Landroidx/compose/material3/BottomSheetDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v9

    .end local p13    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v9, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    and-int/lit8 v2, v2, -0xf

    goto :goto_24

    .line 146
    .end local v9    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local p13    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :cond_3b
    move-object/from16 v9, p13

    .line 148
    .end local p13    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local v9    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :goto_24
    and-int/lit16 v10, v11, 0x800

    if-eqz v10, :cond_3c

    .line 149
    sget-object v10, Landroidx/compose/material3/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x7

    const/16 v29, 0x0

    move-object/from16 p1, v10

    move-object/from16 p2, v17

    move/from16 p3, v21

    move/from16 p4, v27

    move/from16 p5, v28

    move-object/from16 p6, v29

    invoke-static/range {p1 .. p6}, Landroidx/compose/material3/ModalBottomSheetDefaults;->properties$default(Landroidx/compose/material3/ModalBottomSheetDefaults;Landroidx/compose/ui/window/SecureFlagPolicy;ZZILjava/lang/Object;)Landroidx/compose/material3/ModalBottomSheetProperties;

    move-result-object v10

    .end local p14    # "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    .local v10, "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    and-int/lit8 v2, v2, -0x71

    move v11, v1

    move v13, v2

    move-object/from16 v17, v9

    move-object/from16 v21, v10

    move-wide/from16 v9, v25

    move-object v2, v0

    move-wide/from16 v0, v23

    goto :goto_25

    .line 148
    .end local v10    # "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    .restart local p14    # "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    :cond_3c
    move-object/from16 v21, p14

    move v11, v1

    move v13, v2

    move-object/from16 v17, v9

    move-wide/from16 v9, v25

    move-object v2, v0

    move-wide/from16 v0, v23

    .line 149
    .end local v1    # "$dirty":I
    .end local v23    # "contentColor":J
    .end local v25    # "scrimColor":J
    .end local p14    # "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    .local v0, "contentColor":J
    .local v2, "dragHandle":Lkotlin/jvm/functions/Function2;
    .local v9, "scrimColor":J
    .local v11, "$dirty":I
    .local v13, "$dirty1":I
    .local v17, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v21, "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    :goto_25
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v23

    if-eqz v23, :cond_3d

    .line 151
    const-string/jumbo v14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.android.kt:150)"

    move-object/from16 p7, v2

    const v2, 0x385187de

    .end local v2    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .local p7, "dragHandle":Lkotlin/jvm/functions/Function2;
    invoke-static {v2, v11, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_26

    .line 149
    .end local p7    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .restart local v2    # "dragHandle":Lkotlin/jvm/functions/Function2;
    :cond_3d
    move-object/from16 p7, v2

    .line 153
    .end local v2    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "dragHandle":Lkotlin/jvm/functions/Function2;
    :goto_26
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x0

    .local v14, "$changed$iv":I
    const/16 v22, 0x0

    .line 703
    .local v22, "$i$f$getCurrent":I
    move/from16 p1, v14

    .end local v14    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const v14, 0x789c5f52

    move/from16 p8, v13

    .end local v13    # "$dirty1":I
    .local p8, "$dirty1":I
    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v14, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 153
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v22    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/unit/Density;

    .local v2, "density":Landroidx/compose/ui/unit/Density;
    const v13, -0xc201a42

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):ModalBottomSheet.android.kt#9igjgp"

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v14, v11, 0x380

    xor-int/lit16 v14, v14, 0x180

    move/from16 p9, v3

    .end local v3    # "tonalElevation":F
    .restart local p9    # "tonalElevation":F
    const/16 v3, 0x100

    if-le v14, v3, :cond_3e

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    :cond_3e
    and-int/lit16 v3, v11, 0x180

    const/16 v14, 0x100

    if-ne v3, v14, :cond_40

    :cond_3f
    const/4 v3, 0x1

    goto :goto_27

    :cond_40
    const/4 v3, 0x0

    :goto_27
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v3, v14

    .line 154
    nop

    .local v3, "invalid$iv":Z
    move-object v14, v12

    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 704
    .local v22, "$i$f$cache":I
    move-wide/from16 p11, v0

    .end local v0    # "contentColor":J
    .local p11, "contentColor":J
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 705
    .local v1, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_42

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v1

    .end local v1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .local p1, "$i$a$-let-ComposerKt$cache$1$iv":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_41

    goto :goto_28

    .line 709
    :cond_41
    move-object/from16 p2, v0

    goto :goto_29

    .line 705
    .end local p1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .restart local v1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :cond_42
    move/from16 p1, v1

    .line 706
    .end local v1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .restart local p1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_28
    const/4 v1, 0x0

    .line 154
    .local v1, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$1":I
    move-object/from16 p2, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local p2, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$1;

    invoke-direct {v0, v4, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$1;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/unit/Density;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 706
    .end local v1    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$1":I
    nop

    .line 707
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 708
    nop

    .line 705
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_29
    nop

    .line 704
    .end local p1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p2    # "it$iv":Ljava/lang/Object;
    nop

    .line 154
    .end local v3    # "invalid$iv":Z
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 157
    move v0, v1

    .local v0, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$rememberCoroutineScope":I
    const v14, 0x2e20b340

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 710
    nop

    .line 712
    move-object v14, v12

    .line 713
    .local v14, "composer$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v1

    .local v16, "$changed$iv$iv":I
    const/16 v22, 0x0

    .local v22, "$i$f$remember":I
    const v1, -0x1d58f75c

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x0

    .local v1, "invalid$iv$iv$iv":Z
    move-object/from16 p1, v12

    .local p1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 715
    .local v23, "$i$f$cache":I
    move/from16 p2, v0

    .end local v0    # "$changed$iv":I
    .local p2, "$changed$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 716
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v1

    .end local v1    # "invalid$iv$iv$iv":Z
    .local p3, "invalid$iv$iv$iv":Z
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_43

    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 719
    const/16 v25, 0x0

    .line 720
    .local v25, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v25, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 719
    .end local v25    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p4, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v25

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v14}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 718
    move/from16 p5, v1

    .end local v1    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local p5, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 717
    .end local p5    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v1

    .line 721
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p1

    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 722
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_2a

    .line 723
    .end local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_43
    move-object/from16 v1, p1

    move-object/from16 p4, v0

    .line 716
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_2a
    nop

    .line 715
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 714
    .end local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$f$cache":I
    .end local p3    # "invalid$iv$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 713
    .end local v16    # "$changed$iv$iv":I
    .end local v22    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 724
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 157
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v3    # "$i$f$rememberCoroutineScope":I
    .end local v14    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "$changed$iv":I
    move-object v0, v1

    .local v0, "scope":Lkotlinx/coroutines/CoroutineScope;
    const v1, -0xc2019c5

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v11, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v3, 0x100

    if-le v1, v3, :cond_44

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    :cond_44
    and-int/lit16 v1, v11, 0x180

    const/16 v3, 0x100

    if-ne v1, v3, :cond_46

    :cond_45
    const/4 v1, 0x1

    goto :goto_2b

    :cond_46
    const/4 v1, 0x0

    :goto_2b
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    and-int/lit8 v3, v11, 0xe

    const/4 v14, 0x4

    if-ne v3, v14, :cond_47

    const/4 v3, 0x1

    goto :goto_2c

    :cond_47
    const/4 v3, 0x0

    :goto_2c
    or-int/2addr v1, v3

    .line 158
    nop

    .local v1, "invalid$iv":Z
    move-object v3, v12

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 725
    .local v14, "$i$f$cache":I
    move-object/from16 p14, v2

    .end local v2    # "density":Landroidx/compose/ui/unit/Density;
    .local p14, "density":Landroidx/compose/ui/unit/Density;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 726
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_49

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v1

    .end local v1    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_48

    goto :goto_2d

    .line 730
    :cond_48
    move-object v1, v2

    goto :goto_2e

    .line 726
    .end local p1    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_49
    move/from16 p1, v1

    .line 727
    .end local v1    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_2d
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1":I
    move/from16 p2, v1

    .end local v1    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1":I
    .local p2, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1":I
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1$1;

    invoke-direct {v1, v4, v0, v15}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 727
    .end local p2    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1":I
    nop

    .line 728
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 729
    nop

    .line 726
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_2e
    nop

    .line 725
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 158
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "animateToDismiss":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v2, -0xc20187a

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit16 v3, v11, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v14, 0x100

    if-le v3, v14, :cond_4a

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    :cond_4a
    and-int/lit16 v3, v11, 0x180

    const/16 v14, 0x100

    if-ne v3, v14, :cond_4c

    :cond_4b
    const/4 v3, 0x1

    goto :goto_2f

    :cond_4c
    const/4 v3, 0x0

    :goto_2f
    or-int/2addr v2, v3

    and-int/lit8 v3, v11, 0xe

    const/4 v14, 0x4

    if-ne v3, v14, :cond_4d

    const/4 v3, 0x1

    goto :goto_30

    :cond_4d
    const/4 v3, 0x0

    :goto_30
    or-int/2addr v2, v3

    .line 167
    move-object v3, v12

    .local v2, "invalid$iv":Z
    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 731
    .restart local v14    # "$i$f$cache":I
    move/from16 p1, v14

    .end local v14    # "$i$f$cache":I
    .local p1, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 732
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_4f

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v2

    .end local v2    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_4e

    goto :goto_31

    .line 736
    :cond_4e
    move-object v2, v14

    goto :goto_32

    .line 732
    .end local p2    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_4f
    move/from16 p2, v2

    .line 733
    .end local v2    # "invalid$iv":Z
    .restart local p2    # "invalid$iv":Z
    :goto_31
    const/4 v2, 0x0

    .line 167
    .local v2, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1":I
    move/from16 p3, v2

    .end local v2    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1":I
    .local p3, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1":I
    new-instance v2, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1$1;

    invoke-direct {v2, v0, v4, v15}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 733
    .end local p3    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1":I
    nop

    .line 734
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 735
    nop

    .line 732
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_32
    nop

    .line 731
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 167
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p1    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .local v2, "settleToDismiss":Lkotlin/jvm/functions/Function1;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 174
    const v3, -0xc201792

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v3, v11, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v14, 0x100

    if-le v3, v14, :cond_50

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    :cond_50
    and-int/lit16 v3, v11, 0x180

    const/16 v14, 0x100

    if-ne v3, v14, :cond_52

    :cond_51
    const/4 v3, 0x1

    goto :goto_33

    :cond_52
    const/4 v3, 0x0

    :goto_33
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v3, v14

    and-int/lit8 v14, v11, 0xe

    move/from16 v16, v11

    const/4 v11, 0x4

    .end local v11    # "$dirty":I
    .local v16, "$dirty":I
    if-ne v14, v11, :cond_53

    const/4 v11, 0x1

    goto :goto_34

    :cond_53
    const/4 v11, 0x0

    :goto_34
    or-int/2addr v3, v11

    .line 175
    move-object v11, v12

    .local v3, "invalid$iv":Z
    .local v11, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 737
    .local v14, "$i$f$cache":I
    move/from16 p1, v14

    .end local v14    # "$i$f$cache":I
    .restart local p1    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 738
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_55

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v3

    .end local v3    # "invalid$iv":Z
    .restart local p2    # "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v14, v3, :cond_54

    goto :goto_35

    .line 742
    :cond_54
    move-object v3, v14

    goto :goto_36

    .line 738
    .end local p2    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_55
    move/from16 p2, v3

    .line 739
    .end local v3    # "invalid$iv":Z
    .restart local p2    # "invalid$iv":Z
    :goto_35
    const/4 v3, 0x0

    .line 175
    .local v3, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$2":I
    move/from16 p3, v3

    .end local v3    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$2":I
    .local p3, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$2":I
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;

    invoke-direct {v3, v4, v0, v15}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 739
    .end local p3    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$2":I
    nop

    .line 740
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 741
    nop

    .line 738
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_36
    nop

    .line 737
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 175
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p1    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 182
    nop

    .line 183
    new-instance v11, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3;

    move-object/from16 v23, v11

    move-wide/from16 v24, v9

    move-object/from16 v26, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v18

    move/from16 v29, v8

    move-object/from16 v30, v2

    move-object/from16 v31, v7

    move-wide/from16 v32, v5

    move-wide/from16 v34, p11

    move/from16 v36, p9

    move-object/from16 v37, p7

    move-object/from16 v38, v0

    move-object/from16 v39, p15

    invoke-direct/range {v23 .. v39}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3;-><init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)V

    const v14, -0x4e2c4c0b

    move-object/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v19, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v12, v14, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v14, p8, 0x3

    and-int/lit8 v14, v14, 0xe

    or-int/lit16 v14, v14, 0xc00

    shl-int/lit8 v0, p8, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v14

    .line 173
    move-object/from16 p1, v21

    move-object/from16 p2, v3

    move-object/from16 p3, v17

    move-object/from16 p4, v11

    move-object/from16 p5, v12

    move/from16 p6, v0

    invoke-static/range {p1 .. p6}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetPopup(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 280
    invoke-virtual {v4}, Landroidx/compose/material3/SheetState;->getHasExpandedState()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 281
    const v0, -0xc2002f6

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, v16

    .end local v16    # "$dirty":I
    .local v0, "$dirty":I
    and-int/lit16 v3, v0, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v11, 0x100

    if-le v3, v11, :cond_56

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    :cond_56
    and-int/lit16 v3, v0, 0x180

    const/16 v11, 0x100

    if-ne v3, v11, :cond_58

    :cond_57
    const/4 v3, 0x1

    goto :goto_37

    :cond_58
    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    :goto_37
    move-object v11, v12

    .restart local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 743
    .local v13, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 744
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_5a

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v1

    .end local v1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .local p1, "animateToDismiss":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_59

    goto :goto_38

    .line 748
    :cond_59
    move-object/from16 p3, v2

    move-object v1, v14

    goto :goto_39

    .line 744
    .end local p1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    :cond_5a
    move-object/from16 p1, v1

    .line 745
    .end local v1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    :goto_38
    const/4 v1, 0x0

    .line 281
    .local v1, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$4":I
    move/from16 p2, v1

    .end local v1    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$4":I
    .local p2, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$4":I
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$4$1;

    move-object/from16 p3, v2

    const/4 v2, 0x0

    .end local v2    # "settleToDismiss":Lkotlin/jvm/functions/Function1;
    .local p3, "settleToDismiss":Lkotlin/jvm/functions/Function1;
    invoke-direct {v1, v4, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$4$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 745
    .end local p2    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$4":I
    nop

    .line 746
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 747
    nop

    .line 744
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_39
    nop

    .line 743
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 281
    .end local v3    # "invalid$iv":Z
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0xe

    invoke-static {v4, v1, v12, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3a

    .line 280
    .end local v0    # "$dirty":I
    .end local p1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .end local p3    # "settleToDismiss":Lkotlin/jvm/functions/Function1;
    .local v1, "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "settleToDismiss":Lkotlin/jvm/functions/Function1;
    .local v16, "$dirty":I
    :cond_5b
    move-object/from16 p1, v1

    move-object/from16 p3, v2

    move/from16 v0, v16

    .line 281
    .end local v1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .end local v2    # "settleToDismiss":Lkotlin/jvm/functions/Function1;
    .end local v16    # "$dirty":I
    .restart local v0    # "$dirty":I
    .restart local p1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "settleToDismiss":Lkotlin/jvm/functions/Function1;
    :goto_3a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 285
    .end local v19    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local p1    # "animateToDismiss":Lkotlin/jvm/functions/Function0;
    .end local p3    # "settleToDismiss":Lkotlin/jvm/functions/Function1;
    .end local p14    # "density":Landroidx/compose/ui/unit/Density;
    :cond_5c
    move-object/from16 v31, p7

    move/from16 v35, p8

    move/from16 v28, p9

    move-wide/from16 v26, p11

    move/from16 v34, v0

    move-wide/from16 v24, v5

    move-object/from16 v23, v7

    move/from16 v22, v8

    move-wide/from16 v29, v9

    move-object/from16 v32, v17

    move-object/from16 v20, v18

    move-object/from16 v33, v21

    move-object/from16 v21, v4

    .end local v0    # "$dirty":I
    .end local v4    # "sheetState":Landroidx/compose/material3/SheetState;
    .end local v5    # "containerColor":J
    .end local v7    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "sheetMaxWidth":F
    .end local v9    # "scrimColor":J
    .end local v17    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p7    # "dragHandle":Lkotlin/jvm/functions/Function2;
    .end local p8    # "$dirty1":I
    .end local p9    # "tonalElevation":F
    .end local p11    # "contentColor":J
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "sheetState":Landroidx/compose/material3/SheetState;
    .local v22, "sheetMaxWidth":F
    .local v23, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v24, "containerColor":J
    .local v26, "contentColor":J
    .local v28, "tonalElevation":F
    .local v29, "scrimColor":J
    .local v31, "dragHandle":Lkotlin/jvm/functions/Function2;
    .local v32, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v33, "properties":Landroidx/compose/material3/ModalBottomSheetProperties;
    .local v34, "$dirty":I
    .local v35, "$dirty1":I
    :goto_3b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_5d

    new-instance v36, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    move-object/from16 v5, v23

    move-wide/from16 v6, v24

    move-wide/from16 v8, v26

    move/from16 v10, v28

    move-object/from16 v37, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v37, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v11, v29

    move-object/from16 v13, v31

    move-object/from16 v40, v14

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v36

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v40

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_3c

    .end local v37    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_5d
    move-object/from16 v37, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v37    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_3c
    return-void
.end method

.method public static final ModalBottomSheetPopup(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .param p0, "properties"    # Landroidx/compose/material3/ModalBottomSheetProperties;
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/ModalBottomSheetProperties;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    .line 437
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    const v0, 0x2c094558

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ModalBottomSheetPopup)P(2,1,3)437@19070L7,438@19091L38,439@19158L28,440@19213L29,441@19290L7,442@19331L941,470@20319L248,470@20278L289:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_1

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v10, 0x30

    if-nez v2, :cond_3

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v10, 0x180

    if-nez v2, :cond_5

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v10, 0xc00

    if-nez v2, :cond_7

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    move v4, v1

    .end local v1    # "$dirty":I
    .local v4, "$dirty":I
    and-int/lit16 v1, v4, 0x493

    const/16 v2, 0x492

    if-ne v1, v2, :cond_9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 479
    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v4

    goto/16 :goto_8

    .line 437
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ModalBottomSheetPopup (ModalBottomSheet.android.kt:436)"

    invoke-static {v0, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 438
    :cond_a
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 762
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v5, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 438
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v11

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 439
    sget-object v2, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;

    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0xc00

    const/16 v17, 0x6

    move-object v2, v15

    move-object v15, v5

    invoke-static/range {v11 .. v17}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    .line 440
    .local v11, "id":Ljava/util/UUID;
    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v12

    .line 441
    .local v12, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    shr-int/lit8 v13, v4, 0x9

    and-int/lit8 v13, v13, 0xe

    invoke-static {v9, v5, v13}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 442
    .local v13, "currentContent$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .local v14, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v15, 0x0

    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    .line 763
    .local v16, "$i$f$getCurrent":I
    invoke-static {v5, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 442
    .end local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v15    # "$changed$iv":I
    .end local v16    # "$i$f$getCurrent":I
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .local v2, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const v3, 0xa52d9e1

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):ModalBottomSheet.android.kt#9igjgp"

    invoke-static {v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 443
    move v14, v1

    .local v14, "invalid$iv":Z
    move-object v15, v5

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 764
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 765
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v4

    .end local v4    # "$dirty":I
    .local v19, "$dirty":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_b

    .line 766
    const/4 v4, 0x0

    .line 444
    .local v4, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1":I
    move-object/from16 v18, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v18, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material3/ModalBottomSheetWindow;

    .line 445
    nop

    .line 446
    nop

    .line 447
    nop

    .line 448
    nop

    .line 444
    invoke-direct {v1, v6, v7, v0, v11}, Landroidx/compose/material3/ModalBottomSheetWindow;-><init>(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroid/view/View;Ljava/util/UUID;)V

    .line 449
    move-object/from16 v20, v1

    .local v20, "$this$ModalBottomSheetPopup_u24lambda_u2410_u24lambda_u249":Landroidx/compose/material3/ModalBottomSheetWindow;
    const/16 v21, 0x0

    .line 450
    .local v21, "$i$a$-apply-ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1":I
    nop

    .line 451
    nop

    .line 452
    move-object/from16 v22, v0

    .end local v0    # "view":Landroid/view/View;
    .local v22, "view":Landroid/view/View;
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1$1;

    invoke-direct {v0, v8, v13}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/State;)V

    move/from16 v23, v4

    .end local v4    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1":I
    .local v23, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1":I
    const v4, -0x6d162fd

    const/4 v6, 0x1

    invoke-static {v4, v6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 450
    move-object/from16 v4, v20

    .end local v20    # "$this$ModalBottomSheetPopup_u24lambda_u2410_u24lambda_u249":Landroidx/compose/material3/ModalBottomSheetWindow;
    .local v4, "$this$ModalBottomSheetPopup_u24lambda_u2410_u24lambda_u249":Landroidx/compose/material3/ModalBottomSheetWindow;
    invoke-virtual {v4, v12, v0}, Landroidx/compose/material3/ModalBottomSheetWindow;->setCustomContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 468
    nop

    .line 449
    .end local v4    # "$this$ModalBottomSheetPopup_u24lambda_u2410_u24lambda_u249":Landroidx/compose/material3/ModalBottomSheetWindow;
    .end local v21    # "$i$a$-apply-ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1":I
    nop

    .line 766
    .end local v23    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1":I
    move-object v0, v1

    .line 767
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 768
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_5

    .line 769
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v22    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    .restart local v1    # "it$iv":Ljava/lang/Object;
    :cond_b
    move-object/from16 v22, v0

    move-object/from16 v18, v1

    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v18    # "it$iv":Ljava/lang/Object;
    .restart local v22    # "view":Landroid/view/View;
    move-object/from16 v0, v18

    .line 765
    :goto_5
    nop

    .line 764
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v18    # "it$iv":Ljava/lang/Object;
    nop

    .line 443
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/material3/ModalBottomSheetWindow;

    .local v0, "modalBottomSheetWindow":Landroidx/compose/material3/ModalBottomSheetWindow;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 471
    const v1, 0xa52ddbd

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .local v1, "invalid$iv":Z
    move-object v3, v5

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 770
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 771
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_d

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v6, v15, :cond_c

    goto :goto_6

    .line 775
    :cond_c
    move/from16 v16, v1

    move-object v1, v6

    goto :goto_7

    .line 772
    :cond_d
    :goto_6
    const/4 v15, 0x0

    .line 471
    .local v15, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheetPopup$1":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1$1;

    invoke-direct {v1, v0, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1$1;-><init>(Landroidx/compose/material3/ModalBottomSheetWindow;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 772
    .end local v15    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheetPopup$1":I
    nop

    .line 773
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 774
    nop

    .line 771
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 770
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 471
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v3, 0x0

    invoke-static {v0, v1, v5, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 479
    .end local v0    # "modalBottomSheetWindow":Landroidx/compose/material3/ModalBottomSheetWindow;
    .end local v2    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v11    # "id":Ljava/util/UUID;
    .end local v12    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .end local v13    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v22    # "view":Landroid/view/View;
    :cond_e
    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v11, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, v19

    .end local v19    # "$dirty":I
    .local v12, "$dirty":I
    move-object/from16 v4, p3

    move-object v13, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$2;-><init>(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_9

    .end local v12    # "$dirty":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v19    # "$dirty":I
    :cond_f
    move-object v13, v5

    move/from16 v12, v19

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "$dirty":I
    .restart local v12    # "$dirty":I
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_9
    return-void
.end method

.method private static final ModalBottomSheetPopup$lambda$8(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 4
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 441
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 777
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 441
    return-object v0
.end method

.method private static final Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0, "color"    # J
    .param p2, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 371
    move-wide/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    const v0, 0x3ed133e4

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Scrim)P(0:c#ui.graphics.Color)372@17135L121,391@17696L62,387@17590L168:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_1

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v10, 0x30

    const/16 v4, 0x20

    if-nez v2, :cond_3

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v10, 0x180

    if-nez v2, :cond_5

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v11, 0x92

    if-ne v2, v11, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 396
    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_d

    .line 371
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string/jumbo v11, "androidx.compose.material3.Scrim (ModalBottomSheet.android.kt:370)"

    invoke-static {v0, v1, v2, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 372
    :cond_8
    move-wide/from16 v11, p0

    .local v11, "$this$isSpecified$iv":J
    const/4 v0, 0x0

    .line 749
    .local v0, "$i$f$isSpecified-8_81llA":I
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    cmp-long v2, v11, v13

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_9

    move v0, v15

    goto :goto_4

    :cond_9
    move v0, v14

    .line 372
    .end local v0    # "$i$f$isSpecified-8_81llA":I
    .end local v11    # "$this$isSpecified$iv":J
    :goto_4
    if-eqz v0, :cond_12

    .line 374
    if-eqz v9, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    move v11, v2

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    .line 375
    :goto_5
    new-instance v2, Landroidx/compose/animation/core/TweenSpec;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v2

    check-cast v12, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x1c

    .line 373
    move-object v14, v2

    move v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    .local v11, "alpha$delegate":Landroidx/compose/runtime/State;
    const v12, -0x6ec9ccdf

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "378@17368L124"

    invoke-static {v5, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 377
    const/4 v12, 0x0

    const-string v13, "CC(remember):ModalBottomSheet.android.kt#9igjgp"

    if-eqz v9, :cond_e

    .line 378
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 379
    const v15, -0x6ec9cc8b

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v15, v1, 0x70

    if-ne v15, v4, :cond_b

    move v15, v2

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_6
    move v4, v15

    .local v4, "invalid$iv":Z
    move-object v15, v5

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 750
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 751
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_d

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_c

    goto :goto_7

    .line 755
    :cond_c
    move-object v0, v3

    goto :goto_8

    .line 752
    :cond_d
    :goto_7
    const/4 v0, 0x0

    .line 379
    .local v0, "$i$a$-cache-ModalBottomSheet_androidKt$Scrim$dismissSheet$1":I
    new-instance v2, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$1$1;

    invoke-direct {v2, v8, v12}, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 752
    .end local v0    # "$i$a$-cache-ModalBottomSheet_androidKt$Scrim$dismissSheet$1":I
    move-object v0, v2

    .line 753
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 754
    nop

    .line 751
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 750
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 379
    .end local v4    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v14, v8, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 384
    sget-object v2, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$2;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_9

    .line 386
    :cond_e
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 377
    :goto_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 389
    .local v0, "dismissSheet":Landroidx/compose/ui/Modifier;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 390
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 391
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, -0x6ec9cb43

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0xe

    const/4 v12, 0x4

    if-ne v3, v12, :cond_f

    move v15, v4

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    :goto_a
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v15

    .line 392
    nop

    .local v3, "invalid$iv":Z
    move-object v4, v5

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 756
    .local v12, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 757
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_11

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_10

    goto :goto_b

    .line 761
    :cond_10
    move-object/from16 p4, v0

    move-object v0, v13

    goto :goto_c

    .line 758
    :cond_11
    :goto_b
    const/4 v15, 0x0

    .line 392
    .local v15, "$i$a$-cache-ModalBottomSheet_androidKt$Scrim$1":I
    move-object/from16 p4, v0

    .end local v0    # "dismissSheet":Landroidx/compose/ui/Modifier;
    .local p4, "dismissSheet":Landroidx/compose/ui/Modifier;
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$1$1;

    invoke-direct {v0, v6, v7, v11}, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 758
    .end local v15    # "$i$a$-cache-ModalBottomSheet_androidKt$Scrim$1":I
    nop

    .line 759
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 760
    nop

    .line 757
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 756
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 392
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 388
    const/4 v3, 0x0

    invoke-static {v2, v0, v5, v3}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .end local v11    # "alpha$delegate":Landroidx/compose/runtime/State;
    .end local p4    # "dismissSheet":Landroidx/compose/ui/Modifier;
    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 396
    :cond_13
    :goto_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_14

    new-instance v12, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$2;

    move-object v0, v12

    move v13, v1

    .end local v1    # "$dirty":I
    .local v13, "$dirty":I
    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v14, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_e

    .end local v13    # "$dirty":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_14
    move v13, v1

    move-object v14, v5

    .end local v1    # "$dirty":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$dirty":I
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_e
    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda$5(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 373
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 776
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 373
    return v0
.end method

.method public static final synthetic access$ModalBottomSheetPopup$lambda$8(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetPopup$lambda$8(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "color"    # J
    .param p2, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda$5(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->Scrim_3J_VO9M$lambda$5(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0, "$receiver"    # Landroid/view/View;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$modalBottomSheetAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;F)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "sheetState"    # Landroidx/compose/material3/SheetState;
    .param p2, "fullHeight"    # F

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->modalBottomSheetAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/window/SecureFlagPolicy;
    .param p1, "isSecureFlagSetOnParent"    # Z

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result v0

    return v0
.end method

.method private static final isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 3
    .param p0, "$this$isFlagSecureEnabled"    # Landroid/view/View;

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 688
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 689
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 691
    :cond_2
    return v1
.end method

.method private static final modalBottomSheetAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;F)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$modalBottomSheetAnchors"    # Landroidx/compose/ui/Modifier;
    .param p1, "sheetState"    # Landroidx/compose/material3/SheetState;
    .param p2, "fullHeight"    # F

    .line 402
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetAnchors$1;-><init>(Landroidx/compose/material3/SheetState;F)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 425
    return-object v0
.end method

.method public static final rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 8
    .param p0, "skipPartiallyExpanded"    # Z
    .param p1, "confirmValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    const v0, -0x4b35744f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberModalBottomSheetState)P(1)363@16906L69:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 362
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 363
    sget-object p4, Landroidx/compose/material3/ModalBottomSheet_androidKt$rememberModalBottomSheetState$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$rememberModalBottomSheetState$1;

    move-object p1, p4

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 364
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.material3.rememberModalBottomSheetState (ModalBottomSheet.android.kt:363)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    const/4 v4, 0x0

    and-int/lit8 p4, p3, 0xe

    or-int/lit16 p4, p4, 0x180

    and-int/lit8 v0, p3, 0x70

    or-int v6, p4, v0

    const/16 v7, 0x8

    move v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SheetDefaultsKt;->rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method

.method private static final shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z
    .locals 2
    .param p0, "$this$shouldApplySecureFlag"    # Landroidx/compose/ui/window/SecureFlagPolicy;
    .param p1, "isSecureFlagSetOnParent"    # Z

    .line 696
    sget-object v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/window/SecureFlagPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 699
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    move v0, p1

    goto :goto_0

    .line 698
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 697
    :pswitch_2
    const/4 v0, 0x0

    .line 696
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
