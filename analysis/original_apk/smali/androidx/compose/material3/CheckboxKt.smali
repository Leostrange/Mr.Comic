.class public final Landroidx/compose/material3/CheckboxKt;
.super Ljava/lang/Object;
.source "Checkbox.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/CheckboxKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckbox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material3/CheckboxKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,597:1\n1116#2,6:598\n1116#2,6:604\n1116#2,6:610\n1116#2,6:635\n1116#2,6:641\n75#3:616\n1163#4,4:617\n1083#4,5:621\n1163#4,4:626\n1083#4,5:630\n154#5:647\n154#5:648\n154#5:649\n154#5:650\n*S KotlinDebug\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material3/CheckboxKt\n*L\n94#1:598,6\n99#1:604,6\n144#1:610,6\n297#1:635,6\n305#1:641,6\n157#1:616\n266#1:617,4\n266#1:621,5\n282#1:626,4\n282#1:630,5\n593#1:647\n594#1:648\n595#1:649\n596#1:650\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aS\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0007\u00a2\u0006\u0002\u0010\u0017\u001a-\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0003\u00a2\u0006\u0002\u0010\u001b\u001aM\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001a2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0007\u00a2\u0006\u0002\u0010 \u001a6\u0010!\u001a\u00020\u000b*\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001a>\u0010+\u001a\u00020\u000b*\u00020\"2\u0006\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u000201H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00064"
    }
    d2 = {
        "BoxInDuration",
        "",
        "BoxOutDuration",
        "CheckAnimationDuration",
        "CheckboxDefaultPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "CheckboxSize",
        "RadiusSize",
        "StrokeWidth",
        "Checkbox",
        "",
        "checked",
        "",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "colors",
        "Landroidx/compose/material3/CheckboxColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "CheckboxImpl",
        "value",
        "Landroidx/compose/ui/state/ToggleableState;",
        "(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V",
        "TriStateCheckbox",
        "state",
        "onClick",
        "Lkotlin/Function0;",
        "(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "drawBox",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "boxColor",
        "Landroidx/compose/ui/graphics/Color;",
        "borderColor",
        "radius",
        "",
        "strokeWidth",
        "drawBox-1wkBAMs",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V",
        "drawCheck",
        "checkColor",
        "checkFraction",
        "crossCenterGravitation",
        "strokeWidthPx",
        "drawingCache",
        "Landroidx/compose/material3/CheckDrawingCache;",
        "drawCheck-3IgeMak",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material3/CheckDrawingCache;)V",
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
.field private static final BoxInDuration:I = 0x32

.field private static final BoxOutDuration:I = 0x64

.field private static final CheckAnimationDuration:I = 0x64

.field private static final CheckboxDefaultPadding:F

.field private static final CheckboxSize:F

.field private static final RadiusSize:F

.field private static final StrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 593
    const/4 v0, 0x2

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 647
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 593
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/CheckboxKt;->CheckboxDefaultPadding:F

    .line 594
    const/16 v0, 0x14

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 648
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 594
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/CheckboxKt;->CheckboxSize:F

    .line 595
    const/4 v0, 0x2

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 649
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 595
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/CheckboxKt;->StrokeWidth:F

    .line 596
    const/4 v0, 0x2

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 650
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 596
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/CheckboxKt;->RadiusSize:F

    return-void
.end method

