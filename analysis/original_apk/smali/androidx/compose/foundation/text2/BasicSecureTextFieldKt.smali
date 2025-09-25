.class public final Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;
.super Ljava/lang/Object;
.source "BasicSecureTextField.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicSecureTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicSecureTextField.kt\nandroidx/compose/foundation/text2/BasicSecureTextFieldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,523:1\n25#2:524\n25#2:531\n25#2:548\n36#2:559\n36#2:567\n1116#3,6:525\n1116#3,6:532\n1116#3,6:538\n1116#3,3:549\n1119#3,3:555\n1116#3,6:560\n1116#3,6:568\n487#4,4:544\n491#4,2:552\n495#4:558\n487#5:554\n74#6:566\n81#7:574\n107#7,2:575\n*S KotlinDebug\n*F\n+ 1 BasicSecureTextField.kt\nandroidx/compose/foundation/text2/BasicSecureTextFieldKt\n*L\n159#1:524\n169#1:531\n282#1:548\n283#1:559\n493#1:567\n159#1:525,6\n169#1:532,6\n184#1:538,6\n282#1:549,3\n282#1:555,3\n283#1:560,6\n493#1:568,6\n282#1:544,4\n282#1:552,2\n282#1:558\n282#1:554\n492#1:566\n169#1:574\n169#1:575,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u001a\u00d4\u0001\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u001928\u0008\u0002\u0010\u001a\u001a2\u0012\u0004\u0012\u00020\u001c\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001b\u00a2\u0006\u0002\u0008\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0008\u0002\u0010%\u001a\u00020&H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001a\u00e8\u0001\u0010\u0002\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00030,2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u001928\u0008\u0002\u0010\u001a\u001a2\u0012\u0004\u0012\u00020\u001c\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001d\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001b\u00a2\u0006\u0002\u0008\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0008\u0002\u0010%\u001a\u00020&H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.\u001a \u0010/\u001a\u00020\u00032\u0011\u00100\u001a\r\u0012\u0004\u0012\u00020\u00030\u001d\u00a2\u0006\u0002\u00081H\u0003\u00a2\u0006\u0002\u00102\u001a\u0010\u00103\u001a\u0002042\u0006\u0010\u0008\u001a\u00020\tH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00065\u00b2\u0006\n\u00106\u001a\u000207X\u008a\u008e\u0002"
    }
    d2 = {
        "LAST_TYPED_CHARACTER_REVEAL_DURATION_MILLIS",
        "",
        "BasicSecureTextField",
        "",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "onSubmit",
        "Landroidx/compose/foundation/text2/input/ImeActionHandler;",
        "imeAction",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "textObfuscationMode",
        "Landroidx/compose/foundation/text2/input/TextObfuscationMode;",
        "keyboardType",
        "Landroidx/compose/ui/text/input/KeyboardType;",
        "enabled",
        "",
        "inputTransformation",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "onTextLayout",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "Lkotlin/ParameterName;",
        "name",
        "getResult",
        "Lkotlin/ExtensionFunctionType;",
        "decorator",
        "Landroidx/compose/foundation/text2/TextFieldDecorator;",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "BasicSecureTextField-mMrxcSU",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "value",
        "",
        "onValueChange",
        "Lkotlin/Function1;",
        "BasicSecureTextField-TLP4tmw",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "DisableCutCopy",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "KeyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "foundation_release",
        "valueWithSelection",
        "Landroidx/compose/ui/text/input/TextFieldValue;"
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
.field private static final LAST_TYPED_CHARACTER_REVEAL_DURATION_MILLIS:J = 0x5dcL


# direct methods
.method public static final BasicSecureTextField-TLP4tmw(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "onSubmit"    # Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .param p4, "imeAction"    # I
    .param p5, "textObfuscationMode"    # I
    .param p6, "keyboardType"    # I
    .param p7, "enabled"    # Z
    .param p8, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p9, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p10, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p11, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p12, "onTextLayout"    # Lkotlin/jvm/functions/Function2;
    .param p13, "decorator"    # Landroidx/compose/foundation/text2/TextFieldDecorator;
    .param p14, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p15, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p16, "$changed"    # I
    .param p17, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text2/input/ImeActionHandler;",
            "IIIZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 158
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const v0, 0x36b0a62c

    move-object/from16 v1, p15

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicSecureTextField)P(14,10,7,8,3:c#ui.text.input.ImeAction,12:c#foundation.text2.input.TextObfuscationMode,6:c#ui.text.input.KeyboardType,2,4,13,5!1,9)156@9390L21,158@9433L213,168@9839L174,178@10082L957:BasicSecureTextField.kt#g98mwb"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p16

    .local v1, "$dirty":I
    move/from16 v2, p17

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v13, 0xe

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_b

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v17

    goto :goto_6

    :cond_a
    move/from16 v20, v18

    :goto_6
    or-int v1, v1, v20

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    and-int/lit8 v20, v11, 0x10

    const/16 v21, 0x2000

    const v22, 0xe000

    const/16 v23, 0x4000

    if-eqz v20, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int v24, v13, v22

    if-nez v24, :cond_e

    move/from16 v7, p4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v23

    goto :goto_8

    :cond_d
    move/from16 v25, v21

    :goto_8
    or-int v1, v1, v25

    goto :goto_9

    :cond_e
    move/from16 v7, p4

    :goto_9
    and-int/lit8 v25, v11, 0x20

    if-eqz v25, :cond_f

    const/high16 v26, 0x30000

    or-int v1, v1, v26

    move/from16 v8, p5

    goto :goto_b

    :cond_f
    const/high16 v26, 0x70000

    and-int v26, v13, v26

    if-nez v26, :cond_11

    move/from16 v8, p5

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v27, 0x10000

    :goto_a
    or-int v1, v1, v27

    goto :goto_b

    :cond_11
    move/from16 v8, p5

    :goto_b
    and-int/lit8 v27, v11, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v1, v1, v28

    move/from16 v9, p6

    goto :goto_d

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v13, v28

    if-nez v28, :cond_14

    move/from16 v9, p6

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v29, 0x80000

    :goto_c
    or-int v1, v1, v29

    goto :goto_d

    :cond_14
    move/from16 v9, p6

    :goto_d
    and-int/lit16 v5, v11, 0x80

    if-eqz v5, :cond_15

    const/high16 v30, 0xc00000

    or-int v1, v1, v30

    move/from16 v0, p7

    goto :goto_f

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v13, v30

    if-nez v30, :cond_17

    move/from16 v0, p7

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v31, 0x400000

    :goto_e
    or-int v1, v1, v31

    goto :goto_f

    :cond_17
    move/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v31, 0x6000000

    or-int v1, v1, v31

    move-object/from16 v4, p8

    goto :goto_11

    :cond_18
    const/high16 v31, 0xe000000

    and-int v31, v13, v31

    if-nez v31, :cond_1a

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v31, 0x2000000

    :goto_10
    or-int v1, v1, v31

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v11, 0x200

    if-eqz v4, :cond_1b

    const/high16 v31, 0x30000000

    or-int v1, v1, v31

    move-object/from16 v6, p9

    goto :goto_13

    :cond_1b
    const/high16 v31, 0x70000000

    and-int v31, v13, v31

    if-nez v31, :cond_1d

    move-object/from16 v6, p9

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_12
    or-int v1, v1, v31

    goto :goto_13

    :cond_1d
    move-object/from16 v6, p9

    :goto_13
    and-int/lit16 v6, v11, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v31, v12, 0xe

    if-nez v31, :cond_20

    move-object/from16 v7, p10

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v31, 0x4

    goto :goto_14

    :cond_1f
    const/16 v31, 0x2

    :goto_14
    or-int v2, v2, v31

    goto :goto_15

    :cond_20
    move-object/from16 v7, p10

    :goto_15
    and-int/lit16 v7, v11, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v8, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v31, v12, 0x70

    if-nez v31, :cond_23

    move-object/from16 v8, p11

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    const/16 v19, 0x20

    goto :goto_16

    :cond_22
    const/16 v19, 0x10

    :goto_16
    or-int v2, v2, v19

    goto :goto_17

    :cond_23
    move-object/from16 v8, p11

    :goto_17
    and-int/lit16 v8, v11, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v9, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v9, v12, 0x380

    if-nez v9, :cond_26

    move-object/from16 v9, p12

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v26, 0x100

    goto :goto_18

    :cond_25
    const/16 v26, 0x80

    :goto_18
    or-int v2, v2, v26

    goto :goto_19

    :cond_26
    move-object/from16 v9, p12

    :goto_19
    and-int/lit16 v9, v11, 0x2000

    if-eqz v9, :cond_27

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v14, p13

    goto :goto_1b

    :cond_27
    and-int/lit16 v14, v12, 0x1c00

    if-nez v14, :cond_29

    move-object/from16 v14, p13

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v17, v18

    :goto_1a
    or-int v2, v2, v17

    goto :goto_1b

    :cond_29
    move-object/from16 v14, p13

    :goto_1b
    and-int v17, v12, v22

    if-nez v17, :cond_2c

    and-int/lit16 v12, v11, 0x4000

    if-nez v12, :cond_2a

    move-object/from16 v12, p14

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move/from16 v21, v23

    goto :goto_1c

    :cond_2a
    move-object/from16 v12, p14

    :cond_2b
    :goto_1c
    or-int v2, v2, v21

    goto :goto_1d

    :cond_2c
    move-object/from16 v12, p14

    :goto_1d
    const v17, 0x5b6db6db

    and-int v12, v1, v17

    const v14, 0x12492492

    if-ne v12, v14, :cond_2e

    const v12, 0xb6db

    and-int/2addr v12, v2

    const/16 v14, 0x2492

    if-ne v12, v14, :cond_2e

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_2d

    goto :goto_1e

    .line 206
    :cond_2d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, p6

    move/from16 v24, p7

    move-object/from16 v25, p8

    move-object/from16 v26, p9

    move-object/from16 v27, p10

    move-object/from16 v28, p11

    move-object/from16 v29, p12

    move-object/from16 v30, p13

    move-object/from16 v34, p14

    move/from16 v31, v2

    goto/16 :goto_32

    .line 158
    :cond_2e
    :goto_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_2f

    goto :goto_1f

    .line 157
    :cond_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x4000

    if-eqz v0, :cond_30

    const v0, -0xe001

    and-int/2addr v0, v2

    move-object/from16 v3, p2

    move-object/from16 v12, p3

    move/from16 v2, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v34, p14

    move v11, v0

    move/from16 v0, p4

    .end local v2    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_2c

    .end local v0    # "$dirty1":I
    .restart local v2    # "$dirty1":I
    :cond_30
    move-object/from16 v3, p2

    move-object/from16 v12, p3

    move/from16 v0, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v34, p14

    move v11, v2

    move/from16 v2, p5

    goto/16 :goto_2c

    .line 158
    :cond_31
    :goto_1f
    if-eqz v3, :cond_32

    .line 144
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_20

    .line 158
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_32
    move-object/from16 v3, p2

    .line 144
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_20
    if-eqz v16, :cond_33

    .line 146
    const/4 v12, 0x0

    .end local p3    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .local v12, "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    goto :goto_21

    .line 144
    .end local v12    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .restart local p3    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    :cond_33
    move-object/from16 v12, p3

    .line 146
    .end local p3    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .restart local v12    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    :goto_21
    if-eqz v20, :cond_34

    .line 147
    sget-object v16, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v16

    .end local p4    # "imeAction":I
    .local v16, "imeAction":I
    goto :goto_22

    .line 146
    .end local v16    # "imeAction":I
    .restart local p4    # "imeAction":I
    :cond_34
    move/from16 v16, p4

    .line 147
    .end local p4    # "imeAction":I
    .restart local v16    # "imeAction":I
    :goto_22
    if-eqz v25, :cond_35

    .line 148
    sget-object v17, Landroidx/compose/foundation/text2/input/TextObfuscationMode;->Companion:Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;->getRevealLastTyped-pyid5Pk()I

    move-result v17

    .end local p5    # "textObfuscationMode":I
    .local v17, "textObfuscationMode":I
    goto :goto_23

    .line 147
    .end local v17    # "textObfuscationMode":I
    .restart local p5    # "textObfuscationMode":I
    :cond_35
    move/from16 v17, p5

    .line 148
    .end local p5    # "textObfuscationMode":I
    .restart local v17    # "textObfuscationMode":I
    :goto_23
    if-eqz v27, :cond_36

    .line 149
    sget-object v18, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPassword-PjHm6EE()I

    move-result v18

    .end local p6    # "keyboardType":I
    .local v18, "keyboardType":I
    goto :goto_24

    .line 148
    .end local v18    # "keyboardType":I
    .restart local p6    # "keyboardType":I
    :cond_36
    move/from16 v18, p6

    .line 149
    .end local p6    # "keyboardType":I
    .restart local v18    # "keyboardType":I
    :goto_24
    if-eqz v5, :cond_37

    .line 150
    const/4 v5, 0x1

    .end local p7    # "enabled":Z
    .local v5, "enabled":Z
    goto :goto_25

    .line 149
    .end local v5    # "enabled":Z
    .restart local p7    # "enabled":Z
    :cond_37
    move/from16 v5, p7

    .line 150
    .end local p7    # "enabled":Z
    .restart local v5    # "enabled":Z
    :goto_25
    if-eqz v0, :cond_38

    .line 151
    const/4 v0, 0x0

    .end local p8    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v0, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    goto :goto_26

    .line 150
    .end local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local p8    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :cond_38
    move-object/from16 v0, p8

    .line 151
    .end local p8    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :goto_26
    if-eqz v4, :cond_39

    .line 152
    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    .end local p9    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v4, "textStyle":Landroidx/compose/ui/text/TextStyle;
    goto :goto_27

    .line 151
    .end local v4    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local p9    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :cond_39
    move-object/from16 v4, p9

    .line 152
    .end local p9    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local v4    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :goto_27
    if-eqz v6, :cond_3a

    .line 153
    const/4 v6, 0x0

    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v6, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_28

    .line 152
    .end local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_3a
    move-object/from16 v6, p10

    .line 153
    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_28
    if-eqz v7, :cond_3b

    .line 154
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v14

    move-object/from16 p2, v0

    const/4 v0, 0x0

    .end local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local p2, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    invoke-direct {v7, v14, v15, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v7

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    .end local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v0, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_29

    .line 153
    .end local p2    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v0, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :cond_3b
    move-object/from16 p2, v0

    .end local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local p2    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    move-object/from16 v0, p11

    .line 154
    .end local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v0, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :goto_29
    if-eqz v8, :cond_3c

    .line 155
    const/4 v7, 0x0

    .end local p12    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function2;
    goto :goto_2a

    .line 154
    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p12    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :cond_3c
    move-object/from16 v7, p12

    .line 155
    .end local p12    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :goto_2a
    if-eqz v9, :cond_3d

    .line 156
    const/4 v8, 0x0

    .end local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v8, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    goto :goto_2b

    .line 155
    .end local v8    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :cond_3d
    move-object/from16 v8, p13

    .line 156
    .end local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local v8    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :goto_2b
    and-int/lit16 v9, v11, 0x4000

    if-eqz v9, :cond_3e

    .line 157
    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-static {v14, v10, v14, v9}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    .end local p14    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v9, "scrollState":Landroidx/compose/foundation/ScrollState;
    const v14, -0xe001

    and-int/2addr v2, v14

    move v11, v2

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v34, v9

    move/from16 v2, v17

    move-object v9, v0

    move-object v7, v4

    move-object v8, v6

    move/from16 v0, v16

    move/from16 v4, v18

    move-object/from16 v6, p2

    goto :goto_2c

    .line 156
    .end local v9    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local p14    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_3e
    move-object/from16 v34, p14

    move-object v9, v0

    move v11, v2

    move-object v14, v7

    move-object v15, v8

    move/from16 v0, v16

    move/from16 v2, v17

    move-object v7, v4

    move-object v8, v6

    move/from16 v4, v18

    move-object/from16 v6, p2

    .line 157
    .end local v16    # "imeAction":I
    .end local v17    # "textObfuscationMode":I
    .end local v18    # "keyboardType":I
    .end local p2    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local p14    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v0, "imeAction":I
    .local v2, "textObfuscationMode":I
    .local v4, "keyboardType":I
    .local v6, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v7, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v8, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v9, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v11, "$dirty1":I
    .local v14, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v15, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v34, "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_2c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_3f

    .line 158
    const-string/jumbo v13, "androidx.compose.foundation.text2.BasicSecureTextField (BasicSecureTextField.kt:157)"

    move-object/from16 p9, v15

    const v15, 0x36b0a62c

    .end local v15    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local p9, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    invoke-static {v15, v1, v11, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2d

    .line 157
    .end local p9    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local v15    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :cond_3f
    move-object/from16 p9, v15

    .line 158
    .end local v15    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local p9    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :goto_2d
    nop

    .line 159
    const/4 v13, 0x0

    move v15, v13

    .local v15, "$changed$iv":I
    const/4 v13, 0x0

    move/from16 p2, v13

    .local p2, "$i$f$remember":I
    const v13, -0x1d58f75c

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 524
    const/4 v13, 0x0

    .local v13, "invalid$iv$iv":Z
    move-object/from16 p3, v10

    .local p3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 525
    .local v16, "$i$f$cache":I
    move/from16 p4, v13

    .end local v13    # "invalid$iv$iv":Z
    .local p4, "invalid$iv$iv":Z
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 526
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v15

    .end local v15    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_40

    .line 527
    const/4 v15, 0x0

    .line 160
    .local v15, "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$state$1":I
    move-object/from16 p6, v13

    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .local p6, "it$iv$iv":Ljava/lang/Object;
    new-instance v13, Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 161
    nop

    .line 163
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 p10, v14

    move/from16 p7, v15

    .end local v14    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local v15    # "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$state$1":I
    .local p7, "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$state$1":I
    .local p10, "onTextLayout":Lkotlin/jvm/functions/Function2;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v14

    .line 160
    move-object/from16 p12, v8

    move-object/from16 p11, v9

    const/4 v8, 0x0

    move-object/from16 v9, p0

    .end local v8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v9    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local p12, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-direct {v13, v9, v14, v15, v8}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 527
    .end local p7    # "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$state$1":I
    move-object v8, v13

    .line 528
    .local v8, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v13, p3

    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 529
    nop

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2e

    .line 530
    .end local p6    # "it$iv$iv":Ljava/lang/Object;
    .end local p10    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local p12    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v8, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v9    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v13, "it$iv$iv":Ljava/lang/Object;
    .restart local v14    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_40
    move-object/from16 p12, v8

    move-object/from16 p11, v9

    move-object/from16 p6, v13

    move-object/from16 p10, v14

    move-object/from16 v9, p0

    move-object/from16 v13, p3

    .end local v8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v9    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local v14    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p6    # "it$iv$iv":Ljava/lang/Object;
    .restart local p10    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local p12    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move-object/from16 v8, p6

    .line 526
    :goto_2e
    nop

    .line 525
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p6    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 524
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 159
    .end local p2    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    check-cast v8, Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 169
    .local v8, "state":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v13, 0x0

    move v14, v13

    .local v14, "$changed$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$remember":I
    const v15, -0x1d58f75c

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 531
    const/4 v15, 0x0

    .local v15, "invalid$iv$iv":Z
    move-object/from16 p13, v10

    .local p13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 532
    .restart local v16    # "$i$f$cache":I
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 533
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p14, v13

    .end local v13    # "$i$f$remember":I
    .local p14, "$i$f$remember":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v9, v13, :cond_41

    .line 534
    const/4 v13, 0x0

    .line 171
    .local v13, "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$valueWithSelection$2":I
    move-object/from16 v18, v9

    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .local v18, "it$iv$iv":Ljava/lang/Object;
    new-instance v9, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 172
    nop

    .line 173
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v23

    .line 171
    const/16 v19, 0x0

    const/16 v21, 0x4

    const/16 v25, 0x0

    move-object/from16 p2, v9

    move-object/from16 p3, p0

    move-wide/from16 p4, v23

    move-object/from16 p6, v19

    move/from16 p7, v21

    move-object/from16 p8, v25

    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    move/from16 p2, v13

    move/from16 p3, v14

    const/4 v13, 0x0

    const/4 v14, 0x2

    .end local v13    # "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$valueWithSelection$2":I
    .end local v14    # "$changed$iv":I
    .local p2, "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$valueWithSelection$2":I
    .local p3, "$changed$iv":I
    invoke-static {v9, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    .line 534
    .end local p2    # "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$valueWithSelection$2":I
    nop

    .line 535
    .local v9, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v13, p13

    .end local p13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 536
    nop

    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2f

    .line 537
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "it$iv$iv":Ljava/lang/Object;
    .end local p3    # "$changed$iv":I
    .local v9, "it$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$changed$iv":I
    .restart local p13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_41
    move-object/from16 v13, p13

    move-object/from16 v18, v9

    move/from16 p3, v14

    .line 533
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$changed$iv":I
    .end local p13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v18    # "it$iv$iv":Ljava/lang/Object;
    .restart local p3    # "$changed$iv":I
    :goto_2f
    nop

    .line 532
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v18    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 531
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv$iv":Z
    .end local v16    # "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 169
    .end local p3    # "$changed$iv":I
    .end local p14    # "$i$f$remember":I
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 177
    .local v9, "valueWithSelection$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v9}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField_TLP4tmw$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v13

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object/from16 p2, v13

    move-object/from16 p3, p0

    move-wide/from16 p4, v14

    move-object/from16 p6, v16

    move/from16 p7, v17

    move-object/from16 p8, v18

    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v13

    invoke-static {v9, v13}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField_TLP4tmw$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 181
    nop

    .line 182
    nop

    .line 183
    invoke-static {v9}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField_TLP4tmw$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v13

    const v14, 0x6d073e85

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v15, p1

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v14, v14, v16

    .line 184
    move-object/from16 p2, v10

    .local v14, "invalid$iv":Z
    .local p2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 538
    .restart local v16    # "$i$f$cache":I
    move-object/from16 p3, v7

    .end local v7    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local p3, "textStyle":Landroidx/compose/ui/text/TextStyle;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 539
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_43

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v14

    .end local v14    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v7, v14, :cond_42

    goto :goto_30

    .line 543
    :cond_42
    move-object/from16 v14, p2

    move-object/from16 p5, v7

    goto :goto_31

    .line 539
    .end local p4    # "invalid$iv":Z
    .restart local v14    # "invalid$iv":Z
    :cond_43
    move/from16 p4, v14

    .line 540
    .end local v14    # "invalid$iv":Z
    .restart local p4    # "invalid$iv":Z
    :goto_30
    const/4 v14, 0x0

    .line 184
    .local v14, "$i$a$-cache-BasicSecureTextFieldKt$BasicSecureTextField$1":I
    move-object/from16 p5, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local p5, "it$iv":Ljava/lang/Object;
    new-instance v7, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$1$1;

    invoke-direct {v7, v15, v9}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 540
    .end local v14    # "$i$a$-cache-BasicSecureTextFieldKt$BasicSecureTextField$1":I
    nop

    .line 541
    .local v7, "value$iv":Ljava/lang/Object;
    move-object/from16 v14, p2

    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 542
    nop

    .line 539
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_31
    nop

    .line 538
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p5    # "it$iv":Ljava/lang/Object;
    nop

    .line 184
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 191
    nop

    .line 181
    const/4 v14, 0x0

    invoke-static {v3, v8, v13, v7, v14}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierKt;->syncTextFieldState(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 180
    nop

    .line 181
    nop

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 203
    nop

    .line 204
    nop

    .line 202
    shr-int/lit8 v7, v1, 0x3

    and-int/lit16 v7, v7, 0x380

    or-int/lit8 v7, v7, 0x6

    shr-int/lit8 v13, v1, 0x3

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v7, v13

    shr-int/lit8 v13, v1, 0x3

    and-int v13, v13, v22

    or-int/2addr v7, v13

    shr-int/lit8 v13, v1, 0x3

    const/high16 v14, 0x70000

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    shr-int/lit8 v13, v1, 0x3

    const/high16 v14, 0x380000

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    shr-int/lit8 v13, v1, 0x3

    const/high16 v14, 0x1c00000

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    shr-int/lit8 v13, v1, 0x3

    const/high16 v14, 0xe000000

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    shl-int/lit8 v13, v11, 0x1b

    const/high16 v14, 0x70000000

    and-int/2addr v13, v14

    or-int v31, v7, v13

    shr-int/lit8 v7, v11, 0x3

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v13, v11, 0x3

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v7, v13

    shr-int/lit8 v13, v11, 0x3

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v7, v13

    shr-int/lit8 v13, v11, 0x3

    and-int/lit16 v13, v13, 0x1c00

    or-int v32, v7, v13

    const/16 v33, 0x0

    .line 179
    move-object/from16 v16, v8

    move-object/from16 v18, v12

    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, p3

    move-object/from16 v25, p12

    move-object/from16 v26, p11

    move-object/from16 v27, p10

    move-object/from16 v28, p9

    move-object/from16 v29, v34

    move-object/from16 v30, v10

    invoke-static/range {v16 .. v33}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField-mMrxcSU(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 206
    .end local v8    # "state":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v9    # "valueWithSelection$delegate":Landroidx/compose/runtime/MutableState;
    :cond_44
    move-object/from16 v26, p3

    move-object/from16 v30, p9

    move-object/from16 v29, p10

    move-object/from16 v28, p11

    move-object/from16 v27, p12

    move/from16 v21, v0

    move/from16 v22, v2

    move-object/from16 v19, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v31, v11

    move-object/from16 v20, v12

    .end local v0    # "imeAction":I
    .end local v2    # "textObfuscationMode":I
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "keyboardType":I
    .end local v5    # "enabled":Z
    .end local v6    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v11    # "$dirty1":I
    .end local v12    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .end local p3    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .end local p9    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .end local p10    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local p12    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v19, "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .local v21, "imeAction":I
    .local v22, "textObfuscationMode":I
    .local v23, "keyboardType":I
    .local v24, "enabled":Z
    .local v25, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v26, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v27, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v28, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v29, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v30, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v31, "$dirty1":I
    :goto_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_45

    new-instance v32, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$2;

    move-object/from16 v0, v32

    move/from16 v33, v1

    .end local v1    # "$dirty":I
    .local v33, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v35, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v35, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object v15, v14

    move-object/from16 v14, v30

    move-object/from16 v36, v15

    move-object/from16 v15, v34

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v32

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_33

    .end local v33    # "$dirty":I
    .end local v35    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_45
    move/from16 v33, v1

    move-object/from16 v35, v10

    .end local v1    # "$dirty":I
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v33    # "$dirty":I
    .restart local v35    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_33
    return-void
.end method

.method public static final BasicSecureTextField-mMrxcSU(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .param p0, "state"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "onSubmit"    # Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .param p3, "imeAction"    # I
    .param p4, "textObfuscationMode"    # I
    .param p5, "keyboardType"    # I
    .param p6, "enabled"    # Z
    .param p7, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p8, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p9, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p10, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p11, "onTextLayout"    # Lkotlin/jvm/functions/Function2;
    .param p12, "decorator"    # Landroidx/compose/foundation/text2/TextFieldDecorator;
    .param p13, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p14, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p15, "$changed"    # I
    .param p16, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text2/input/ImeActionHandler;",
            "IIIZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 281
    move/from16 v15, p15

    move/from16 v14, p16

    move/from16 v13, p17

    const v0, 0x3ffb6c86

    move-object/from16 v1, p14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicSecureTextField)P(11,7,8,3:c#ui.text.input.ImeAction,12:c#foundation.text2.input.TextObfuscationMode,6:c#ui.text.input.KeyboardType,2,4,13,5!1,9)277@16038L21,281@16205L24,282@16266L82,322@17467L1064:BasicSecureTextField.kt#g98mwb"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p15

    .local v1, "$dirty":I
    move/from16 v2, p16

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

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    const/16 v16, 0x80

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

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    move/from16 v17, v16

    :goto_4
    or-int v1, v1, v17

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v17, v13, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v15, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v18

    goto :goto_6

    :cond_a
    move/from16 v21, v19

    :goto_6
    or-int v1, v1, v21

    goto :goto_7

    :cond_b
    move/from16 v5, p3

    :goto_7
    and-int/lit8 v21, v13, 0x10

    if-eqz v21, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p4

    goto :goto_9

    :cond_c
    const v22, 0xe000

    and-int v22, v15, v22

    if-nez v22, :cond_e

    move/from16 v6, p4

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v23, 0x4000

    goto :goto_8

    :cond_d
    const/16 v23, 0x2000

    :goto_8
    or-int v1, v1, v23

    goto :goto_9

    :cond_e
    move/from16 v6, p4

    :goto_9
    and-int/lit8 v23, v13, 0x20

    if-eqz v23, :cond_f

    const/high16 v24, 0x30000

    or-int v1, v1, v24

    move/from16 v7, p5

    goto :goto_b

    :cond_f
    const/high16 v24, 0x70000

    and-int v24, v15, v24

    if-nez v24, :cond_11

    move/from16 v7, p5

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v25, 0x10000

    :goto_a
    or-int v1, v1, v25

    goto :goto_b

    :cond_11
    move/from16 v7, p5

    :goto_b
    and-int/lit8 v25, v13, 0x40

    if-eqz v25, :cond_12

    const/high16 v26, 0x180000

    or-int v1, v1, v26

    move/from16 v10, p6

    goto :goto_d

    :cond_12
    const/high16 v26, 0x380000

    and-int v26, v15, v26

    if-nez v26, :cond_14

    move/from16 v10, p6

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v1, v1, v27

    goto :goto_d

    :cond_14
    move/from16 v10, p6

    :goto_d
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_15

    const/high16 v28, 0xc00000

    or-int v1, v1, v28

    move-object/from16 v4, p7

    goto :goto_f

    :cond_15
    const/high16 v28, 0x1c00000

    and-int v28, v15, v28

    if-nez v28, :cond_17

    move-object/from16 v4, p7

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v1, v1, v28

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    and-int/lit16 v4, v13, 0x100

    if-eqz v4, :cond_18

    const/high16 v28, 0x6000000

    or-int v1, v1, v28

    move-object/from16 v5, p8

    goto :goto_11

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v15, v28

    if-nez v28, :cond_1a

    move-object/from16 v5, p8

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v28, 0x2000000

    :goto_10
    or-int v1, v1, v28

    goto :goto_11

    :cond_1a
    move-object/from16 v5, p8

    :goto_11
    and-int/lit16 v5, v13, 0x200

    if-eqz v5, :cond_1b

    const/high16 v28, 0x30000000

    or-int v1, v1, v28

    move-object/from16 v6, p9

    goto :goto_13

    :cond_1b
    const/high16 v28, 0x70000000

    and-int v28, v15, v28

    if-nez v28, :cond_1d

    move-object/from16 v6, p9

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_12
    or-int v1, v1, v28

    goto :goto_13

    :cond_1d
    move-object/from16 v6, p9

    :goto_13
    and-int/lit16 v6, v13, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v28, v14, 0xe

    if-nez v28, :cond_20

    move-object/from16 v7, p10

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v20, 0x4

    goto :goto_14

    :cond_1f
    const/16 v20, 0x2

    :goto_14
    or-int v2, v2, v20

    goto :goto_15

    :cond_20
    move-object/from16 v7, p10

    :goto_15
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v8, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v20, v14, 0x70

    if-nez v20, :cond_23

    move-object/from16 v8, p11

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v22, 0x20

    goto :goto_16

    :cond_22
    const/16 v22, 0x10

    :goto_16
    or-int v2, v2, v22

    goto :goto_17

    :cond_23
    move-object/from16 v8, p11

    :goto_17
    and-int/lit16 v8, v13, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v10, p12

    goto :goto_18

    :cond_24
    and-int/lit16 v10, v14, 0x380

    if-nez v10, :cond_26

    move-object/from16 v10, p12

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v16, 0x100

    :cond_25
    or-int v2, v2, v16

    goto :goto_18

    :cond_26
    move-object/from16 v10, p12

    :goto_18
    and-int/lit16 v10, v14, 0x1c00

    if-nez v10, :cond_29

    and-int/lit16 v10, v13, 0x2000

    if-nez v10, :cond_27

    move-object/from16 v10, p13

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_19

    :cond_27
    move-object/from16 v10, p13

    :cond_28
    move/from16 v18, v19

    :goto_19
    or-int v2, v2, v18

    goto :goto_1a

    :cond_29
    move-object/from16 v10, p13

    :goto_1a
    const v16, 0x5b6db6db

    and-int v10, v1, v16

    const v11, 0x12492492

    if-ne v10, v11, :cond_2b

    and-int/lit16 v10, v2, 0x16db

    const/16 v11, 0x492

    if-ne v10, v11, :cond_2b

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_2a

    goto :goto_1b

    .line 349
    :cond_2a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, p6

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move-object/from16 v26, p9

    move-object/from16 v27, p10

    move-object/from16 v28, p11

    move-object/from16 v33, p12

    move-object/from16 v34, p13

    move/from16 v35, v1

    move/from16 v29, v2

    goto/16 :goto_2f

    .line 281
    :cond_2b
    :goto_1b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v15, 0x1

    if-eqz v10, :cond_2e

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_2c

    goto :goto_1c

    .line 278
    :cond_2c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x2000

    if-eqz v0, :cond_2d

    and-int/lit16 v2, v2, -0x1c01

    :cond_2d
    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v0, p4

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v11, p11

    move-object/from16 v33, p12

    move-object/from16 v34, p13

    move v13, v2

    move/from16 v2, p5

    goto/16 :goto_29

    .line 281
    :cond_2e
    :goto_1c
    if-eqz v3, :cond_2f

    .line 265
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1d

    .line 281
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_2f
    move-object/from16 v3, p1

    .line 265
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1d
    if-eqz v9, :cond_30

    .line 267
    const/4 v9, 0x0

    .end local p2    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .local v9, "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    goto :goto_1e

    .line 265
    .end local v9    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .restart local p2    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    :cond_30
    move-object/from16 v9, p2

    .line 267
    .end local p2    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .restart local v9    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    :goto_1e
    if-eqz v17, :cond_31

    .line 268
    sget-object v10, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v10

    .end local p3    # "imeAction":I
    .local v10, "imeAction":I
    goto :goto_1f

    .line 267
    .end local v10    # "imeAction":I
    .restart local p3    # "imeAction":I
    :cond_31
    move/from16 v10, p3

    .line 268
    .end local p3    # "imeAction":I
    .restart local v10    # "imeAction":I
    :goto_1f
    if-eqz v21, :cond_32

    .line 269
    sget-object v17, Landroidx/compose/foundation/text2/input/TextObfuscationMode;->Companion:Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;->getRevealLastTyped-pyid5Pk()I

    move-result v17

    .end local p4    # "textObfuscationMode":I
    .local v17, "textObfuscationMode":I
    goto :goto_20

    .line 268
    .end local v17    # "textObfuscationMode":I
    .restart local p4    # "textObfuscationMode":I
    :cond_32
    move/from16 v17, p4

    .line 269
    .end local p4    # "textObfuscationMode":I
    .restart local v17    # "textObfuscationMode":I
    :goto_20
    if-eqz v23, :cond_33

    .line 270
    sget-object v18, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPassword-PjHm6EE()I

    move-result v18

    .end local p5    # "keyboardType":I
    .local v18, "keyboardType":I
    goto :goto_21

    .line 269
    .end local v18    # "keyboardType":I
    .restart local p5    # "keyboardType":I
    :cond_33
    move/from16 v18, p5

    .line 270
    .end local p5    # "keyboardType":I
    .restart local v18    # "keyboardType":I
    :goto_21
    if-eqz v25, :cond_34

    .line 271
    const/16 v19, 0x1

    .end local p6    # "enabled":Z
    .local v19, "enabled":Z
    goto :goto_22

    .line 270
    .end local v19    # "enabled":Z
    .restart local p6    # "enabled":Z
    :cond_34
    move/from16 v19, p6

    .line 271
    .end local p6    # "enabled":Z
    .restart local v19    # "enabled":Z
    :goto_22
    if-eqz v0, :cond_35

    .line 272
    const/4 v0, 0x0

    .end local p7    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v0, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    goto :goto_23

    .line 271
    .end local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local p7    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :cond_35
    move-object/from16 v0, p7

    .line 272
    .end local p7    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :goto_23
    if-eqz v4, :cond_36

    .line 273
    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    .end local p8    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v4, "textStyle":Landroidx/compose/ui/text/TextStyle;
    goto :goto_24

    .line 272
    .end local v4    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local p8    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :cond_36
    move-object/from16 v4, p8

    .line 273
    .end local p8    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local v4    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :goto_24
    if-eqz v5, :cond_37

    .line 274
    const/4 v5, 0x0

    .end local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_25

    .line 273
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_37
    move-object/from16 v5, p9

    .line 274
    .end local p9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_25
    if-eqz v6, :cond_38

    .line 275
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v20, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 v33, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v33, "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    move-object/from16 p1, v0

    const/4 v0, 0x0

    .end local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local p1, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    invoke-direct {v6, v11, v12, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroidx/compose/ui/graphics/Brush;

    .end local p10    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v6, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_26

    .line 274
    .end local v6    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p1    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p10    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :cond_38
    move-object/from16 p1, v0

    move-object/from16 v33, v12

    const/4 v0, 0x0

    .end local v0    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    move-object/from16 v6, p10

    .line 275
    .end local p10    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local v6    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :goto_26
    if-eqz v7, :cond_39

    .line 276
    const/4 v7, 0x0

    .end local p11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function2;
    goto :goto_27

    .line 275
    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :cond_39
    move-object/from16 v7, p11

    .line 276
    .end local p11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :goto_27
    if-eqz v8, :cond_3a

    .line 277
    const/4 v8, 0x0

    .end local p12    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v8, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    goto :goto_28

    .line 276
    .end local v8    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local p12    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :cond_3a
    move-object/from16 v8, p12

    .line 277
    .end local p12    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local v8    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :goto_28
    and-int/lit16 v11, v13, 0x2000

    if-eqz v11, :cond_3b

    .line 278
    move-object/from16 v12, v33

    const/4 v0, 0x1

    const/4 v11, 0x0

    .end local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v11, v12, v11, v0}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v20

    .end local p13    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v20, "scrollState":Landroidx/compose/foundation/ScrollState;
    and-int/lit16 v2, v2, -0x1c01

    move v13, v2

    move-object v11, v7

    move-object/from16 v33, v8

    move/from16 v0, v17

    move/from16 v2, v18

    move-object/from16 v34, v20

    move-object v7, v5

    move-object v8, v6

    move-object/from16 v5, p1

    move-object v6, v4

    move/from16 v4, v19

    goto :goto_29

    .line 277
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p13    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_3b
    move-object/from16 v12, v33

    .end local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v34, p13

    move v13, v2

    move-object v11, v7

    move-object/from16 v33, v8

    move/from16 v0, v17

    move/from16 v2, v18

    move-object v7, v5

    move-object v8, v6

    move-object/from16 v5, p1

    move-object v6, v4

    move/from16 v4, v19

    .line 278
    .end local v17    # "textObfuscationMode":I
    .end local v18    # "keyboardType":I
    .end local v19    # "enabled":Z
    .end local p1    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local p13    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v0, "textObfuscationMode":I
    .local v2, "keyboardType":I
    .local v4, "enabled":Z
    .local v5, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v6, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v7, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v8, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v11, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v13, "$dirty1":I
    .local v33, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v34, "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_3c

    .line 281
    const-string/jumbo v14, "androidx.compose.foundation.text2.BasicSecureTextField (BasicSecureTextField.kt:280)"

    const v15, 0x3ffb6c86

    invoke-static {v15, v1, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3c
    nop

    .line 282
    const/4 v14, 0x0

    move v15, v14

    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    .local v16, "$i$f$rememberCoroutineScope":I
    const v14, 0x2e20b340

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 544
    nop

    .line 546
    move-object v14, v12

    .line 547
    .local v14, "composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .local v17, "$changed$iv$iv":I
    const/16 v18, 0x0

    move/from16 v35, v1

    .end local v1    # "$dirty":I
    .local v18, "$i$f$remember":I
    .local v35, "$dirty":I
    const v1, -0x1d58f75c

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 548
    const/4 v1, 0x0

    .local v1, "invalid$iv$iv$iv":Z
    move-object/from16 p1, v12

    .local p1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 549
    .local v19, "$i$f$cache":I
    move/from16 p2, v1

    .end local v1    # "invalid$iv$iv$iv":Z
    .local p2, "invalid$iv$iv$iv":Z
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 550
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v13

    .end local v13    # "$dirty1":I
    .local p3, "$dirty1":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v1, v13, :cond_3d

    .line 551
    const/4 v13, 0x0

    .line 552
    .local v13, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 553
    const/16 v21, 0x0

    .line 554
    .local v21, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v21, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 553
    .end local v21    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p4, v1

    .end local v1    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v21

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v14}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 552
    move/from16 p5, v13

    .end local v13    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local p5, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v13, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v13, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 551
    .end local p5    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v1, v13

    .line 555
    .local v1, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v13, p1

    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 556
    nop

    .end local v1    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_2a

    .line 557
    .end local v13    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_3d
    move-object/from16 v13, p1

    move-object/from16 p4, v1

    .line 550
    .end local v1    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_2a
    nop

    .line 549
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 548
    .end local v13    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local p2    # "invalid$iv$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 547
    .end local v17    # "$changed$iv$iv":I
    .end local v18    # "$i$f$remember":I
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 558
    .local v1, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 282
    .end local v1    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v14    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$changed$iv":I
    .end local v16    # "$i$f$rememberCoroutineScope":I
    move-object v1, v13

    .line 283
    .local v1, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    const/16 v13, 0x8

    .local v13, "$changed$iv":I
    const/4 v14, 0x0

    .local v14, "$i$f$remember":I
    const v15, 0x44faf204

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v12, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 559
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .local v15, "invalid$iv$iv":Z
    move-object/from16 p1, v12

    .local p1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 560
    .local v16, "$i$f$cache":I
    move/from16 p2, v13

    .end local v13    # "$changed$iv":I
    .local p2, "$changed$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 561
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v15, :cond_3f

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v14

    .end local v14    # "$i$f$remember":I
    .local p4, "$i$f$remember":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_3e

    goto :goto_2b

    .line 565
    :cond_3e
    move-object/from16 v14, p1

    move-object/from16 p5, v13

    goto :goto_2c

    .line 561
    .end local p4    # "$i$f$remember":I
    .restart local v14    # "$i$f$remember":I
    :cond_3f
    move/from16 p4, v14

    .line 562
    .end local v14    # "$i$f$remember":I
    .restart local p4    # "$i$f$remember":I
    :goto_2b
    const/4 v14, 0x0

    .line 284
    .local v14, "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$secureTextFieldController$1":I
    move-object/from16 p5, v13

    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    new-instance v13, Landroidx/compose/foundation/text2/SecureTextFieldController;

    invoke-direct {v13, v1}, Landroidx/compose/foundation/text2/SecureTextFieldController;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 562
    .end local v14    # "$i$a$-remember-BasicSecureTextFieldKt$BasicSecureTextField$secureTextFieldController$1":I
    nop

    .line 563
    .local v13, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v14, p1

    .end local p1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 564
    nop

    .line 561
    .end local v13    # "value$iv$iv":Ljava/lang/Object;
    :goto_2c
    nop

    .line 560
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 559
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv$iv":Z
    .end local v16    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 283
    .end local p2    # "$changed$iv":I
    .end local p4    # "$i$f$remember":I
    check-cast v13, Landroidx/compose/foundation/text2/SecureTextFieldController;

    .line 290
    .local v13, "secureTextFieldController":Landroidx/compose/foundation/text2/SecureTextFieldController;
    sget-object v14, Landroidx/compose/foundation/text2/input/TextObfuscationMode;->Companion:Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;

    invoke-virtual {v14}, Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;->getRevealLastTyped-pyid5Pk()I

    move-result v14

    invoke-static {v0, v14}, Landroidx/compose/foundation/text2/input/TextObfuscationMode;->equals-impl0(II)Z

    move-result v14

    .line 293
    .local v14, "revealLastTypedEnabled":Z
    if-nez v14, :cond_40

    .line 294
    invoke-virtual {v13}, Landroidx/compose/foundation/text2/SecureTextFieldController;->getPasswordRevealFilter()Landroidx/compose/foundation/text2/PasswordRevealFilter;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->hide()V

    .line 297
    :cond_40
    nop

    .line 298
    if-eqz v14, :cond_41

    .line 299
    invoke-virtual {v13}, Landroidx/compose/foundation/text2/SecureTextFieldController;->getCodepointTransformation()Landroidx/compose/foundation/text2/input/CodepointTransformation;

    move-result-object v15

    move/from16 p1, v0

    move-object/from16 v30, v15

    goto :goto_2d

    .line 302
    :cond_41
    sget-object v15, Landroidx/compose/foundation/text2/input/TextObfuscationMode;->Companion:Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;

    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextObfuscationMode$Companion;->getHidden-pyid5Pk()I

    move-result v15

    invoke-static {v0, v15}, Landroidx/compose/foundation/text2/input/TextObfuscationMode;->equals-impl0(II)Z

    move-result v15

    if-eqz v15, :cond_42

    .line 303
    sget-object v15, Landroidx/compose/foundation/text2/input/CodepointTransformation;->Companion:Landroidx/compose/foundation/text2/input/CodepointTransformation$Companion;

    move/from16 p1, v0

    .end local v0    # "textObfuscationMode":I
    .local p1, "textObfuscationMode":I
    const/16 v0, 0x2022

    invoke-static {v15, v0}, Landroidx/compose/foundation/text2/input/CodepointTransformationKt;->mask(Landroidx/compose/foundation/text2/input/CodepointTransformation$Companion;C)Landroidx/compose/foundation/text2/input/CodepointTransformation;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_2d

    .line 306
    .end local p1    # "textObfuscationMode":I
    .restart local v0    # "textObfuscationMode":I
    :cond_42
    move/from16 p1, v0

    .end local v0    # "textObfuscationMode":I
    .restart local p1    # "textObfuscationMode":I
    const/16 v30, 0x0

    .line 297
    :goto_2d
    nop

    .line 309
    .local v30, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    nop

    .line 310
    sget-object v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$secureTextFieldModifier$1;->INSTANCE:Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$secureTextFieldModifier$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x1

    invoke-static {v3, v15, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 316
    if-eqz v14, :cond_43

    .line 317
    invoke-virtual {v13}, Landroidx/compose/foundation/text2/SecureTextFieldController;->getFocusChangeModifier()Landroidx/compose/ui/Modifier;

    move-result-object v15

    goto :goto_2e

    .line 319
    :cond_43
    sget-object v15, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v15, Landroidx/compose/ui/Modifier;

    .line 315
    :goto_2e
    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 309
    nop

    .line 323
    .local v24, "secureTextFieldModifier":Landroidx/compose/ui/Modifier;
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;

    move-object/from16 v16, v0

    move/from16 v17, v14

    move-object/from16 v18, v5

    move-object/from16 v19, v13

    move/from16 v20, v2

    move/from16 v21, v10

    move-object/from16 v22, v9

    move-object/from16 v23, p0

    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v11

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    invoke-direct/range {v16 .. v32}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;-><init>(ZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/SecureTextFieldController;IILandroidx/compose/foundation/text2/input/ImeActionHandler;Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;)V

    const v15, -0x54589c56

    move-object/from16 p2, v1

    const/4 v1, 0x1

    .end local v1    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local p2, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v12, v15, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x6

    invoke-static {v0, v12, v1}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->DisableCutCopy(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 349
    .end local v13    # "secureTextFieldController":Landroidx/compose/foundation/text2/SecureTextFieldController;
    .end local v14    # "revealLastTypedEnabled":Z
    .end local v24    # "secureTextFieldModifier":Landroidx/compose/ui/Modifier;
    .end local v30    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .end local p2    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :cond_44
    move/from16 v21, p1

    move/from16 v29, p3

    move/from16 v22, v2

    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v28, v11

    .end local v2    # "keyboardType":I
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "enabled":Z
    .end local v5    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v6    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .end local v7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v8    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local v9    # "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .end local v10    # "imeAction":I
    .end local v11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local p1    # "textObfuscationMode":I
    .end local p3    # "$dirty1":I
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    .local v19, "onSubmit":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .local v20, "imeAction":I
    .local v21, "textObfuscationMode":I
    .local v22, "keyboardType":I
    .local v23, "enabled":Z
    .local v24, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v25, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v26, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v27, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v28, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v29, "$dirty1":I
    :goto_2f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_45

    new-instance v30, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;

    move-object/from16 v0, v30

    move/from16 v31, v35

    .end local v35    # "$dirty":I
    .local v31, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v32, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v32, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, v28

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v36, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v30

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_30

    .end local v31    # "$dirty":I
    .end local v32    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v35    # "$dirty":I
    :cond_45
    move-object/from16 v32, v12

    move/from16 v31, v35

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v35    # "$dirty":I
    .restart local v31    # "$dirty":I
    .restart local v32    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_30
    return-void
.end method

.method private static final BasicSecureTextField_TLP4tmw$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 4
    .param p0, "$valueWithSelection$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    .line 169
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 574
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 169
    return-object v0
.end method

.method private static final BasicSecureTextField_TLP4tmw$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 4
    .param p0, "$valueWithSelection$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ")V"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 575
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 576
    nop

    .line 169
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final DisableCutCopy(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p0, "content"    # Lkotlin/jvm/functions/Function2;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 491
    const v0, 0x37710632

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(DisableCutCopy)491@23154L7,492@23192L680,511@23877L434:BasicSecureTextField.kt#g98mwb"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, p2, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v1, 0xb

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 522
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 491
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text2.DisableCutCopy (BasicSecureTextField.kt:490)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 492
    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 566
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p1, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 492
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/platform/TextToolbar;

    .line 493
    .local v0, "currentToolbar":Landroidx/compose/ui/platform/TextToolbar;
    const/16 v2, 0x8

    .restart local v2    # "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$remember":I
    const v4, 0x44faf204

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 567
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv$iv":Z
    move-object v5, p1

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 568
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 569
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_6

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_5

    goto :goto_2

    .line 573
    :cond_5
    move-object v9, v7

    goto :goto_3

    .line 570
    :cond_6
    :goto_2
    const/4 v9, 0x0

    .line 494
    .local v9, "$i$a$-remember-BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1":I
    new-instance v10, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;

    invoke-direct {v10, v0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;-><init>(Landroidx/compose/ui/platform/TextToolbar;)V

    .line 570
    .end local v9    # "$i$a$-remember-BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1":I
    move-object v9, v10

    .line 571
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 572
    nop

    .line 569
    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 568
    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 567
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 493
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$remember":I
    move-object v2, v9

    check-cast v2, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;

    .line 512
    .local v2, "copyDisabledToolbar":Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$1;

    invoke-direct {v4, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v5, -0x67c7668e

    const/4 v6, 0x1

    invoke-static {p1, v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/16 v5, 0x38

    invoke-static {v3, v4, p1, v5}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 522
    .end local v0    # "currentToolbar":Landroidx/compose/ui/platform/TextToolbar;
    .end local v2    # "copyDisabledToolbar":Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1;
    :cond_7
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$2;

    invoke-direct {v2, p0, p2}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$DisableCutCopy$2;-><init>(Lkotlin/jvm/functions/Function2;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method private static final KeyboardActions(Landroidx/compose/foundation/text2/input/ImeActionHandler;)Landroidx/compose/foundation/text/KeyboardActions;
    .locals 8
    .param p0, "onSubmit"    # Landroidx/compose/foundation/text2/input/ImeActionHandler;

    .line 451
    new-instance v7, Landroidx/compose/foundation/text/KeyboardActions;

    .line 452
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$1;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 457
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$2;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 462
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$3;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 467
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$4;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$4;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 472
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$5;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$5;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 477
    new-instance v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$6;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$6;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 451
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 482
    return-object v7
.end method

.method public static final synthetic access$BasicSecureTextField_TLP4tmw$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1
    .param p0, "$valueWithSelection$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField_TLP4tmw$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$BasicSecureTextField_TLP4tmw$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .param p0, "$valueWithSelection$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField_TLP4tmw$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method

.method public static final synthetic access$DisableCutCopy(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "content"    # Lkotlin/jvm/functions/Function2;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->DisableCutCopy(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$KeyboardActions(Landroidx/compose/foundation/text2/input/ImeActionHandler;)Landroidx/compose/foundation/text/KeyboardActions;
    .locals 1
    .param p0, "onSubmit"    # Landroidx/compose/foundation/text2/input/ImeActionHandler;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->KeyboardActions(Landroidx/compose/foundation/text2/input/ImeActionHandler;)Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v0

    return-object v0
.end method
