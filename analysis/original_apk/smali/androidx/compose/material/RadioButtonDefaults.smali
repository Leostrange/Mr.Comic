.class public final Landroidx/compose/material/RadioButtonDefaults;
.super Ljava/lang/Object;
.source "RadioButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadioButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonDefaults\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,233:1\n67#2,3:234\n66#2:237\n1116#3,6:238\n*S KotlinDebug\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonDefaults\n*L\n168#1:234,3\n168#1:237\n168#1:238,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/material/RadioButtonDefaults;",
        "",
        "()V",
        "colors",
        "Landroidx/compose/material/RadioButtonColors;",
        "selectedColor",
        "Landroidx/compose/ui/graphics/Color;",
        "unselectedColor",
        "disabledColor",
        "colors-RGew2ao",
        "(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/RadioButtonColors;",
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

.field public static final INSTANCE:Landroidx/compose/material/RadioButtonDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/RadioButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material/RadioButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material/RadioButtonDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/RadioButtonColors;
    .locals 28
    .param p1, "selectedColor"    # J
    .param p3, "unselectedColor"    # J
    .param p5, "disabledColor"    # J
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    move-object/from16 v0, p7

    move/from16 v1, p8

    const v2, 0x51b3583a

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(colors)P(1:c#ui.graphics.Color,2:c#ui.graphics.Color,0:c#ui.graphics.Color)163@6598L6,164@6663L6,165@6745L6,165@6788L8,167@6840L197:RadioButton.kt#jmzs0o"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p9, 0x1

    const/4 v4, 0x6

    if-eqz v3, :cond_0

    .line 164
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    move-result-wide v5

    .end local p1    # "selectedColor":J
    .local v5, "selectedColor":J
    goto :goto_0

    .line 0
    .end local v5    # "selectedColor":J
    .restart local p1    # "selectedColor":J
    :cond_0
    move-wide/from16 v5, p1

    .line 164
    .end local p1    # "selectedColor":J
    .restart local v5    # "selectedColor":J
    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    .line 165
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v7

    const v9, 0x3f19999a    # 0.6f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    move-wide v15, v7

    .end local p3    # "unselectedColor":J
    .local v7, "unselectedColor":J
    goto :goto_1

    .line 164
    .end local v7    # "unselectedColor":J
    .restart local p3    # "unselectedColor":J
    :cond_1
    move-wide/from16 v15, p3

    .line 165
    .end local p3    # "unselectedColor":J
    .local v15, "unselectedColor":J
    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    .line 166
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v7

    sget-object v3, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    .end local p5    # "disabledColor":J
    .local v3, "disabledColor":J
    goto :goto_2

    .line 165
    .end local v3    # "disabledColor":J
    .restart local p5    # "disabledColor":J
    :cond_2
    move-wide/from16 v3, p5

    .line 166
    .end local p5    # "disabledColor":J
    .restart local v3    # "disabledColor":J
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material.RadioButtonDefaults.colors (RadioButton.kt:166)"

    invoke-static {v2, v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    and-int/lit8 v9, v1, 0xe

    and-int/lit8 v10, v1, 0x70

    or-int/2addr v9, v10

    and-int/lit16 v10, v1, 0x380

    or-int/2addr v9, v10

    .line 168
    move/from16 v17, v9

    .local v17, "$changed$iv":I
    move-object v14, v7

    .local v14, "key2$iv":Ljava/lang/Object;
    move-object v12, v8

    .local v2, "key1$iv":Ljava/lang/Object;
    .local v12, "key3$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "$i$f$remember":I
    const v7, 0x607fb4c4

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v0, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 234
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 235
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 234
    or-int/2addr v7, v8

    .line 236
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 234
    or-int/2addr v7, v8

    .line 237
    move-object/from16 v13, p7

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v19, v7

    .local v19, "invalid$iv$iv":Z
    const/16 v20, 0x0

    .line 238
    .local v20, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 239
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v19, :cond_5

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v10, v7, :cond_4

    goto :goto_3

    .line 243
    :cond_4
    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object v0, v13

    move-object/from16 v27, v14

    goto :goto_4

    .line 240
    :cond_5
    :goto_3
    const/16 v22, 0x0

    .line 173
    .local v22, "$i$a$-remember-RadioButtonDefaults$colors$1":I
    new-instance v23, Landroidx/compose/material/DefaultRadioButtonColors;

    const/16 v24, 0x0

    move-object/from16 v7, v23

    move-wide v8, v5

    move-object/from16 v25, v10

    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .local v25, "it$iv$iv":Ljava/lang/Object;
    move-wide v10, v15

    move-object/from16 v26, v12

    move-object v0, v13

    .end local v12    # "key3$iv":Ljava/lang/Object;
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v26, "key3$iv":Ljava/lang/Object;
    move-wide v12, v3

    move-object/from16 v27, v14

    .end local v14    # "key2$iv":Ljava/lang/Object;
    .local v27, "key2$iv":Ljava/lang/Object;
    move-object/from16 v14, v24

    invoke-direct/range {v7 .. v14}, Landroidx/compose/material/DefaultRadioButtonColors;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 240
    .end local v22    # "$i$a$-remember-RadioButtonDefaults$colors$1":I
    move-object/from16 v10, v23

    .line 241
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 242
    nop

    .line 239
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 238
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v25    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 237
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "invalid$iv$iv":Z
    .end local v20    # "$i$f$cache":I
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 168
    .end local v2    # "key1$iv":Ljava/lang/Object;
    .end local v17    # "$changed$iv":I
    .end local v18    # "$i$f$remember":I
    .end local v26    # "key3$iv":Ljava/lang/Object;
    .end local v27    # "key2$iv":Ljava/lang/Object;
    check-cast v10, Landroidx/compose/material/DefaultRadioButtonColors;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v10, Landroidx/compose/material/RadioButtonColors;

    return-object v10
.end method