.method public static final Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "checked"    # Z
    .param p1, "onCheckedChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "colors"    # Landroidx/compose/material3/CheckboxColors;
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
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
            "Landroidx/compose/material3/CheckboxColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 95
    move/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p7

    const v0, -0x53d92a91

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Checkbox)P(!1,5,4,2)92@4242L8,93@4302L39,95@4350L328:Checkbox.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_5

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v1, v12

    goto :goto_7

    :cond_b
    move/from16 v7, p3

    :goto_7
    and-int/lit16 v12, v11, 0x6000

    if-nez v12, :cond_e

    and-int/lit8 v12, p8, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v12, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p4

    :goto_9
    and-int/lit8 v13, p8, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_f

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int/2addr v14, v11

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    const v15, 0x12493

    and-int/2addr v15, v1

    const v3, 0x12492

    if-ne v15, v3, :cond_13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_c

    .line 108
    :cond_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move v13, v7

    move-object v15, v14

    move-object v14, v12

    move-object v12, v5

    goto/16 :goto_15

    .line 95
    :cond_13
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v11, 0x1

    const-string v15, "CC(remember):Checkbox.kt#9igjgp"

    const v16, -0xe001

    if-eqz v3, :cond_16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_d

    .line 94
    :cond_14
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_15

    and-int v1, v1, v16

    :cond_15
    move v4, v1

    move-object v2, v5

    move-object v1, v12

    move-object v3, v14

    goto :goto_10

    .line 95
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 91
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 95
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object v2, v5

    .line 91
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    if-eqz v6, :cond_18

    .line 92
    const/4 v3, 0x1

    move v7, v3

    .end local p3    # "enabled":Z
    .local v7, "enabled":Z
    :cond_18
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_19

    .line 93
    sget-object v3, Landroidx/compose/material3/CheckboxDefaults;->INSTANCE:Landroidx/compose/material3/CheckboxDefaults;

    const/4 v5, 0x6

    invoke-virtual {v3, v8, v5}, Landroidx/compose/material3/CheckboxDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CheckboxColors;

    move-result-object v3

    .end local p4    # "colors":Landroidx/compose/material3/CheckboxColors;
    .local v3, "colors":Landroidx/compose/material3/CheckboxColors;
    and-int v1, v1, v16

    move-object v12, v3

    .end local v3    # "colors":Landroidx/compose/material3/CheckboxColors;
    .local v12, "colors":Landroidx/compose/material3/CheckboxColors;
    :cond_19
    if-eqz v13, :cond_1b

    .line 94
    const v3, 0x5cda06e8

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v5, v8

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 598
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 599
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_1a

    .line 600
    const/4 v4, 0x0

    .line 94
    .local v4, "$i$a$-cache-CheckboxKt$Checkbox$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 600
    .end local v4    # "$i$a$-cache-CheckboxKt$Checkbox$1":I
    nop

    .line 601
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 602
    nop

    .end local v4    # "value$iv":Ljava/lang/Object;
    goto :goto_f

    .line 603
    :cond_1a
    move-object v4, v13

    .line 599
    :goto_f
    nop

    .line 598
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 94
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object v3, v4

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move v4, v1

    move-object v1, v12

    goto :goto_10

    .line 93
    .end local v3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_1b
    move v4, v1

    move-object v1, v12

    move-object v3, v14

    .line 94
    .end local v12    # "colors":Landroidx/compose/material3/CheckboxColors;
    .end local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v1, "colors":Landroidx/compose/material3/CheckboxColors;
    .restart local v3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v4, "$dirty":I
    :goto_10
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 95
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material3.Checkbox (Checkbox.kt:94)"

    invoke-static {v0, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 97
    :cond_1c
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/state/ToggleableStateKt;->ToggleableState(Z)Landroidx/compose/ui/state/ToggleableState;

    move-result-object v12

    const v0, 0x5cda0766

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "98@4471L29"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 98
    if-eqz v10, :cond_21

    const v0, 0x5cda0791

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v4, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v13, 0x20

    if-ne v0, v13, :cond_1d

    move v0, v6

    goto :goto_11

    :cond_1d
    move v0, v5

    :goto_11
    and-int/lit8 v13, v4, 0xe

    const/4 v14, 0x4

    if-ne v13, v14, :cond_1e

    move v5, v6

    :cond_1e
    or-int/2addr v0, v5

    .line 99
    move-object v5, v8

    .local v0, "invalid$iv":Z
    .restart local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 604
    .restart local v6    # "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 605
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_20

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_1f

    goto :goto_12

    .line 609
    :cond_1f
    move/from16 p2, v0

    move-object v0, v13

    goto :goto_13

    .line 606
    :cond_20
    :goto_12
    const/4 v15, 0x0

    .line 99
    .local v15, "$i$a$-cache-CheckboxKt$Checkbox$2":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    new-instance v0, Landroidx/compose/material3/CheckboxKt$Checkbox$2$1;

    invoke-direct {v0, v10, v9}, Landroidx/compose/material3/CheckboxKt$Checkbox$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 606
    .end local v15    # "$i$a$-cache-CheckboxKt$Checkbox$2":I
    nop

    .line 607
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 608
    nop

    .line 605
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 604
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 99
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v13, v0

    goto :goto_14

    .line 101
    :cond_21
    const/4 v0, 0x0

    move-object v13, v0

    .line 98
    :goto_14
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    and-int/lit16 v0, v4, 0x380

    and-int/lit16 v5, v4, 0x1c00

    or-int/2addr v0, v5

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v4

    or-int v19, v0, v5

    const/16 v20, 0x0

    .line 96
    move-object v14, v2

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v20}, Landroidx/compose/material3/CheckboxKt;->TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 108
    :cond_22
    move-object v14, v1

    move-object v12, v2

    move-object v15, v3

    move/from16 v16, v4

    move v13, v7

    .end local v1    # "colors":Landroidx/compose/material3/CheckboxColors;
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v4    # "$dirty":I
    .end local v7    # "enabled":Z
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "enabled":Z
    .local v14, "colors":Landroidx/compose/material3/CheckboxColors;
    .local v15, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v16, "$dirty":I
    :goto_15
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_23

    new-instance v17, Landroidx/compose/material3/CheckboxKt$Checkbox$3;

    move-object/from16 v0, v17

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v9, v7

    move/from16 v7, p7

    move-object/from16 v18, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CheckboxKt$Checkbox$3;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_16

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_23
    move-object/from16 v18, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_16
    return-void
.end method

