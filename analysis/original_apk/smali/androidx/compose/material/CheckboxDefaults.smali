.class public final Landroidx/compose/material/CheckboxDefaults;
.super Ljava/lang/Object;
.source "Checkbox.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckbox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material/CheckboxDefaults\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,485:1\n83#2,3:486\n1116#3,6:489\n*S KotlinDebug\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material/CheckboxDefaults\n*L\n234#1:486,3\n234#1:489,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/material/CheckboxDefaults;",
        "",
        "()V",
        "colors",
        "Landroidx/compose/material/CheckboxColors;",
        "checkedColor",
        "Landroidx/compose/ui/graphics/Color;",
        "uncheckedColor",
        "checkmarkColor",
        "disabledColor",
        "disabledIndeterminateColor",
        "colors-zjMxDiM",
        "(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;",
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

.field public static final INSTANCE:Landroidx/compose/material/CheckboxDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/CheckboxDefaults;

    invoke-direct {v0}, Landroidx/compose/material/CheckboxDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/CheckboxDefaults;->INSTANCE:Landroidx/compose/material/CheckboxDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;
    .locals 44
    .param p1, "checkedColor"    # J
    .param p3, "uncheckedColor"    # J
    .param p5, "checkmarkColor"    # J
    .param p7, "disabledColor"    # J
    .param p9, "disabledIndeterminateColor"    # J
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I

    move-object/from16 v0, p11

    const v1, 0x1bfc5e88

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(colors)P(0:c#ui.graphics.Color,4:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)227@9578L6,228@9642L6,229@9725L6,230@9786L6,230@9829L8,231@9923L8,233@9972L922:Checkbox.kt#jmzs0o"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p13, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    .line 228
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    move-result-wide v4

    .end local p1    # "checkedColor":J
    .local v4, "checkedColor":J
    goto :goto_0

    .line 0
    .end local v4    # "checkedColor":J
    .restart local p1    # "checkedColor":J
    :cond_0
    move-wide/from16 v4, p1

    .line 228
    .end local p1    # "checkedColor":J
    .restart local v4    # "checkedColor":J
    :goto_0
    and-int/lit8 v2, p13, 0x2

    if-eqz v2, :cond_1

    .line 229
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v6

    const v8, 0x3f19999a    # 0.6f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v6

    move-wide/from16 v30, v6

    .end local p3    # "uncheckedColor":J
    .local v6, "uncheckedColor":J
    goto :goto_1

    .line 228
    .end local v6    # "uncheckedColor":J
    .restart local p3    # "uncheckedColor":J
    :cond_1
    move-wide/from16 v30, p3

    .line 229
    .end local p3    # "uncheckedColor":J
    .local v30, "uncheckedColor":J
    :goto_1
    and-int/lit8 v2, p13, 0x4

    if-eqz v2, :cond_2

    .line 230
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v6

    move-wide/from16 v32, v6

    .end local p5    # "checkmarkColor":J
    .local v6, "checkmarkColor":J
    goto :goto_2

    .line 229
    .end local v6    # "checkmarkColor":J
    .restart local p5    # "checkmarkColor":J
    :cond_2
    move-wide/from16 v32, p5

    .line 230
    .end local p5    # "checkmarkColor":J
    .local v32, "checkmarkColor":J
    :goto_2
    and-int/lit8 v2, p13, 0x8

    if-eqz v2, :cond_3

    .line 231
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v6

    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v6

    move-wide/from16 v34, v6

    .end local p7    # "disabledColor":J
    .local v6, "disabledColor":J
    goto :goto_3

    .line 230
    .end local v6    # "disabledColor":J
    .restart local p7    # "disabledColor":J
    :cond_3
    move-wide/from16 v34, p7

    .line 231
    .end local p7    # "disabledColor":J
    .local v34, "disabledColor":J
    :goto_3
    and-int/lit8 v2, p13, 0x10

    if-eqz v2, :cond_4

    .line 232
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    .end local p9    # "disabledIndeterminateColor":J
    .local v2, "disabledIndeterminateColor":J
    goto :goto_4

    .line 231
    .end local v2    # "disabledIndeterminateColor":J
    .restart local p9    # "disabledIndeterminateColor":J
    :cond_4
    move-wide/from16 v2, p9

    .line 232
    .end local p9    # "disabledIndeterminateColor":J
    .restart local v2    # "disabledIndeterminateColor":J
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 233
    const/4 v6, -0x1

    const-string/jumbo v7, "androidx.compose.material.CheckboxDefaults.colors (Checkbox.kt:232)"

    move/from16 v15, p12

    invoke-static {v1, v15, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_5

    .line 232
    :cond_5
    move/from16 v15, p12

    .line 235
    :goto_5
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    .line 236
    invoke-static/range {v30 .. v31}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    .line 235
    nop

    .line 237
    invoke-static/range {v32 .. v33}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    .line 235
    nop

    .line 238
    invoke-static/range {v34 .. v35}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    .line 235
    nop

    .line 239
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v9

    filled-new-array {v1, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 235
    nop

    .line 234
    nop

    .local v1, "keys$iv":[Ljava/lang/Object;
    const/16 v6, 0x8

    move/from16 v36, v6

    .local v36, "$changed$iv":I
    const/16 v37, 0x0

    .local v37, "$i$f$remember":I
    const v6, -0x21de6e89

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 486
    const/4 v6, 0x0

    .line 487
    .local v6, "invalid$iv":Z
    array-length v7, v1

    const/4 v8, 0x0

    move/from16 v38, v6

    .end local v6    # "invalid$iv":Z
    .local v38, "invalid$iv":Z
    :goto_6
    if-ge v8, v7, :cond_6

    aget-object v6, v1, v8

    .local v6, "key$iv":Ljava/lang/Object;
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    or-int v38, v38, v9

    .end local v6    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 488
    :cond_6
    move-object/from16 v11, p11

    .local v11, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 489
    .local v39, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 490
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v38, :cond_8

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v12, v6, :cond_7

    goto :goto_7

    .line 494
    :cond_7
    move-object v0, v11

    move-object/from16 v43, v12

    goto/16 :goto_8

    .line 491
    :cond_8
    :goto_7
    const/16 v41, 0x0

    .line 245
    .local v41, "$i$a$-remember-CheckboxDefaults$colors$1":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v13, 0x0

    move-wide/from16 p1, v32

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    move/from16 p7, v10

    move-object/from16 p8, v13

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    .line 246
    const/4 v13, 0x0

    const/16 v14, 0xe

    const/16 v16, 0x0

    move-wide/from16 p1, v4

    move/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, v16

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    .line 248
    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-wide/from16 p1, v34

    move/from16 p6, v16

    move/from16 p7, v17

    move-object/from16 p8, v18

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v17

    .line 241
    new-instance v42, Landroidx/compose/material/DefaultCheckboxColors;

    move-object/from16 v6, v42

    .line 244
    nop

    .line 245
    nop

    .line 243
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 242
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    const/16 v29, 0x0

    .line 241
    move-wide/from16 v7, v32

    move-object v0, v11

    move-object/from16 v43, v12

    .end local v11    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v43, "it$iv$iv":Ljava/lang/Object;
    move-wide v11, v4

    move-wide/from16 v15, v34

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    move-wide/from16 v23, v30

    move-wide/from16 v25, v34

    move-wide/from16 v27, v2

    invoke-direct/range {v6 .. v29}, Landroidx/compose/material/DefaultCheckboxColors;-><init>(JJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 491
    .end local v41    # "$i$a$-remember-CheckboxDefaults$colors$1":I
    move-object/from16 v12, v42

    .line 492
    .local v12, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 493
    nop

    .line 490
    .end local v12    # "value$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 489
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v43    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 488
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$f$cache":I
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 234
    .end local v1    # "keys$iv":[Ljava/lang/Object;
    .end local v36    # "$changed$iv":I
    .end local v37    # "$i$f$remember":I
    .end local v38    # "invalid$iv":Z
    check-cast v12, Landroidx/compose/material/DefaultCheckboxColors;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v12, Landroidx/compose/material/CheckboxColors;

    return-object v12
.end method
