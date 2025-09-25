.class public final Landroidx/compose/material/ChipKt;
.super Ljava/lang/Object;
.source "Chip.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chip.kt\nandroidx/compose/material/ChipKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,761:1\n25#2:762\n25#2:769\n1116#3,6:763\n1116#3,6:770\n81#4:776\n154#5:777\n154#5:778\n154#5:779\n154#5:780\n154#5:781\n*S KotlinDebug\n*F\n+ 1 Chip.kt\nandroidx/compose/material/ChipKt\n*L\n93#1:762\n190#1:769\n93#1:763,6\n190#1:770,6\n100#1:776\n730#1:777\n735#1:778\n740#1:779\n745#1:780\n760#1:781\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u008e\u0001\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0015\u0008\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000b0\u001d\u00a2\u0006\u0002\u0008\u001b\u00a2\u0006\u0002\u0008\u001fH\u0007\u00a2\u0006\u0002\u0010 \u001a\u00c4\u0001\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00112\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020#2\u0015\u0008\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u001b2\u0015\u0008\u0002\u0010$\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u001b2\u0015\u0008\u0002\u0010%\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000b0\u001d\u00a2\u0006\u0002\u0008\u001b\u00a2\u0006\u0002\u0008\u001fH\u0007\u00a2\u0006\u0002\u0010&\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u00a8\u0006\'\u00b2\u0006\n\u0010(\u001a\u00020)X\u008a\u0084\u0002\u00b2\u0006\n\u0010*\u001a\u00020)X\u008a\u0084\u0002"
    }
    d2 = {
        "HorizontalPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "LeadingIconEndSpacing",
        "LeadingIconStartSpacing",
        "SelectedIconContainerSize",
        "SelectedOverlayOpacity",
        "",
        "SurfaceOverlayOpacity",
        "TrailingIconSpacing",
        "Chip",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "border",
        "Landroidx/compose/foundation/BorderStroke;",
        "colors",
        "Landroidx/compose/material/ChipColors;",
        "leadingIcon",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "FilterChip",
        "selected",
        "Landroidx/compose/material/SelectableChipColors;",
        "selectedIcon",
        "trailingIcon",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "material_release",
        "contentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "leadingIconContentColor"
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
.field private static final HorizontalPadding:F

.field private static final LeadingIconEndSpacing:F

.field private static final LeadingIconStartSpacing:F

.field private static final SelectedIconContainerSize:F

.field private static final SelectedOverlayOpacity:F = 0.16f

.field private static final SurfaceOverlayOpacity:F = 0.12f

.field private static final TrailingIconSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 730
    const/16 v0, 0xc

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 777
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 730
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/ChipKt;->HorizontalPadding:F

    .line 735
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 778
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 735
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/ChipKt;->LeadingIconStartSpacing:F

    .line 740
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 779
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 740
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/ChipKt;->LeadingIconEndSpacing:F

    .line 745
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 780
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 745
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/ChipKt;->TrailingIconSpacing:F

    .line 760
    const/16 v0, 0x18

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 781
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 760
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/ChipKt;->SelectedIconContainerSize:F

    return-void
.end method

.method public static final Chip(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 32
    .param p0, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enabled"    # Z
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p6, "colors"    # Landroidx/compose/material/ChipColors;
    .param p7, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p8, "content"    # Lkotlin/jvm/functions/Function3;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/ChipColors;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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

    .line 99
    move/from16 v12, p10

    move/from16 v11, p11

    const v0, -0x15f54878

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Chip)P(7,6,3,4,8!2,5)92@4249L39,93@4323L6,95@4440L12,99@4585L21,105@4782L24,100@4611L1787:Chip.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-object/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v9, p0

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x70

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

    move/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v12, 0x380

    if-nez v5, :cond_8

    move/from16 v5, p2

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v5, p2

    :goto_5
    and-int/lit8 v6, v11, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v12, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    const v8, 0xe000

    and-int/2addr v8, v12

    if-nez v8, :cond_e

    and-int/lit8 v8, v11, 0x10

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v8, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v13, v11, 0x20

    if-eqz v13, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    const/high16 v14, 0x70000

    and-int/2addr v14, v12

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-object/from16 v14, p5

    :goto_b
    const/high16 v29, 0x380000

    and-int v15, v12, v29

    if-nez v15, :cond_14

    and-int/lit8 v15, v11, 0x40

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v15, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v15, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_15

    const/high16 v16, 0xc00000

    or-int v1, v1, v16

    move-object/from16 v14, p7

    goto :goto_f

    :cond_15
    const/high16 v16, 0x1c00000

    and-int v16, v12, v16

    if-nez v16, :cond_17

    move-object/from16 v14, p7

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v1, v1, v16

    goto :goto_f

    :cond_17
    move-object/from16 v14, p7

    :goto_f
    and-int/lit16 v3, v11, 0x100

    const/high16 v30, 0xe000000

    if-eqz v3, :cond_18

    const/high16 v3, 0x6000000

    or-int/2addr v1, v3

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v3, v12, v30

    if-nez v3, :cond_1a

    move-object/from16 v3, p8

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v16, 0x2000000

    :goto_10
    or-int v1, v1, v16

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p8

    :goto_11
    const v16, 0xb6db6db

    and-int v3, v1, v16

    const v5, 0x2492492

    if-ne v3, v5, :cond_1c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    .line 144
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p1

    move-object/from16 v17, p5

    move/from16 v20, v1

    move-object/from16 v16, v8

    move-object/from16 v19, v14

    move-object/from16 v18, v15

    move/from16 v14, p2

    move-object v15, v7

    goto/16 :goto_1b

    .line 99
    :cond_1c
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v12, 0x1

    const v5, -0x380001

    const v16, -0xe001

    if-eqz v3, :cond_20

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_13

    .line 97
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1e

    and-int v1, v1, v16

    :cond_1e
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1f

    and-int v0, v1, v5

    move/from16 v1, p2

    move-object/from16 v2, p5

    move v5, v0

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1a

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1f
    move-object/from16 v0, p1

    move-object/from16 v2, p5

    move v5, v1

    move-object v4, v14

    move-object v3, v15

    move/from16 v1, p2

    goto/16 :goto_1a

    .line 99
    :cond_20
    :goto_13
    if-eqz v2, :cond_21

    .line 91
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 99
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    move-object/from16 v2, p1

    .line 91
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v4, :cond_22

    .line 92
    const/4 v3, 0x1

    .end local p2    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_15

    .line 91
    .end local v3    # "enabled":Z
    .restart local p2    # "enabled":Z
    :cond_22
    move/from16 v3, p2

    .line 92
    .end local p2    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_15
    if-eqz v6, :cond_24

    .line 93
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v5, -0x1d58f75c

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 762
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object/from16 p1, v10

    .local p1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 763
    .local v17, "$i$f$cache":I
    move-object/from16 v31, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v31, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 764
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v3

    .end local v3    # "enabled":Z
    .restart local p2    # "enabled":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_23

    .line 765
    const/4 v3, 0x0

    .line 93
    .local v3, "$i$a$-remember-ChipKt$Chip$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 765
    .end local v3    # "$i$a$-remember-ChipKt$Chip$1":I
    nop

    .line 766
    .local v3, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v2

    move-object/from16 v2, p1

    .end local p1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v19, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 767
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_16

    .line 768
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    .local v2, "it$iv$iv":Ljava/lang/Object;
    .restart local p1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_23
    move-object/from16 v19, v2

    move-object/from16 v2, p1

    .end local p1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v19    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, v19

    .line 764
    :goto_16
    nop

    .line 763
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 762
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "$changed$iv":I
    .end local v6    # "$i$f$remember":I
    move-object v2, v3

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v7, v2

    .end local p3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v2, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_17

    .line 92
    .end local v31    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "enabled":Z
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "enabled":Z
    .restart local p3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_24
    move-object/from16 v31, v2

    move/from16 p2, v3

    .line 762
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "enabled":Z
    .end local p3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v7, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v31    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "enabled":Z
    :goto_17
    and-int/lit8 v2, v11, 0x10

    if-eqz v2, :cond_25

    .line 94
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v10, v3}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    .end local p4    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "shape":Landroidx/compose/ui/graphics/Shape;
    and-int v1, v1, v16

    move-object v8, v2

    .end local v2    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v8, "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_25
    if-eqz v13, :cond_26

    .line 95
    const/4 v2, 0x0

    .end local p5    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v2, "border":Landroidx/compose/foundation/BorderStroke;
    goto :goto_18

    .line 94
    .end local v2    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p5    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_26
    move-object/from16 v2, p5

    .line 95
    .end local p5    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v2    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_18
    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_27

    .line 96
    sget-object v13, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/high16 v27, 0x180000

    const/16 v28, 0x3f

    move-wide v14, v3

    move-object/from16 v26, v10

    invoke-virtual/range {v13 .. v28}, Landroidx/compose/material/ChipDefaults;->chipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ChipColors;

    move-result-object v3

    const v4, -0x380001

    .end local p6    # "colors":Landroidx/compose/material/ChipColors;
    .local v3, "colors":Landroidx/compose/material/ChipColors;
    and-int/2addr v1, v4

    goto :goto_19

    .line 95
    .end local v3    # "colors":Landroidx/compose/material/ChipColors;
    .restart local p6    # "colors":Landroidx/compose/material/ChipColors;
    :cond_27
    move-object/from16 v3, p6

    .line 96
    .end local p6    # "colors":Landroidx/compose/material/ChipColors;
    .restart local v3    # "colors":Landroidx/compose/material/ChipColors;
    :goto_19
    if-eqz v0, :cond_28

    .line 97
    const/4 v0, 0x0

    move-object v4, v0

    move v5, v1

    move-object/from16 v0, v31

    move/from16 v1, p2

    .end local p7    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_1a

    .line 96
    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_28
    move-object/from16 v4, p7

    move v5, v1

    move-object/from16 v0, v31

    move/from16 v1, p2

    .line 97
    .end local v31    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "enabled":Z
    .end local p7    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "enabled":Z
    .local v4, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v5, "$dirty":I
    :goto_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 99
    const/4 v6, -0x1

    const-string/jumbo v13, "androidx.compose.material.Chip (Chip.kt:98)"

    const v14, -0x15f54878

    invoke-static {v14, v5, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 100
    :cond_29
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v13, v5, 0xf

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v6, v13

    invoke-interface {v3, v1, v10, v6}, Landroidx/compose/material/ChipColors;->contentColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 102
    .local v6, "contentColor$delegate":Landroidx/compose/runtime/State;
    nop

    .line 103
    sget-object v13, Landroidx/compose/material/ChipKt$Chip$2;->INSTANCE:Landroidx/compose/material/ChipKt$Chip$2;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v15, v13, v9, v14}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 104
    nop

    .line 105
    nop

    .line 106
    shr-int/lit8 v13, v5, 0x6

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v15, v5, 0xf

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v13, v15

    invoke-interface {v3, v1, v10, v13}, Landroidx/compose/material/ChipColors;->backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v13

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v17

    .line 107
    invoke-static {v6}, Landroidx/compose/material/ChipKt;->Chip$lambda$1(Landroidx/compose/runtime/State;)J

    move-result-wide v19

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    invoke-static/range {v19 .. v26}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v19

    .line 108
    nop

    .line 109
    nop

    .line 110
    new-instance v13, Landroidx/compose/material/ChipKt$Chip$3;

    move-object/from16 p1, v13

    move-object/from16 p2, v6

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move/from16 p5, v1

    move-object/from16 p6, p8

    invoke-direct/range {p1 .. p6}, Landroidx/compose/material/ChipKt$Chip$3;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ChipColors;ZLkotlin/jvm/functions/Function3;)V

    const v15, 0x84a244f

    invoke-static {v10, v15, v9, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v9, v5, 0xe

    const/high16 v13, 0x30000000

    or-int/2addr v9, v13

    and-int/lit16 v13, v5, 0x380

    or-int/2addr v9, v13

    shr-int/lit8 v13, v5, 0x3

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v9, v13

    shl-int/lit8 v13, v5, 0x3

    and-int v13, v13, v29

    or-int/2addr v9, v13

    shl-int/lit8 v13, v5, 0xf

    and-int v13, v13, v30

    or-int v26, v9, v13

    const/16 v27, 0x80

    .line 101
    move-object/from16 v13, p0

    move v15, v1

    move-object/from16 v16, v8

    move-object/from16 v21, v2

    move-object/from16 v23, v7

    move-object/from16 v25, v10

    invoke-static/range {v13 .. v27}, Landroidx/compose/material/SurfaceKt;->Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 144
    .end local v6    # "contentColor$delegate":Landroidx/compose/runtime/State;
    :cond_2a
    move-object v13, v0

    move v14, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object v15, v7

    move-object/from16 v16, v8

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "enabled":Z
    .end local v2    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v3    # "colors":Landroidx/compose/material/ChipColors;
    .end local v4    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$dirty":I
    .end local v7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "enabled":Z
    .local v15, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v16, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v17, "border":Landroidx/compose/foundation/BorderStroke;
    .local v18, "colors":Landroidx/compose/material/ChipColors;
    .local v19, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v20, "$dirty":I
    :goto_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_2b

    new-instance v21, Landroidx/compose/material/ChipKt$Chip$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object v12, v9

    move-object/from16 v9, p8

    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/ChipKt$Chip$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1c

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2b
    move-object/from16 v22, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1c
    return-void
.end method

.method private static final Chip$lambda$1(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$contentColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 100
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
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 100
    return-wide v0
.end method

.method public static final FilterChip(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 41
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p5, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p6, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p7, "colors"    # Landroidx/compose/material/SelectableChipColors;
    .param p8, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p9, "selectedIcon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p11, "content"    # Lkotlin/jvm/functions/Function3;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/SelectableChipColors;",
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
            "III)V"
        }
    .end annotation

    .line 198
    move/from16 v13, p0

    move/from16 v11, p13

    move/from16 v9, p15

    const v0, -0x4b0dfe36

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(FilterChip)P(8,7,6,3,4,10!2,5,9,11)189@8789L39,190@8863L6,192@8990L18,199@9321L31,206@9559L34,200@9357L4342:Chip.kt#jmzs0o"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    move/from16 v2, p14

    .local v2, "$dirty1":I
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0xe

    if-nez v3, :cond_2

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v1, v10

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v12, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v11, 0x380

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x100

    goto :goto_4

    :cond_7
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v1, v14

    goto :goto_5

    :cond_8
    move-object/from16 v12, p2

    :goto_5
    and-int/lit8 v14, v9, 0x8

    if-eqz v14, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v15, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v15, v11, 0x1c00

    if-nez v15, :cond_b

    move/from16 v15, p3

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_b
    move/from16 v15, p3

    :goto_7
    and-int/lit8 v16, v9, 0x10

    const v36, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v5, p4

    goto :goto_9

    :cond_c
    and-int v17, v11, v36

    if-nez v17, :cond_e

    move-object/from16 v5, p4

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v1, v1, v17

    goto :goto_9

    :cond_e
    move-object/from16 v5, p4

    :goto_9
    const/high16 v17, 0x70000

    and-int v17, v11, v17

    if-nez v17, :cond_11

    and-int/lit8 v17, v9, 0x20

    if-nez v17, :cond_f

    move-object/from16 v6, p5

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v6, p5

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v1, v1, v18

    goto :goto_b

    :cond_11
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v18, v9, 0x40

    if-eqz v18, :cond_12

    const/high16 v19, 0x180000

    or-int v1, v1, v19

    move-object/from16 v7, p6

    goto :goto_d

    :cond_12
    const/high16 v19, 0x380000

    and-int v19, v11, v19

    if-nez v19, :cond_14

    move-object/from16 v7, p6

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v20, 0x80000

    :goto_c
    or-int v1, v1, v20

    goto :goto_d

    :cond_14
    move-object/from16 v7, p6

    :goto_d
    const/high16 v37, 0x1c00000

    and-int v20, v11, v37

    if-nez v20, :cond_17

    and-int/lit16 v8, v9, 0x80

    if-nez v8, :cond_15

    move-object/from16 v8, p7

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v8, p7

    :cond_16
    const/high16 v21, 0x400000

    :goto_e
    or-int v1, v1, v21

    goto :goto_f

    :cond_17
    move-object/from16 v8, p7

    :goto_f
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_18

    const/high16 v21, 0x6000000

    or-int v1, v1, v21

    move-object/from16 v15, p8

    goto :goto_11

    :cond_18
    const/high16 v21, 0xe000000

    and-int v21, v11, v21

    if-nez v21, :cond_1a

    move-object/from16 v15, p8

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v21, 0x2000000

    :goto_10
    or-int v1, v1, v21

    goto :goto_11

    :cond_1a
    move-object/from16 v15, p8

    :goto_11
    and-int/lit16 v15, v9, 0x200

    const/high16 v38, 0x70000000

    if-eqz v15, :cond_1b

    const/high16 v21, 0x30000000

    or-int v1, v1, v21

    move/from16 v21, v15

    move-object/from16 v15, p9

    goto :goto_13

    :cond_1b
    and-int v21, v11, v38

    if-nez v21, :cond_1d

    move/from16 v21, v15

    move-object/from16 v15, p9

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    const/high16 v22, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v22, 0x10000000

    :goto_12
    or-int v1, v1, v22

    goto :goto_13

    :cond_1d
    move/from16 v21, v15

    move-object/from16 v15, p9

    :goto_13
    and-int/lit16 v15, v9, 0x400

    if-eqz v15, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move/from16 v22, v15

    move-object/from16 v15, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v22, p14, 0xe

    if-nez v22, :cond_20

    move/from16 v22, v15

    move-object/from16 v15, p10

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v17, 0x4

    goto :goto_14

    :cond_1f
    const/16 v17, 0x2

    :goto_14
    or-int v2, v2, v17

    goto :goto_15

    :cond_20
    move/from16 v22, v15

    move-object/from16 v15, p10

    :goto_15
    and-int/lit16 v3, v9, 0x800

    if-eqz v3, :cond_21

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v3, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v3, p14, 0x70

    if-nez v3, :cond_23

    move-object/from16 v3, p11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    const/16 v19, 0x20

    goto :goto_16

    :cond_22
    const/16 v19, 0x10

    :goto_16
    or-int v2, v2, v19

    goto :goto_17

    :cond_23
    move-object/from16 v3, p11

    :goto_17
    const v17, 0x5b6db6db

    and-int v3, v1, v17

    const v5, 0x12492492

    if-ne v3, v5, :cond_25

    and-int/lit8 v3, v2, 0x5b

    const/16 v5, 0x12

    if-ne v3, v5, :cond_25

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_18

    .line 294
    :cond_24
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v27, p3

    move-object/from16 v17, p4

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move/from16 v25, v1

    move/from16 v24, v2

    move-object/from16 v28, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v26, v8

    move-object/from16 v39, v12

    move-object/from16 v22, v15

    goto/16 :goto_24

    .line 198
    :cond_25
    :goto_18
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v11, 0x1

    const v5, -0x70001

    if-eqz v3, :cond_29

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_19

    .line 196
    :cond_26
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_27

    and-int/2addr v1, v5

    :cond_27
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_28

    const v0, -0x1c00001

    and-int/2addr v0, v1

    move/from16 v1, p3

    move-object/from16 v17, p4

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v3, v12

    move-object/from16 v22, v15

    move v15, v0

    move-object v0, v8

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_23

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_28
    move-object/from16 v17, p4

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v0, v8

    move-object v3, v12

    move-object/from16 v22, v15

    move v15, v1

    move/from16 v1, p3

    goto/16 :goto_23

    .line 198
    :cond_29
    :goto_19
    if-eqz v10, :cond_2a

    .line 188
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1a

    .line 198
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2a
    move-object v3, v12

    .line 188
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1a
    if-eqz v14, :cond_2b

    .line 189
    const/4 v10, 0x1

    .end local p3    # "enabled":Z
    .local v10, "enabled":Z
    goto :goto_1b

    .line 188
    .end local v10    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_2b
    move/from16 v10, p3

    .line 189
    .end local p3    # "enabled":Z
    .restart local v10    # "enabled":Z
    :goto_1b
    if-eqz v16, :cond_2d

    .line 190
    const/4 v12, 0x0

    .local v12, "$changed$iv":I
    const/4 v14, 0x0

    .local v14, "$i$f$remember":I
    const v5, -0x1d58f75c

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 769
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object/from16 p2, v4

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 770
    .local v16, "$i$f$cache":I
    move-object/from16 v39, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v39, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 771
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v5

    .end local v5    # "invalid$iv$iv":Z
    .local p3, "invalid$iv$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2c

    .line 772
    const/4 v5, 0x0

    .line 190
    .local v5, "$i$a$-remember-ChipKt$FilterChip$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v5

    .line 772
    .end local v5    # "$i$a$-remember-ChipKt$FilterChip$1":I
    nop

    .line 773
    .local v5, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v3

    move-object/from16 v3, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v19, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 774
    nop

    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1c

    .line 775
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    .local v3, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_2c
    move-object/from16 v19, v3

    move-object/from16 v3, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v19    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, v19

    .line 771
    :goto_1c
    nop

    .line 770
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 769
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p3    # "invalid$iv$iv":Z
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v12    # "$changed$iv":I
    .end local v14    # "$i$f$remember":I
    move-object v3, v5

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_1d

    .line 189
    .end local v39    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_2d
    move-object/from16 v39, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v39    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v3, p4

    .line 769
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_1d
    and-int/lit8 v5, v9, 0x20

    if-eqz v5, :cond_2e

    .line 191
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v12, 0x6

    invoke-virtual {v5, v4, v12}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v5

    const/16 v12, 0x32

    invoke-static {v12}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Shape;

    const v6, -0x70001

    .end local p5    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v5, "shape":Landroidx/compose/ui/graphics/Shape;
    and-int/2addr v1, v6

    goto :goto_1e

    .line 769
    .end local v5    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p5    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_2e
    move-object v5, v6

    .line 191
    .end local p5    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v5    # "shape":Landroidx/compose/ui/graphics/Shape;
    :goto_1e
    if-eqz v18, :cond_2f

    .line 192
    const/4 v6, 0x0

    .end local p6    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v6, "border":Landroidx/compose/foundation/BorderStroke;
    goto :goto_1f

    .line 191
    .end local v6    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p6    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_2f
    move-object v6, v7

    .line 192
    .end local p6    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v6    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_1f
    and-int/lit16 v7, v9, 0x80

    if-eqz v7, :cond_30

    .line 193
    sget-object v14, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    const-wide/16 v16, 0x0

    move/from16 v7, v21

    move/from16 v12, v22

    move-wide/from16 v15, v16

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

    move-object/from16 v33, v4

    invoke-virtual/range {v14 .. v35}, Landroidx/compose/material/ChipDefaults;->filterChipColors-J08w3-E(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SelectableChipColors;

    move-result-object v8

    .end local p7    # "colors":Landroidx/compose/material/SelectableChipColors;
    .local v8, "colors":Landroidx/compose/material/SelectableChipColors;
    const v14, -0x1c00001

    and-int/2addr v1, v14

    goto :goto_20

    .line 192
    .end local v8    # "colors":Landroidx/compose/material/SelectableChipColors;
    .restart local p7    # "colors":Landroidx/compose/material/SelectableChipColors;
    :cond_30
    move/from16 v7, v21

    move/from16 v12, v22

    .line 193
    .end local p7    # "colors":Landroidx/compose/material/SelectableChipColors;
    .restart local v8    # "colors":Landroidx/compose/material/SelectableChipColors;
    :goto_20
    if-eqz v0, :cond_31

    .line 194
    const/4 v0, 0x0

    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_21

    .line 193
    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_31
    move-object/from16 v0, p8

    .line 194
    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :goto_21
    if-eqz v7, :cond_32

    .line 195
    const/4 v7, 0x0

    .end local p9    # "selectedIcon":Lkotlin/jvm/functions/Function2;
    .local v7, "selectedIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_22

    .line 194
    .end local v7    # "selectedIcon":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "selectedIcon":Lkotlin/jvm/functions/Function2;
    :cond_32
    move-object/from16 v7, p9

    .line 195
    .end local p9    # "selectedIcon":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "selectedIcon":Lkotlin/jvm/functions/Function2;
    :goto_22
    if-eqz v12, :cond_33

    .line 196
    const/4 v12, 0x0

    move-object/from16 v20, v0

    move v15, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object v0, v8

    move v1, v10

    move-object/from16 v22, v12

    move-object/from16 v3, v39

    .end local p10    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v12, "trailingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_23

    .line 195
    .end local v12    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p10    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :cond_33
    move-object/from16 v22, p10

    move-object/from16 v20, v0

    move v15, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object v0, v8

    move v1, v10

    move-object/from16 v3, v39

    .line 196
    .end local v5    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v6    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local v7    # "selectedIcon":Lkotlin/jvm/functions/Function2;
    .end local v8    # "colors":Landroidx/compose/material/SelectableChipColors;
    .end local v10    # "enabled":Z
    .end local v39    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "colors":Landroidx/compose/material/SelectableChipColors;
    .local v1, "enabled":Z
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "$dirty":I
    .local v17, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v18, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v19, "border":Landroidx/compose/foundation/BorderStroke;
    .local v20, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v21, "selectedIcon":Lkotlin/jvm/functions/Function2;
    .local v22, "trailingIcon":Lkotlin/jvm/functions/Function2;
    :goto_23
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 198
    const-string/jumbo v5, "androidx.compose.material.FilterChip (Chip.kt:197)"

    const v6, -0x4b0dfe36

    invoke-static {v6, v15, v2, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 200
    :cond_34
    shr-int/lit8 v5, v15, 0x9

    and-int/lit8 v5, v5, 0xe

    shl-int/lit8 v6, v15, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    shr-int/lit8 v6, v15, 0xf

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    invoke-interface {v0, v1, v13, v4, v5}, Landroidx/compose/material/SelectableChipColors;->contentColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v23

    .line 204
    .local v23, "contentColor":Landroidx/compose/runtime/State;
    sget-object v5, Landroidx/compose/material/ChipKt$FilterChip$2;->INSTANCE:Landroidx/compose/material/ChipKt$FilterChip$2;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    invoke-static {v3, v7, v5, v12, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move/from16 v24, v2

    .end local v2    # "$dirty1":I
    .local v24, "$dirty1":I
    move-object v2, v5

    .line 207
    shr-int/lit8 v5, v15, 0x9

    and-int/lit8 v5, v5, 0xe

    shl-int/lit8 v6, v15, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    shr-int/lit8 v6, v15, 0xf

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    invoke-interface {v0, v1, v13, v4, v5}, Landroidx/compose/material/SelectableChipColors;->backgroundColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    .line 208
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xe

    const/16 v27, 0x0

    move-wide/from16 p2, v7

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v16

    move/from16 p7, v25

    move/from16 p8, v26

    move-object/from16 p9, v27

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 210
    const/4 v10, 0x0

    .line 209
    nop

    .line 211
    new-instance v14, Landroidx/compose/material/ChipKt$FilterChip$3;

    move-object/from16 p2, v14

    move-object/from16 p3, v23

    move-object/from16 p4, v20

    move/from16 p5, p0

    move-object/from16 p6, v21

    move-object/from16 p7, v22

    move-object/from16 p8, p11

    move-object/from16 p9, v0

    move/from16 p10, v1

    invoke-direct/range {p2 .. p10}, Landroidx/compose/material/ChipKt$FilterChip$3;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/material/SelectableChipColors;Z)V

    const v10, 0x2b0ac65f

    invoke-static {v4, v10, v12, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v10, v15, 0xe

    and-int/lit8 v14, v15, 0x70

    or-int/2addr v10, v14

    and-int/lit16 v14, v15, 0x1c00

    or-int/2addr v10, v14

    shr-int/lit8 v14, v15, 0x3

    and-int v14, v14, v36

    or-int/2addr v10, v14

    shl-int/lit8 v14, v15, 0x3

    and-int v14, v14, v37

    or-int/2addr v10, v14

    shl-int/lit8 v14, v15, 0xf

    and-int v14, v14, v38

    or-int/2addr v14, v10

    const/4 v10, 0x6

    move/from16 v25, v15

    .end local v15    # "$dirty":I
    .local v25, "$dirty":I
    move v15, v10

    const/16 v16, 0x100

    .line 201
    move-object/from16 v26, v0

    .end local v0    # "colors":Landroidx/compose/material/SelectableChipColors;
    .local v26, "colors":Landroidx/compose/material/SelectableChipColors;
    move/from16 v0, p0

    move/from16 v27, v1

    .end local v1    # "enabled":Z
    .local v27, "enabled":Z
    move-object/from16 v1, p1

    move-object/from16 v39, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v39    # "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v3, v27

    move-object/from16 v28, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v4, v18

    move-object/from16 v9, v19

    move-object/from16 v11, v17

    move-object/from16 v13, v28

    const/4 v10, 0x0

    invoke-static/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt;->Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 294
    .end local v23    # "contentColor":Landroidx/compose/runtime/State;
    :cond_35
    :goto_24
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_36

    new-instance v16, Landroidx/compose/material/ChipKt$FilterChip$4;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v39

    move/from16 v4, v27

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v26

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v40, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/ChipKt$FilterChip$4;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v40

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_36
    return-void
.end method

.method public static final synthetic access$Chip$lambda$1(Landroidx/compose/runtime/State;)J
    .locals 2
    .param p0, "$contentColor$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ChipKt;->Chip$lambda$1(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->HorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getLeadingIconEndSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->LeadingIconEndSpacing:F

    return v0
.end method

.method public static final synthetic access$getLeadingIconStartSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->LeadingIconStartSpacing:F

    return v0
.end method

.method public static final synthetic access$getSelectedIconContainerSize$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->SelectedIconContainerSize:F

    return v0
.end method

.method public static final synthetic access$getTrailingIconSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->TrailingIconSpacing:F

    return v0
.end method