.method private static final CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 39
    .param p0, "enabled"    # Z
    .param p1, "value"    # Landroidx/compose/ui/state/ToggleableState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "colors"    # Landroidx/compose/material3/CheckboxColors;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 264
    move/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    const v0, 0x77a265e0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CheckboxImpl)P(1,3,2)264@12013L23,265@12076L443,281@12578L458,296@13058L32,297@13119L21,298@13167L24,299@13221L27,304@13371L538,300@13253L656:Checkbox.kt#uh7d8r"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v10, 0x30

    if-nez v2, :cond_3

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    .line 321
    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v24, v4

    move v14, v6

    move-object v15, v8

    goto/16 :goto_f

    .line 264
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "androidx.compose.material3.CheckboxImpl (Checkbox.kt:263)"

    invoke-static {v0, v4, v2, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 265
    :cond_a
    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v0, v0, 0xe

    const/4 v1, 0x0

    invoke-static {v7, v1, v5, v0, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 266
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v11, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkDrawFraction$1;->INSTANCE:Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkDrawFraction$1;

    move-object v15, v11

    check-cast v15, Lkotlin/jvm/functions/Function3;

    .local v15, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/16 v19, 0x0

    .local v19, "$changed$iv":I
    move-object/from16 v20, v0

    .local v20, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const/16 v21, 0x0

    .local v21, "$i$f$animateFloat":I
    const v14, -0x4fcbfb15

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(animateFloat)P(2)1165@46369L78:Transition.kt#pdpnli"

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 617
    const-string v22, "FloatAnimation"

    .line 620
    .local v22, "label$iv":Ljava/lang/String;
    sget-object v11, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v11}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v23

    .local v23, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v11, v19, 0xe

    shl-int/lit8 v12, v19, 0x3

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v11, v12

    shl-int/lit8 v12, v19, 0x3

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v11, v12

    shl-int/lit8 v12, v19, 0x3

    const v24, 0xe000

    and-int v12, v12, v24

    or-int/2addr v12, v11

    .local v12, "$changed$iv$iv":I
    move-object/from16 v11, v20

    .local v11, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v25, v12

    .end local v12    # "$changed$iv$iv":I
    .local v25, "$changed$iv$iv":I
    const/16 v26, 0x0

    .local v26, "$i$f$animateValue":I
    const v12, -0x880d1ef

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v16

    shr-int/lit8 v17, v25, 0x9

    and-int/lit8 v12, v17, 0x70

    .local v12, "$changed":I
    check-cast v16, Landroidx/compose/ui/state/ToggleableState;

    .local v16, "it":Landroidx/compose/ui/state/ToggleableState;
    move-object/from16 v17, v5

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .local v27, "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkDrawFraction$2":I
    const v14, 0x6b4ad266

    move-object/from16 v3, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C:Checkbox.kt#uh7d8r"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 275
    const-string/jumbo v10, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:274)"

    move-object/from16 v17, v13

    const/4 v13, -0x1

    invoke-static {v14, v12, v13, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_5

    .line 621
    :cond_b
    move-object/from16 v17, v13

    .line 275
    :goto_5
    sget-object v10, Landroidx/compose/material3/CheckboxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/state/ToggleableState;->ordinal()I

    move-result v13

    aget v10, v10, v13

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    packed-switch v10, :pswitch_data_0

    .line 278
    move-object/from16 v38, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .local v38, "transition":Landroidx/compose/animation/core/Transition;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v38    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :pswitch_0
    move/from16 v10, v30

    goto :goto_6

    .line 277
    :pswitch_1
    move/from16 v10, v29

    goto :goto_6

    .line 276
    :pswitch_2
    move/from16 v10, v30

    .line 275
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v12    # "$changed":I
    .end local v16    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v27    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkDrawFraction$2":I
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 621
    const v3, -0x880d1ef

    .line 622
    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v10

    shr-int/lit8 v13, v25, 0x9

    and-int/lit8 v13, v13, 0x70

    .local v13, "$changed":I
    check-cast v10, Landroidx/compose/ui/state/ToggleableState;

    .local v10, "it":Landroidx/compose/ui/state/ToggleableState;
    move-object/from16 v16, v5

    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    move-object/from16 v3, v16

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkDrawFraction$2":I
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 275
    const-string/jumbo v8, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:274)"

    const/4 v6, -0x1

    invoke-static {v14, v13, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_d
    sget-object v6, Landroidx/compose/material3/CheckboxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Landroidx/compose/ui/state/ToggleableState;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 278
    move-object/from16 v38, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v38    # "transition":Landroidx/compose/animation/core/Transition;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v38    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :pswitch_3
    move/from16 v6, v30

    goto :goto_7

    .line 277
    :pswitch_4
    move/from16 v6, v29

    goto :goto_7

    .line 276
    :pswitch_5
    move/from16 v6, v30

    .line 275
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v10    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v13    # "$changed":I
    .end local v18    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkDrawFraction$2":I
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 622
    move-object/from16 v3, v17

    .line 623
    .local v13, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v6

    shr-int/lit8 v8, v25, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v6, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 625
    .local v6, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v8, v25, 0xe

    shl-int/lit8 v10, v25, 0x9

    and-int v10, v10, v24

    or-int/2addr v8, v10

    shl-int/lit8 v10, v25, 0x6

    const/high16 v14, 0x70000

    and-int/2addr v10, v14

    or-int v18, v8, v10

    const v8, -0x4fcbfb15

    move-object v14, v6

    move-object/from16 v28, v15

    .end local v15    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v28, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v15, v23

    move-object/from16 v16, v22

    move-object/from16 v17, v5

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 620
    .end local v6    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v11    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v23    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v25    # "$changed$iv$iv":I
    .end local v26    # "$i$f$animateValue":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 266
    .end local v19    # "$changed$iv":I
    .end local v20    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v21    # "$i$f$animateFloat":I
    .end local v22    # "label$iv":Ljava/lang/String;
    .end local v28    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v6, v10

    .line 282
    .local v6, "checkDrawFraction":Landroidx/compose/runtime/State;
    sget-object v10, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$1;->INSTANCE:Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$1;

    check-cast v10, Lkotlin/jvm/functions/Function3;

    .local v10, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/16 v19, 0x0

    .restart local v19    # "$changed$iv":I
    move-object/from16 v20, v0

    .restart local v20    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const/16 v21, 0x0

    .restart local v21    # "$i$f$animateFloat":I
    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 626
    const-string v3, "FloatAnimation"

    .line 629
    .local v3, "label$iv":Ljava/lang/String;
    sget-object v8, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v8}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v8

    .local v8, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v11, v19, 0xe

    shl-int/lit8 v12, v19, 0x3

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v11, v12

    shl-int/lit8 v12, v19, 0x3

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v11, v12

    shl-int/lit8 v12, v19, 0x3

    and-int v12, v12, v24

    or-int/2addr v12, v11

    .local v12, "$changed$iv$iv":I
    move-object/from16 v11, v20

    .restart local v11    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v22, v12

    .end local v12    # "$changed$iv$iv":I
    .local v22, "$changed$iv$iv":I
    const/16 v23, 0x0

    const v12, -0x880d1ef

    .local v23, "$i$f$animateValue":I
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v12, v22, 0x9

    and-int/lit8 v12, v12, 0x70

    .local v12, "$changed":I
    check-cast v1, Landroidx/compose/ui/state/ToggleableState;

    .local v1, "it":Landroidx/compose/ui/state/ToggleableState;
    move-object v13, v5

    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .local v14, "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    const v15, -0x550dd391

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 291
    move-object/from16 v38, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v38    # "transition":Landroidx/compose/animation/core/Transition;
    const-string/jumbo v0, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:290)"

    move/from16 v16, v14

    const/4 v14, -0x1

    .end local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .local v16, "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    invoke-static {v15, v12, v14, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_8

    .line 630
    .end local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .end local v38    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    :cond_f
    move-object/from16 v38, v0

    move/from16 v16, v14

    .line 291
    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .end local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .restart local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .restart local v38    # "transition":Landroidx/compose/animation/core/Transition;
    :goto_8
    sget-object v0, Landroidx/compose/material3/CheckboxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/ui/state/ToggleableState;->ordinal()I

    move-result v14

    aget v0, v0, v14

    packed-switch v0, :pswitch_data_2

    .line 294
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_6
    move/from16 v0, v30

    goto :goto_9

    .line 293
    :pswitch_7
    move/from16 v0, v29

    goto :goto_9

    .line 292
    :pswitch_8
    move/from16 v0, v29

    .line 291
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v12    # "$changed":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 630
    nop

    .line 631
    .local v12, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, v22, 0x9

    and-int/lit8 v1, v1, 0x70

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/ui/state/ToggleableState;

    .local v0, "it":Landroidx/compose/ui/state/ToggleableState;
    move-object v13, v5

    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .restart local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 291
    const-string/jumbo v2, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:290)"

    move/from16 v16, v14

    const/4 v14, -0x1

    .end local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .restart local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    invoke-static {v15, v1, v14, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_a

    .line 631
    .end local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .restart local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    :cond_11
    move/from16 v16, v14

    .line 291
    .end local v14    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    .restart local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    :goto_a
    sget-object v2, Landroidx/compose/material3/CheckboxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/state/ToggleableState;->ordinal()I

    move-result v14

    aget v2, v2, v14

    packed-switch v2, :pswitch_data_3

    .line 294
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    :pswitch_9
    move/from16 v29, v30

    goto :goto_b

    .line 293
    :pswitch_a
    goto :goto_b

    .line 292
    :pswitch_b
    nop

    .line 291
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v0    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v1    # "$changed":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-animateFloat-CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 631
    nop

    .line 632
    .local v13, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    shr-int/lit8 v1, v22, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v0, v5, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 634
    .local v0, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v1, v22, 0xe

    shl-int/lit8 v2, v22, 0x9

    and-int v2, v2, v24

    or-int/2addr v1, v2

    shl-int/lit8 v2, v22, 0x6

    const/high16 v14, 0x70000

    and-int/2addr v2, v14

    or-int v18, v1, v2

    move-object v14, v0

    move-object v15, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 629
    .end local v0    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v8    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v11    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v12    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v13    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v22    # "$changed$iv$iv":I
    .end local v23    # "$i$f$animateValue":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 282
    .end local v3    # "label$iv":Ljava/lang/String;
    .end local v10    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v19    # "$changed$iv":I
    .end local v20    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v21    # "$i$f$animateFloat":I
    move-object v0, v1

    .local v0, "checkCenterGravitationShiftFraction":Landroidx/compose/runtime/State;
    const v1, -0x276a8224

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Checkbox.kt#9igjgp"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 297
    move-object v1, v5

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "invalid$iv":Z
    const/4 v8, 0x0

    .line 635
    .local v8, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 636
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_13

    .line 637
    const/4 v12, 0x0

    .line 297
    .local v12, "$i$a$-cache-CheckboxKt$CheckboxImpl$checkCache$1":I
    new-instance v19, Landroidx/compose/material3/CheckDrawingCache;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x0

    move-object/from16 v13, v19

    invoke-direct/range {v13 .. v18}, Landroidx/compose/material3/CheckDrawingCache;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/PathMeasure;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 637
    .end local v12    # "$i$a$-cache-CheckboxKt$CheckboxImpl$checkCache$1":I
    move-object/from16 v12, v19

    .line 638
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 639
    nop

    .end local v12    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 640
    :cond_13
    move-object v12, v10

    .line 636
    :goto_c
    nop

    .line 635
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 297
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "invalid$iv":Z
    .end local v8    # "$i$f$cache":I
    move-object v1, v12

    check-cast v1, Landroidx/compose/material3/CheckDrawingCache;

    .local v1, "checkCache":Landroidx/compose/material3/CheckDrawingCache;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 298
    shr-int/lit8 v3, v4, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v3, v8

    invoke-virtual {v9, v7, v5, v3}, Landroidx/compose/material3/CheckboxColors;->checkmarkColor$material3_release(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 299
    .local v3, "checkColor":Landroidx/compose/runtime/State;
    and-int/lit8 v8, v4, 0xe

    and-int/lit8 v10, v4, 0x70

    or-int/2addr v8, v10

    shr-int/lit8 v10, v4, 0x3

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v8, v10

    move/from16 v14, p0

    invoke-virtual {v9, v14, v7, v5, v8}, Landroidx/compose/material3/CheckboxColors;->boxColor$material3_release(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 300
    .local v8, "boxColor":Landroidx/compose/runtime/State;
    and-int/lit8 v10, v4, 0xe

    and-int/lit8 v11, v4, 0x70

    or-int/2addr v10, v11

    shr-int/lit8 v11, v4, 0x3

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v10, v11

    invoke-virtual {v9, v14, v7, v5, v10}, Landroidx/compose/material3/CheckboxColors;->borderColor$material3_release(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    .line 302
    .local v10, "borderColor":Landroidx/compose/runtime/State;
    nop

    .line 303
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v11

    move-object/from16 v15, p2

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v15, v11, v2, v13, v12}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 304
    sget v12, Landroidx/compose/material3/CheckboxKt;->CheckboxSize:F

    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const v12, -0x276a80eb

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(remember):Checkbox.kt#9igjgp"

    invoke-static {v5, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    .line 305
    move-object v13, v5

    .local v12, "invalid$iv":Z
    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 641
    .local v16, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 642
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v12, :cond_15

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v4

    .end local v4    # "$dirty":I
    .local v24, "$dirty":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_14

    goto :goto_d

    .line 646
    :cond_14
    move-object v4, v2

    goto :goto_e

    .line 642
    .end local v24    # "$dirty":I
    .restart local v4    # "$dirty":I
    :cond_15
    move/from16 v24, v4

    .line 643
    .end local v4    # "$dirty":I
    .restart local v24    # "$dirty":I
    :goto_d
    const/4 v4, 0x0

    .line 305
    .local v4, "$i$a$-cache-CheckboxKt$CheckboxImpl$1":I
    new-instance v18, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;

    move-object/from16 v31, v18

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v34, v3

    move-object/from16 v35, v6

    move-object/from16 v36, v0

    move-object/from16 v37, v1

    invoke-direct/range {v31 .. v37}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material3/CheckDrawingCache;)V

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 643
    .end local v4    # "$i$a$-cache-CheckboxKt$CheckboxImpl$1":I
    move-object/from16 v4, v18

    .line 644
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 645
    nop

    .line 642
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_e
    nop

    .line 641
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 305
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 301
    const/4 v2, 0x0

    invoke-static {v11, v4, v5, v2}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 321
    .end local v0    # "checkCenterGravitationShiftFraction":Landroidx/compose/runtime/State;
    .end local v1    # "checkCache":Landroidx/compose/material3/CheckDrawingCache;
    .end local v3    # "checkColor":Landroidx/compose/runtime/State;
    .end local v6    # "checkDrawFraction":Landroidx/compose/runtime/State;
    .end local v8    # "boxColor":Landroidx/compose/runtime/State;
    .end local v10    # "borderColor":Landroidx/compose/runtime/State;
    .end local v38    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_16
    :goto_f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_17

    new-instance v8, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$2;

    move-object v0, v8

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v17, v24

    .end local v24    # "$dirty":I
    .local v17, "$dirty":I
    move-object/from16 v4, p3

    move-object/from16 v24, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$2;-><init>(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;I)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_10

    .end local v17    # "$dirty":I
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$dirty":I
    :cond_17
    move/from16 v17, v24

    move-object/from16 v24, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$dirty":I
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static final TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0, "state"    # Landroidx/compose/ui/state/ToggleableState;
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "colors"    # Landroidx/compose/material3/CheckboxColors;
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/CheckboxColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 145
    move-object/from16 v9, p1

    move/from16 v10, p7

    const v0, -0x5fdd98b1

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TriStateCheckbox)P(5,4,3,1)142@6635L8,143@6695L39,162@7339L412:Checkbox.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    move-object/from16 v12, p0

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v10, 0x30

    if-nez v2, :cond_5

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v10, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v10, 0xc00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move/from16 v5, p3

    :goto_7
    and-int/lit16 v6, v10, 0x6000

    if-nez v6, :cond_e

    and-int/lit8 v6, p8, 0x10

    if-nez v6, :cond_c

    move-object/from16 v6, p4

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v6, p4

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v7, p8, 0x20

    const/high16 v8, 0x30000

    if-eqz v7, :cond_f

    or-int/2addr v1, v8

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int/2addr v8, v10

    if-nez v8, :cond_11

    move-object/from16 v8, p5

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v1, v13

    goto :goto_b

    :cond_11
    move-object/from16 v8, p5

    :goto_b
    const v13, 0x12493

    and-int/2addr v13, v1

    const v14, 0x12492

    if-ne v13, v14, :cond_13

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_c

    .line 178
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v1

    move-object v13, v3

    move v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    goto/16 :goto_15

    .line 145
    :cond_13
    :goto_c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v13, v10, 0x1

    const v14, -0xe001

    if-eqz v13, :cond_16

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_d

    .line 144
    :cond_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_15

    and-int/2addr v1, v14

    :cond_15
    move v7, v1

    move v13, v5

    move-object v14, v6

    move-object v15, v8

    move-object v8, v3

    goto/16 :goto_12

    .line 145
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 141
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 145
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object v2, v3

    .line 141
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    if-eqz v4, :cond_18

    .line 142
    const/4 v3, 0x1

    .end local p3    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_f

    .line 141
    .end local v3    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_18
    move v3, v5

    .line 142
    .end local p3    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_f
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_19

    .line 143
    sget-object v4, Landroidx/compose/material3/CheckboxDefaults;->INSTANCE:Landroidx/compose/material3/CheckboxDefaults;

    const/4 v5, 0x6

    invoke-virtual {v4, v11, v5}, Landroidx/compose/material3/CheckboxDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CheckboxColors;

    move-result-object v4

    .end local p4    # "colors":Landroidx/compose/material3/CheckboxColors;
    .local v4, "colors":Landroidx/compose/material3/CheckboxColors;
    and-int/2addr v1, v14

    goto :goto_10

    .line 142
    .end local v4    # "colors":Landroidx/compose/material3/CheckboxColors;
    .restart local p4    # "colors":Landroidx/compose/material3/CheckboxColors;
    :cond_19
    move-object v4, v6

    .line 143
    .end local p4    # "colors":Landroidx/compose/material3/CheckboxColors;
    .restart local v4    # "colors":Landroidx/compose/material3/CheckboxColors;
    :goto_10
    if-eqz v7, :cond_1b

    .line 144
    const v5, 0x6b2af83b

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):Checkbox.kt#9igjgp"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid$iv":Z
    move-object v6, v11

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 610
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 611
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_1a

    .line 612
    const/4 v15, 0x0

    .line 144
    .local v15, "$i$a$-cache-CheckboxKt$TriStateCheckbox$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v15

    .line 612
    .end local v15    # "$i$a$-cache-CheckboxKt$TriStateCheckbox$1":I
    nop

    .line 613
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 614
    nop

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_11

    .line 615
    :cond_1a
    move-object v15, v13

    .line 611
    :goto_11
    nop

    .line 610
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 144
    .end local v5    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    move-object v5, v15

    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move v7, v1

    move-object v8, v2

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    goto :goto_12

    .line 143
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_1b
    move v7, v1

    move v13, v3

    move-object v14, v4

    move-object v15, v8

    move-object v8, v2

    .line 144
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "enabled":Z
    .end local v4    # "colors":Landroidx/compose/material3/CheckboxColors;
    .end local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v7, "$dirty":I
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "enabled":Z
    .local v14, "colors":Landroidx/compose/material3/CheckboxColors;
    .local v15, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 145
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:144)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1c
    const v0, 0x6b2af88c

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "154@7139L133"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 147
    if-eqz v9, :cond_1d

    .line 149
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 153
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    move-result v16

    .line 156
    const/4 v1, 0x0

    .line 157
    sget-object v2, Landroidx/compose/material3/tokens/CheckboxTokens;->INSTANCE:Landroidx/compose/material3/tokens/CheckboxTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/CheckboxTokens;->getStateLayerSize-D9Ej5fM()F

    move-result v2

    .local v2, "arg0$iv":F
    const/4 v3, 0x2

    .local v3, "other$iv":I
    const/4 v4, 0x0

    .line 616
    .local v4, "$i$f$div-u2uoSUM":I
    int-to-float v5, v3

    div-float v5, v2, v5

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .end local v2    # "arg0$iv":F
    .end local v3    # "other$iv":I
    .end local v4    # "$i$f$div-u2uoSUM":I
    const-wide/16 v3, 0x0

    const/16 v6, 0x36

    const/16 v17, 0x4

    .line 155
    move-object v5, v11

    move/from16 v18, v7

    .end local v7    # "$dirty":I
    .local v18, "$dirty":I
    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v3

    .line 149
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 150
    nop

    .line 154
    nop

    .line 155
    nop

    .line 152
    nop

    .line 153
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v5

    .line 151
    nop

    .line 149
    move-object/from16 v1, p0

    move-object v2, v15

    move v4, v13

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_13

    .line 161
    .end local v18    # "$dirty":I
    .restart local v7    # "$dirty":I
    :cond_1d
    move/from16 v18, v7

    .end local v7    # "$dirty":I
    .restart local v18    # "$dirty":I
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 147
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 146
    nop

    .line 164
    .local v0, "toggleableModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 165
    nop

    .line 166
    nop

    .line 168
    if-eqz v9, :cond_1e

    .line 169
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_14

    .line 171
    :cond_1e
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 167
    :goto_14
    invoke-interface {v8, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 174
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 175
    sget v2, Landroidx/compose/material3/CheckboxKt;->CheckboxDefaultPadding:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 176
    shr-int/lit8 v1, v18, 0x9

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v2, v18, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    shr-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int v6, v1, v2

    .line 163
    move v1, v13

    move-object/from16 v2, p0

    move-object v4, v14

    move-object v5, v11

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 178
    .end local v0    # "toggleableModifier":Landroidx/compose/ui/Modifier;
    :cond_1f
    move-object/from16 v16, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v8

    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "enabled":Z
    .local v15, "colors":Landroidx/compose/material3/CheckboxColors;
    .local v16, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_20

    new-instance v17, Landroidx/compose/material3/CheckboxKt$TriStateCheckbox$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, p7

    move-object v9, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CheckboxKt$TriStateCheckbox$2;-><init>(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_20
    return-void
.end method

.method public static final synthetic access$CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "value"    # Landroidx/compose/ui/state/ToggleableState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "colors"    # Landroidx/compose/material3/CheckboxColors;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "boxColor"    # J
    .param p3, "borderColor"    # J
    .param p5, "radius"    # F
    .param p6, "strokeWidth"    # F

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/CheckboxKt;->drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V

    return-void
.end method

.method public static final synthetic access$drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material3/CheckDrawingCache;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "checkColor"    # J
    .param p3, "checkFraction"    # F
    .param p4, "crossCenterGravitation"    # F
    .param p5, "strokeWidthPx"    # F
    .param p6, "drawingCache"    # Landroidx/compose/material3/CheckDrawingCache;

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/CheckboxKt;->drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material3/CheckDrawingCache;)V

    return-void
.end method

.method public static final synthetic access$getRadiusSize$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/CheckboxKt;->RadiusSize:F

    return v0
.end method

.method public static final synthetic access$getStrokeWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/CheckboxKt;->StrokeWidth:F

    return v0
.end method

.method private static final drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V
    .locals 41
    .param p0, "$this$drawBox_u2d1wkBAMs"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "boxColor"    # J
    .param p3, "borderColor"    # J
    .param p5, "radius"    # F
    .param p6, "strokeWidth"    # F

    .line 329
    move/from16 v0, p5

    move/from16 v9, p6

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v9, v1

    .line 330
    .local v10, "halfStrokeWidth":F
    new-instance v11, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, v11

    move/from16 v2, p6

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 331
    .local v1, "stroke":Landroidx/compose/ui/graphics/drawscope/Stroke;
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    .line 332
    .local v2, "checkboxSize":F
    invoke-static/range {p1 .. p4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    .line 333
    nop

    .line 334
    nop

    .line 333
    const-wide/16 v14, 0x0

    .line 335
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v16

    .line 336
    invoke-static {v0, v5, v6, v4}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    move-result-wide v18

    .line 337
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object/from16 v20, v3

    check-cast v20, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 333
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xe2

    const/16 v25, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    invoke-static/range {v11 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_0

    .line 340
    :cond_0
    nop

    .line 341
    nop

    .line 342
    invoke-static {v9, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v29

    .line 343
    int-to-float v3, v6

    mul-float v7, v9, v3

    sub-float v7, v2, v7

    mul-float/2addr v3, v9

    sub-float v3, v2, v3

    invoke-static {v7, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v31

    .line 344
    sub-float v3, v0, v9

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v5, v6, v4}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    move-result-wide v33

    .line 345
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object/from16 v35, v3

    check-cast v35, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 340
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0xe0

    const/16 v40, 0x0

    move-object/from16 v26, p0

    move-wide/from16 v27, p1

    invoke-static/range {v26 .. v40}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 347
    nop

    .line 348
    nop

    .line 349
    invoke-static {v10, v10}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v14

    .line 350
    sub-float v3, v2, v9

    sub-float v7, v2, v9

    invoke-static {v3, v7}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v16

    .line 351
    sub-float v3, v0, v10

    invoke-static {v3, v5, v6, v4}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    move-result-wide v18

    .line 352
    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 347
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xe0

    const/16 v25, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p3

    invoke-static/range {v11 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 355
    :goto_0
    return-void
.end method

.method private static final drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material3/CheckDrawingCache;)V
    .locals 29
    .param p0, "$this$drawCheck_u2d3IgeMak"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "checkColor"    # J
    .param p3, "checkFraction"    # F
    .param p4, "crossCenterGravitation"    # F
    .param p5, "strokeWidthPx"    # F
    .param p6, "drawingCache"    # Landroidx/compose/material3/CheckDrawingCache;

    .line 364
    move/from16 v0, p4

    new-instance v9, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v3, 0x0

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v8, 0x0

    move-object v1, v9

    move/from16 v2, p5

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 365
    .local v1, "stroke":Landroidx/compose/ui/graphics/drawscope/Stroke;
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    .line 366
    .local v2, "width":F
    const v3, 0x3ecccccd    # 0.4f

    .line 367
    .local v3, "checkCrossX":F
    const v4, 0x3f333333    # 0.7f

    .line 368
    .local v4, "checkCrossY":F
    const v5, 0x3e4ccccd    # 0.2f

    .line 369
    .local v5, "leftX":F
    const/high16 v6, 0x3f000000    # 0.5f

    .line 370
    .local v6, "leftY":F
    const v7, 0x3f4ccccd    # 0.8f

    .line 371
    .local v7, "rightX":F
    const v8, 0x3e99999a    # 0.3f

    .line 373
    .local v8, "rightY":F
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v3, v9, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v10

    .line 374
    .local v10, "gravitatedCrossX":F
    invoke-static {v4, v9, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v11

    .line 376
    .local v11, "gravitatedCrossY":F
    invoke-static {v6, v9, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v12

    .line 377
    .local v12, "gravitatedLeftY":F
    invoke-static {v8, v9, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v9

    .line 379
    .local v9, "gravitatedRightY":F
    move-object/from16 v13, p6

    .local v13, "$this$drawCheck_3IgeMak_u24lambda_u247":Landroidx/compose/material3/CheckDrawingCache;
    const/4 v14, 0x0

    .line 380
    .local v14, "$i$a$-with-CheckboxKt$drawCheck$1":I
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v15

    invoke-interface {v15}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 381
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v15

    mul-float v0, v2, v5

    move/from16 v16, v3

    .end local v3    # "checkCrossX":F
    .local v16, "checkCrossX":F
    mul-float v3, v2, v12

    invoke-interface {v15, v0, v3}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 382
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    mul-float v3, v2, v10

    mul-float v15, v2, v11

    invoke-interface {v0, v3, v15}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 383
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    mul-float v3, v2, v7

    mul-float v15, v2, v9

    invoke-interface {v0, v3, v15}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 385
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v3

    const/4 v15, 0x0

    invoke-interface {v0, v3, v15}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 386
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getPathToDraw()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 387
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    .line 388
    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v3

    mul-float v3, v3, p3

    invoke-virtual {v13}, Landroidx/compose/material3/CheckDrawingCache;->getPathToDraw()Landroidx/compose/ui/graphics/Path;

    move-result-object v15

    .line 387
    move/from16 v17, v2

    .end local v2    # "width":F
    .local v17, "width":F
    const/4 v2, 0x0

    move/from16 v18, v4

    .end local v4    # "checkCrossY":F
    .local v18, "checkCrossY":F
    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v15, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 379
    .end local v13    # "$this$drawCheck_3IgeMak_u24lambda_u247":Landroidx/compose/material3/CheckDrawingCache;
    .end local v14    # "$i$a$-with-CheckboxKt$drawCheck$1":I
    nop

    .line 391
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material3/CheckDrawingCache;->getPathToDraw()Landroidx/compose/ui/graphics/Path;

    move-result-object v20

    const/16 v23, 0x0

    move-object/from16 v24, v1

    check-cast v24, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x34

    const/16 v28, 0x0

    move-object/from16 v19, p0

    move-wide/from16 v21, p1

    invoke-static/range {v19 .. v28}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 392
    return-void
.end method
