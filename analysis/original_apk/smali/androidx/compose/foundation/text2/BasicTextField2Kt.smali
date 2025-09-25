.class public final Landroidx/compose/foundation/text2/BasicTextField2Kt;
.super Ljava/lang/Object;
.source "BasicTextField2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTextField2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTextField2.kt\nandroidx/compose/foundation/text2/BasicTextField2Kt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,543:1\n25#2:544\n25#2:551\n25#2:567\n67#2,3:574\n66#2:577\n36#2:585\n36#2:592\n456#2,8:619\n464#2,3:633\n467#2,3:637\n1116#3,6:545\n1116#3,6:552\n1116#3,6:558\n1116#3,6:568\n1116#3,3:578\n1119#3,3:582\n1116#3,6:586\n1116#3,6:593\n1116#3,6:642\n74#4:564\n74#4:565\n74#4:566\n74#4:599\n74#4:600\n74#4:601\n1#5:581\n68#6,6:602\n74#6:636\n78#6:641\n79#7,11:608\n92#7:640\n3737#8,6:627\n81#9:648\n107#9,2:649\n*S KotlinDebug\n*F\n+ 1 BasicTextField2.kt\nandroidx/compose/foundation/text2/BasicTextField2Kt\n*L\n191#1:544\n201#1:551\n342#1:567\n347#1:574,3\n347#1:577\n358#1:585\n360#1:592\n424#1:619,8\n424#1:633,3\n424#1:637,3\n191#1:545,6\n201#1:552,6\n216#1:558,6\n342#1:568,6\n347#1:578,3\n347#1:582,3\n358#1:586,6\n360#1:593,6\n494#1:642,6\n336#1:564\n337#1:565\n338#1:566\n370#1:599\n371#1:600\n372#1:601\n424#1:602,6\n424#1:636\n424#1:641\n424#1:608,11\n424#1:640\n424#1:627,6\n201#1:648\n201#1:649,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u001a\u00d9\u0001\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u001628\u0008\u0002\u0010\u0017\u001a2\u0012\u0004\u0012\u00020\u0019\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0018\u00a2\u0006\u0002\u0008\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0007\u00a2\u0006\u0002\u0010)\u001a\u00ed\u0001\u0010\u0004\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00050-2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u001628\u0008\u0002\u0010\u0017\u001a2\u0012\u0004\u0012\u00020\u0019\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0018\u00a2\u0006\u0002\u0008\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0007\u00a2\u0006\u0002\u0010.\u001a\u0015\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0001\u00a2\u0006\u0002\u00102\u001a\u0015\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0001\u00a2\u0006\u0002\u00102\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u00a8\u00064\u00b2\u0006\n\u00105\u001a\u000206X\u008a\u008e\u0002"
    }
    d2 = {
        "DefaultTextFieldDecorator",
        "Landroidx/compose/foundation/text2/TextFieldDecorator;",
        "getDefaultTextFieldDecorator$annotations",
        "()V",
        "BasicTextField2",
        "",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "readOnly",
        "inputTransformation",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "lineLimits",
        "Landroidx/compose/foundation/text2/input/TextFieldLineLimits;",
        "onTextLayout",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "Lkotlin/ParameterName;",
        "name",
        "getResult",
        "Lkotlin/ExtensionFunctionType;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "codepointTransformation",
        "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
        "decorator",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "value",
        "",
        "onValueChange",
        "Lkotlin/Function1;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "TextFieldCursorHandle",
        "selectionState",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V",
        "TextFieldSelectionHandles",
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
.field private static final DefaultTextFieldDecorator:Landroidx/compose/foundation/text2/TextFieldDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 542
    sget-object v0, Landroidx/compose/foundation/text2/BasicTextField2Kt$DefaultTextFieldDecorator$1;->INSTANCE:Landroidx/compose/foundation/text2/BasicTextField2Kt$DefaultTextFieldDecorator$1;

    check-cast v0, Landroidx/compose/foundation/text2/TextFieldDecorator;

    sput-object v0, Landroidx/compose/foundation/text2/BasicTextField2Kt;->DefaultTextFieldDecorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    return-void
.end method

.method public static final BasicTextField2(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 59
    .param p0, "state"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enabled"    # Z
    .param p3, "readOnly"    # Z
    .param p4, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p5, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p6, "keyboardOptions"    # Landroidx/compose/foundation/text/KeyboardOptions;
    .param p7, "keyboardActions"    # Landroidx/compose/foundation/text/KeyboardActions;
    .param p8, "lineLimits"    # Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .param p9, "onTextLayout"    # Lkotlin/jvm/functions/Function2;
    .param p10, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p11, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p12, "codepointTransformation"    # Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .param p13, "decorator"    # Landroidx/compose/foundation/text2/TextFieldDecorator;
    .param p14, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p15, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p16, "$changed"    # I
    .param p17, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "Landroidx/compose/foundation/text2/input/TextFieldLineLimits;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 335
    move-object/from16 v15, p0

    move/from16 v14, p16

    move/from16 v13, p17

    move/from16 v12, p18

    const v0, 0x1a0fdaba

    move-object/from16 v1, p15

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicTextField2)P(13,9,3,11,4,14,7,6,8,10,5,1)331@19539L21,335@19712L7,336@19767L7,337@19812L7,343@20182L25,346@20295L598,357@21091L48,359@21175L319,369@21547L7,370@21611L7,371@21665L7,372@21677L440,385@22123L125,423@23614L2468:BasicTextField2.kt#g98mwb"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p16

    .local v1, "$dirty":I
    move/from16 v2, p17

    .local v2, "$dirty1":I
    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v14, 0x70

    if-nez v8, :cond_5

    move-object/from16 v8, p1

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v9, v12, 0x4

    const/16 v16, 0x80

    if-eqz v9, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v14, 0x380

    if-nez v4, :cond_8

    move/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v4, p2

    :goto_5
    and-int/lit8 v17, v12, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v14, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    and-int/lit8 v21, v12, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v21, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v6, p4

    goto :goto_9

    :cond_c
    const v24, 0xe000

    and-int v24, v14, v24

    if-nez v24, :cond_e

    move-object/from16 v6, p4

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v23

    goto :goto_8

    :cond_d
    move/from16 v25, v22

    :goto_8
    or-int v1, v1, v25

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v25, v12, 0x20

    if-eqz v25, :cond_f

    const/high16 v26, 0x30000

    or-int v1, v1, v26

    move-object/from16 v7, p5

    goto :goto_b

    :cond_f
    const/high16 v26, 0x70000

    and-int v26, v14, v26

    if-nez v26, :cond_11

    move-object/from16 v7, p5

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p5

    :goto_b
    and-int/lit8 v27, v12, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v1, v1, v28

    move-object/from16 v10, p6

    goto :goto_d

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v14, v28

    if-nez v28, :cond_14

    move-object/from16 v10, p6

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v10, p6

    :goto_d
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v30, 0xc00000

    or-int v1, v1, v30

    move-object/from16 v4, p7

    goto :goto_f

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v14, v30

    if-nez v30, :cond_17

    move-object/from16 v4, p7

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v30, 0x400000

    :goto_e
    or-int v1, v1, v30

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    and-int/lit16 v4, v12, 0x100

    if-eqz v4, :cond_18

    const/high16 v30, 0x6000000

    or-int v1, v1, v30

    move-object/from16 v5, p8

    goto :goto_11

    :cond_18
    const/high16 v30, 0xe000000

    and-int v30, v14, v30

    if-nez v30, :cond_1a

    move-object/from16 v5, p8

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v30, 0x2000000

    :goto_10
    or-int v1, v1, v30

    goto :goto_11

    :cond_1a
    move-object/from16 v5, p8

    :goto_11
    and-int/lit16 v5, v12, 0x200

    if-eqz v5, :cond_1b

    const/high16 v30, 0x30000000

    or-int v1, v1, v30

    move-object/from16 v6, p9

    goto :goto_13

    :cond_1b
    const/high16 v30, 0x70000000

    and-int v30, v14, v30

    if-nez v30, :cond_1d

    move-object/from16 v6, p9

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_12
    or-int v1, v1, v30

    goto :goto_13

    :cond_1d
    move-object/from16 v6, p9

    :goto_13
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v30, v13, 0xe

    if-nez v30, :cond_20

    move-object/from16 v7, p10

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

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
    and-int/lit16 v7, v12, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v8, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v20, v13, 0x70

    if-nez v20, :cond_23

    move-object/from16 v8, p11

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v24, 0x20

    goto :goto_16

    :cond_22
    const/16 v24, 0x10

    :goto_16
    or-int v2, v2, v24

    goto :goto_17

    :cond_23
    move-object/from16 v8, p11

    :goto_17
    and-int/lit16 v8, v12, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v10, p12

    goto :goto_18

    :cond_24
    and-int/lit16 v10, v13, 0x380

    if-nez v10, :cond_26

    move-object/from16 v10, p12

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v16, 0x100

    :cond_25
    or-int v2, v2, v16

    goto :goto_18

    :cond_26
    move-object/from16 v10, p12

    :goto_18
    and-int/lit16 v10, v12, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v15, p13

    goto :goto_1a

    :cond_27
    and-int/lit16 v15, v13, 0x1c00

    if-nez v15, :cond_29

    move-object/from16 v15, p13

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_19

    :cond_28
    move/from16 v18, v19

    :goto_19
    or-int v2, v2, v18

    goto :goto_1a

    :cond_29
    move-object/from16 v15, p13

    :goto_1a
    const v16, 0xe000

    and-int v16, v13, v16

    if-nez v16, :cond_2c

    and-int/lit16 v13, v12, 0x4000

    if-nez v13, :cond_2a

    move-object/from16 v13, p14

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    move/from16 v22, v23

    goto :goto_1b

    :cond_2a
    move-object/from16 v13, p14

    :cond_2b
    :goto_1b
    or-int v2, v2, v22

    goto :goto_1c

    :cond_2c
    move-object/from16 v13, p14

    :goto_1c
    const v16, 0x5b6db6db

    and-int v13, v1, v16

    const v15, 0x12492492

    if-ne v13, v15, :cond_2e

    const v13, 0xb6db

    and-int/2addr v13, v2

    const/16 v15, 0x2492

    if-ne v13, v15, :cond_2e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_2d

    goto :goto_1d

    .line 485
    :cond_2d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v22, p1

    move/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v24, p5

    move-object/from16 v25, p6

    move-object/from16 v26, p7

    move-object/from16 v27, p8

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v30, p11

    move-object/from16 v47, p12

    move-object/from16 v31, p13

    move-object/from16 v32, p14

    move/from16 v23, v1

    move/from16 v46, v2

    goto/16 :goto_3f

    .line 335
    :cond_2e
    :goto_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v13, v14, 0x1

    if-eqz v13, :cond_31

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_2f

    goto :goto_1e

    .line 332
    :cond_2f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v12, 0x4000

    if-eqz v0, :cond_30

    const v0, -0xe001

    and-int/2addr v2, v0

    :cond_30
    move-object/from16 v0, p1

    move/from16 v9, p2

    move/from16 v13, p3

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v10, p13

    move-object/from16 v15, p14

    move v12, v2

    move-object/from16 v2, p4

    goto/16 :goto_2c

    .line 335
    :cond_31
    :goto_1e
    if-eqz v3, :cond_32

    .line 319
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1f

    .line 335
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_32
    move-object/from16 v3, p1

    .line 319
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1f
    if-eqz v9, :cond_33

    .line 320
    const/4 v9, 0x1

    .end local p2    # "enabled":Z
    .local v9, "enabled":Z
    goto :goto_20

    .line 319
    .end local v9    # "enabled":Z
    .restart local p2    # "enabled":Z
    :cond_33
    move/from16 v9, p2

    .line 320
    .end local p2    # "enabled":Z
    .restart local v9    # "enabled":Z
    :goto_20
    if-eqz v17, :cond_34

    .line 321
    const/4 v13, 0x0

    .end local p3    # "readOnly":Z
    .local v13, "readOnly":Z
    goto :goto_21

    .line 320
    .end local v13    # "readOnly":Z
    .restart local p3    # "readOnly":Z
    :cond_34
    move/from16 v13, p3

    .line 321
    .end local p3    # "readOnly":Z
    .restart local v13    # "readOnly":Z
    :goto_21
    if-eqz v21, :cond_35

    .line 322
    const/16 v16, 0x0

    .end local p4    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v16, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    goto :goto_22

    .line 321
    .end local v16    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local p4    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :cond_35
    move-object/from16 v16, p4

    .line 322
    .end local p4    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local v16    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :goto_22
    if-eqz v25, :cond_36

    .line 323
    sget-object v17, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v17

    .end local p5    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v17, "textStyle":Landroidx/compose/ui/text/TextStyle;
    goto :goto_23

    .line 322
    .end local v17    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local p5    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :cond_36
    move-object/from16 v17, p5

    .line 323
    .end local p5    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local v17    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :goto_23
    if-eqz v27, :cond_37

    .line 324
    sget-object v18, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v18

    .end local p6    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .local v18, "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    goto :goto_24

    .line 323
    .end local v18    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .restart local p6    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    :cond_37
    move-object/from16 v18, p6

    .line 324
    .end local p6    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .restart local v18    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    :goto_24
    if-eqz v0, :cond_38

    .line 325
    sget-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v0

    .end local p7    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v0, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    goto :goto_25

    .line 324
    .end local v0    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local p7    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    :cond_38
    move-object/from16 v0, p7

    .line 325
    .end local p7    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local v0    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    :goto_25
    if-eqz v4, :cond_39

    .line 326
    sget-object v4, Landroidx/compose/foundation/text2/input/TextFieldLineLimits;->Companion:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;->getDefault()Landroidx/compose/foundation/text2/input/TextFieldLineLimits;

    move-result-object v4

    .end local p8    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v4, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    goto :goto_26

    .line 325
    .end local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local p8    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    :cond_39
    move-object/from16 v4, p8

    .line 326
    .end local p8    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    :goto_26
    if-eqz v5, :cond_3a

    .line 327
    const/4 v5, 0x0

    .end local p9    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v5, "onTextLayout":Lkotlin/jvm/functions/Function2;
    goto :goto_27

    .line 326
    .end local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :cond_3a
    move-object/from16 v5, p9

    .line 327
    .end local p9    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :goto_27
    if-eqz v6, :cond_3b

    .line 328
    const/4 v6, 0x0

    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v6, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_28

    .line 327
    .end local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_3b
    move-object/from16 v6, p10

    .line 328
    .end local p10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_28
    if-eqz v7, :cond_3c

    .line 329
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local p2, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v15, 0x0

    invoke-direct {v7, v3, v4, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v7

    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    .end local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v3, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_29

    .line 328
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :cond_3c
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    move-object/from16 v3, p11

    .line 329
    .end local p11    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v3, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :goto_29
    if-eqz v8, :cond_3d

    .line 330
    const/4 v4, 0x0

    .end local p12    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v4, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    goto :goto_2a

    .line 329
    .end local v4    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local p12    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    :cond_3d
    move-object/from16 v4, p12

    .line 330
    .end local p12    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local v4    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    :goto_2a
    if-eqz v10, :cond_3e

    .line 331
    const/4 v7, 0x0

    .end local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v7, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    goto :goto_2b

    .line 330
    .end local v7    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :cond_3e
    move-object/from16 v7, p13

    .line 331
    .end local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local v7    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :goto_2b
    and-int/lit16 v8, v12, 0x4000

    if-eqz v8, :cond_3f

    .line 332
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v11, v8, v10}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v15

    .end local p14    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v15, "scrollState":Landroidx/compose/foundation/ScrollState;
    const v8, -0xe001

    and-int/2addr v2, v8

    move v12, v2

    move-object v8, v4

    move-object v10, v7

    move-object/from16 v2, v16

    move-object/from16 v4, p2

    move-object v7, v3

    move-object v3, v0

    move-object/from16 v0, p1

    goto :goto_2c

    .line 331
    .end local v15    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local p14    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_3f
    move-object/from16 v15, p14

    move v12, v2

    move-object v8, v4

    move-object v10, v7

    move-object/from16 v2, v16

    move-object/from16 v4, p2

    move-object v7, v3

    move-object v3, v0

    move-object/from16 v0, p1

    .line 332
    .end local v16    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .end local p14    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v3, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v4, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v7, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v8, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v10, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v12, "$dirty1":I
    .restart local v15    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_40

    .line 335
    const-string/jumbo v14, "androidx.compose.foundation.text2.BasicTextField2 (BasicTextField2.kt:334)"

    move-object/from16 p11, v5

    const v5, 0x1a0fdaba

    .end local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local p11, "onTextLayout":Lkotlin/jvm/functions/Function2;
    invoke-static {v5, v1, v12, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2d

    .line 332
    .end local p11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :cond_40
    move-object/from16 p11, v5

    .line 336
    .end local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :goto_2d
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x0

    .local v14, "$changed$iv":I
    const/16 v16, 0x0

    .line 564
    .local v16, "$i$f$getCurrent":I
    move/from16 p1, v14

    .end local v14    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const v14, 0x789c5f52

    move-object/from16 p12, v7

    .end local v7    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local p12, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v14, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v20

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 336
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    move-object/from16 v5, v20

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 337
    .local v5, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .local v14, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .local v16, "$changed$iv":I
    const/16 v20, 0x0

    .line 565
    .local v20, "$i$f$getCurrent":I
    move-object/from16 p13, v10

    const v10, 0x789c5f52

    .end local v10    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 337
    .end local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v20    # "$i$f$getCurrent":I
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 338
    .local v10, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .restart local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .restart local v16    # "$changed$iv":I
    const/16 v20, 0x0

    .line 566
    .restart local v20    # "$i$f$getCurrent":I
    move-object/from16 p14, v10

    const v10, 0x789c5f52

    .end local v10    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local p14, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 338
    .end local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v20    # "$i$f$getCurrent":I
    check-cast v10, Landroidx/compose/ui/platform/WindowInfo;

    .line 339
    .local v10, "windowInfo":Landroidx/compose/ui/platform/WindowInfo;
    sget-object v14, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$SingleLine;

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 342
    .local v14, "singleLine":Z
    move-object/from16 v16, v4

    .end local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v16, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    const v4, -0x39145394

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "341@20017L39"

    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v6, :cond_42

    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/16 v20, 0x0

    move/from16 p1, v4

    .end local v4    # "$changed$iv":I
    .local v20, "$i$f$remember":I
    .restart local p1    # "$changed$iv":I
    const v4, -0x1d58f75c

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 567
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    move-object/from16 p2, v11

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 568
    .local v21, "$i$f$cache":I
    move/from16 p3, v4

    .end local v4    # "invalid$iv$iv":Z
    .local p3, "invalid$iv$iv":Z
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 569
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v24, v6

    .end local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v24, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_41

    .line 570
    const/4 v6, 0x0

    .line 342
    .local v6, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$interactionSource$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v6

    .line 570
    .end local v6    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$interactionSource$1":I
    nop

    .line 571
    .local v6, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p4, v4

    move-object/from16 v4, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 572
    nop

    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2e

    .line 573
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    .local v4, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_41
    move-object/from16 p4, v4

    move-object/from16 v4, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p4    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v6, p4

    .line 569
    :goto_2e
    nop

    .line 568
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 567
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$f$cache":I
    .end local p3    # "invalid$iv$iv":Z
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v20    # "$i$f$remember":I
    .end local p1    # "$changed$iv":I
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_2f

    .line 342
    .end local v24    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v6, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_42
    move-object/from16 v24, v6

    .end local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v24    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_2f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v4, v6

    .line 343
    .local v4, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    if-eqz v14, :cond_43

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_30

    :cond_43
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 344
    .local v6, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    :goto_30
    move-object/from16 v20, v6

    .end local v6    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v20, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 v21, v15

    const/4 v15, 0x0

    .end local v15    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v21, "scrollState":Landroidx/compose/foundation/ScrollState;
    invoke-static {v6, v11, v15}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 345
    .local v6, "isFocused":Z
    invoke-interface {v10}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v15

    .local v15, "isWindowFocused":Z
    and-int/lit8 v22, v1, 0xe

    shr-int/lit8 v23, v1, 0x9

    and-int/lit8 v23, v23, 0x70

    or-int v22, v22, v23

    move/from16 v23, v1

    .end local v1    # "$dirty":I
    .local v23, "$dirty":I
    and-int/lit16 v1, v12, 0x380

    or-int v1, v22, v1

    .line 347
    nop

    .local v1, "$changed$iv":I
    const/16 v22, 0x0

    move/from16 p1, v1

    .end local v1    # "$changed$iv":I
    .local v22, "$i$f$remember":I
    .restart local p1    # "$changed$iv":I
    const v1, 0x607fb4c4

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 574
    move-object/from16 v1, p0

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    .line 575
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    .line 574
    or-int v25, v25, v26

    .line 576
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    .line 574
    or-int v25, v25, v26

    .line 577
    nop

    .local v25, "invalid$iv$iv":Z
    move-object/from16 p2, v11

    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 578
    .local v26, "$i$f$cache":I
    move-object/from16 v45, v10

    .end local v10    # "windowInfo":Landroidx/compose/ui/platform/WindowInfo;
    .local v45, "windowInfo":Landroidx/compose/ui/platform/WindowInfo;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 579
    .local v27, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v25, :cond_45

    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v46, v12

    .end local v12    # "$dirty1":I
    .local v46, "$dirty1":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_44

    goto :goto_31

    .line 584
    :cond_44
    move-object/from16 v47, v8

    move-object/from16 p4, v10

    move-object/from16 v8, p4

    move-object/from16 v10, p2

    goto :goto_34

    .line 579
    .end local v46    # "$dirty1":I
    .restart local v12    # "$dirty1":I
    :cond_45
    move/from16 v46, v12

    .line 580
    .end local v12    # "$dirty1":I
    .restart local v46    # "$dirty1":I
    :goto_31
    const/4 v12, 0x0

    .line 351
    .local v12, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$transformedState$1":I
    if-nez v8, :cond_47

    .line 352
    sget-object v28, Landroidx/compose/foundation/text2/input/SingleLineCodepointTransformation;->INSTANCE:Landroidx/compose/foundation/text2/input/SingleLineCodepointTransformation;

    move-object/from16 v29, v28

    .line 581
    .local v29, "it":Landroidx/compose/foundation/text2/input/SingleLineCodepointTransformation;
    const/16 v30, 0x0

    .line 352
    .local v30, "$i$a$-takeIf-BasicTextField2Kt$BasicTextField2$transformedState$1$appliedCodepointTransformation$1":I
    nop

    .end local v29    # "it":Landroidx/compose/foundation/text2/input/SingleLineCodepointTransformation;
    .end local v30    # "$i$a$-takeIf-BasicTextField2Kt$BasicTextField2$transformedState$1$appliedCodepointTransformation$1":I
    if-eqz v14, :cond_46

    goto :goto_32

    :cond_46
    const/16 v28, 0x0

    :goto_32
    check-cast v28, Landroidx/compose/foundation/text2/input/CodepointTransformation;

    goto :goto_33

    .line 351
    :cond_47
    move-object/from16 v28, v8

    :goto_33
    move-object/from16 p3, v28

    .line 353
    .local p3, "appliedCodepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    move-object/from16 v47, v8

    .end local v8    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v47, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    new-instance v8, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-object/from16 p4, v10

    move-object/from16 v10, p3

    .end local p3    # "appliedCodepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v10, "appliedCodepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local p4    # "it$iv$iv":Ljava/lang/Object;
    invoke-direct {v8, v1, v2, v10}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V

    .line 580
    .end local v10    # "appliedCodepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .end local v12    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$transformedState$1":I
    nop

    .line 582
    .local v8, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v10, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 583
    nop

    .line 579
    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    :goto_34
    nop

    .line 578
    .end local v27    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 577
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "invalid$iv$iv":Z
    .end local v26    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 347
    .end local v22    # "$i$f$remember":I
    .end local p1    # "$changed$iv":I
    check-cast v8, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 358
    .local v8, "transformedState":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    const/4 v10, 0x0

    move v12, v10

    .local v12, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v1, 0x44faf204

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 585
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid$iv$iv":Z
    move-object/from16 p1, v11

    .local p1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 586
    .local v22, "$i$f$cache":I
    move/from16 p2, v10

    .end local v10    # "$i$f$remember":I
    .local p2, "$i$f$remember":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 587
    .local v25, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v1, :cond_49

    sget-object v26, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v1

    .end local v1    # "invalid$iv$iv":Z
    .local p3, "invalid$iv$iv":Z
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v10, v1, :cond_48

    goto :goto_35

    .line 591
    :cond_48
    move-object/from16 p4, v10

    move-object/from16 v1, p4

    move-object/from16 v10, p1

    goto :goto_36

    .line 587
    .end local p3    # "invalid$iv$iv":Z
    .restart local v1    # "invalid$iv$iv":Z
    :cond_49
    move/from16 p3, v1

    .line 588
    .end local v1    # "invalid$iv$iv":Z
    .restart local p3    # "invalid$iv$iv":Z
    :goto_35
    const/4 v1, 0x0

    .line 358
    .local v1, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$textLayoutState$1":I
    new-instance v26, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-direct/range {v26 .. v26}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;-><init>()V

    .line 588
    .end local v1    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$textLayoutState$1":I
    move-object/from16 v1, v26

    .line 589
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p4, v10

    move-object/from16 v10, p1

    .end local p1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p4    # "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 590
    nop

    .line 587
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_36
    nop

    .line 586
    .end local v25    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 585
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$f$cache":I
    .end local p3    # "invalid$iv$iv":Z
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 358
    .end local v12    # "$changed$iv":I
    .end local p2    # "$i$f$remember":I
    check-cast v1, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 360
    .local v1, "textLayoutState":Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    const/4 v10, 0x0

    move v12, v10

    .restart local v12    # "$changed$iv":I
    const/4 v10, 0x0

    move/from16 p9, v10

    .local p9, "$i$f$remember":I
    const v10, 0x44faf204

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 592
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "invalid$iv$iv":Z
    move-object/from16 p10, v11

    .local p10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 593
    .restart local v22    # "$i$f$cache":I
    move/from16 v25, v12

    .end local v12    # "$changed$iv":I
    .local v25, "$changed$iv":I
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 594
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v10, :cond_4b

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v10

    .end local v10    # "invalid$iv$iv":Z
    .local v28, "invalid$iv$iv":Z
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v12, v10, :cond_4a

    goto :goto_37

    .line 598
    :cond_4a
    move-object/from16 p1, v12

    move-object/from16 v10, p1

    move-object/from16 v12, p10

    goto :goto_39

    .line 594
    .end local v28    # "invalid$iv$iv":Z
    .restart local v10    # "invalid$iv$iv":Z
    :cond_4b
    move/from16 v28, v10

    .line 595
    .end local v10    # "invalid$iv$iv":Z
    .restart local v28    # "invalid$iv$iv":Z
    :goto_37
    const/4 v10, 0x0

    .line 361
    .local v10, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$textFieldSelectionState$1":I
    new-instance v27, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 362
    nop

    .line 363
    nop

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    if-eqz v6, :cond_4c

    if-eqz v15, :cond_4c

    const/16 v29, 0x1

    goto :goto_38

    :cond_4c
    const/16 v29, 0x0

    .line 361
    :goto_38
    move-object/from16 p1, v27

    move-object/from16 p2, v8

    move-object/from16 p3, v1

    move-object/from16 p4, v5

    move/from16 p5, v9

    move/from16 p6, v13

    move/from16 p7, v29

    invoke-direct/range {p1 .. p7}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZ)V

    .line 595
    .end local v10    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$textFieldSelectionState$1":I
    move-object/from16 v10, v27

    .line 596
    .local v10, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p1, v12

    move-object/from16 v12, p10

    .end local p10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p1, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 597
    nop

    .line 594
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :goto_39
    nop

    .line 593
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p1    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 592
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$f$cache":I
    .end local v28    # "invalid$iv$iv":Z
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 360
    .end local v25    # "$changed$iv":I
    .end local p9    # "$i$f$remember":I
    check-cast v10, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 370
    .local v10, "textFieldSelectionState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .local v12, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v22, 0x0

    .local v22, "$changed$iv":I
    const/16 v25, 0x0

    .line 599
    .local v25, "$i$f$getCurrent":I
    move/from16 v48, v15

    const v15, 0x789c5f52

    .end local v15    # "isWindowFocused":Z
    .local v48, "isWindowFocused":Z
    invoke-static {v11, v15, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 370
    .end local v12    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v22    # "$changed$iv":I
    .end local v25    # "$i$f$getCurrent":I
    move-object v12, v15

    check-cast v12, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 371
    .local v12, "currentHapticFeedback":Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/CompositionLocal;

    .local v15, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v22, 0x0

    .restart local v22    # "$changed$iv":I
    const/16 v25, 0x0

    .line 600
    .restart local v25    # "$i$f$getCurrent":I
    move/from16 v49, v6

    const v6, 0x789c5f52

    .end local v6    # "isFocused":Z
    .local v49, "isFocused":Z
    invoke-static {v11, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 371
    .end local v15    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v22    # "$changed$iv":I
    .end local v25    # "$i$f$getCurrent":I
    check-cast v6, Landroidx/compose/ui/platform/ClipboardManager;

    .line 372
    .local v6, "currentClipboardManager":Landroidx/compose/ui/platform/ClipboardManager;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/CompositionLocal;

    .restart local v15    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v22, 0x0

    .restart local v22    # "$changed$iv":I
    const/16 v25, 0x0

    .line 601
    .restart local v25    # "$i$f$getCurrent":I
    move-object/from16 v50, v4

    const v4, 0x789c5f52

    .end local v4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v50, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 372
    .end local v15    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v22    # "$changed$iv":I
    .end local v25    # "$i$f$getCurrent":I
    check-cast v4, Landroidx/compose/ui/platform/TextToolbar;

    .line 373
    .local v4, "currentTextToolbar":Landroidx/compose/ui/platform/TextToolbar;
    new-instance v7, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$3;

    move-object/from16 p1, v7

    move-object/from16 p2, v10

    move-object/from16 p3, v12

    move-object/from16 p4, v6

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v9

    move/from16 p8, v13

    invoke-direct/range {p1 .. p8}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/ui/platform/ClipboardManager;Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/unit/Density;ZZ)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    invoke-static {v7, v11, v15}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 386
    new-instance v7, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$4;

    invoke-direct {v7, v10}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$4;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v15, 0x8

    invoke-static {v10, v7, v11, v15}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 392
    nop

    .line 395
    new-instance v7, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifier;

    .line 396
    nop

    .line 397
    nop

    .line 398
    nop

    .line 399
    nop

    .line 400
    nop

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 395
    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v1

    move-object/from16 p4, v10

    move-object/from16 p5, v2

    move/from16 p6, v9

    move/from16 p7, v13

    move-object/from16 p8, v18

    move-object/from16 p9, v3

    move/from16 p10, v14

    invoke-direct/range {p1 .. p10}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifier;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/InputTransformation;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Z)V

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 393
    invoke-interface {v0, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 407
    move-object/from16 v15, v50

    .end local v50    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v15, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static {v7, v9, v15}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    .line 409
    move-object/from16 v26, v21

    check-cast v26, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 410
    nop

    .line 413
    if-eqz v9, :cond_4d

    .line 414
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/ScrollState;->getMaxValue()I

    move-result v7

    if-lez v7, :cond_4d

    .line 415
    invoke-virtual {v10}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v7

    if-nez v7, :cond_4d

    const/16 v28, 0x1

    goto :goto_3a

    :cond_4d
    const/16 v28, 0x0

    .line 416
    :goto_3a
    sget-object v7, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 416
    move-object/from16 v22, v0

    move-object/from16 p1, v3

    const/4 v3, 0x0

    move-object/from16 v0, p14

    move-object/from16 v58, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v58

    .end local v3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .end local p14    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v0, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v2, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v20, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v22, "modifier":Landroidx/compose/ui/Modifier;
    .local p1, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    invoke-virtual {v7, v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v29

    .line 408
    const/16 v30, 0x0

    .line 421
    nop

    .line 408
    const/16 v32, 0x10

    const/16 v33, 0x0

    move-object/from16 v27, v2

    move-object/from16 v31, v15

    invoke-static/range {v25 .. v33}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 392
    nop

    .line 424
    .local v3, "decorationModifiers":Landroidx/compose/ui/Modifier;
    const/4 v7, 0x1

    .local v7, "propagateMinConstraints$iv":Z
    const/16 v25, 0x180

    .local v25, "$changed$iv":I
    const/16 v26, 0x0

    .end local v0    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v26, "$i$f$Box":I
    .restart local p14    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const v0, 0x2bb5b5d7

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 602
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    .line 606
    .local v0, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    shr-int/lit8 v27, v25, 0x3

    and-int/lit8 v27, v27, 0xe

    shr-int/lit8 v28, v25, 0x3

    and-int/lit8 v28, v28, 0x70

    move-object/from16 p2, v4

    .end local v4    # "currentTextToolbar":Landroidx/compose/ui/platform/TextToolbar;
    .local p2, "currentTextToolbar":Landroidx/compose/ui/platform/TextToolbar;
    or-int v4, v27, v28

    invoke-static {v0, v7, v11, v4}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v27, v25, 0x3

    and-int/lit8 v27, v27, 0x70

    .line 607
    nop

    .local v27, "$changed$iv$iv":I
    const/16 v28, 0x0

    move-object/from16 p3, v0

    .end local v0    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v28, "$i$f$Layout":I
    .local p3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v0, -0x4ee9b9da

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 609
    .local v0, "compositeKeyHash$iv$iv":I
    move-object/from16 p4, v5

    .end local v5    # "density":Landroidx/compose/ui/unit/Density;
    .local p4, "density":Landroidx/compose/ui/unit/Density;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 611
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v29, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v29

    .line 618
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v30

    move-object/from16 p5, v3

    .end local v3    # "decorationModifiers":Landroidx/compose/ui/Modifier;
    .local p5, "decorationModifiers":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v27, 0x9

    and-int/lit16 v3, v3, 0x1c00

    move-object/from16 p6, v6

    .end local v6    # "currentClipboardManager":Landroidx/compose/ui/platform/ClipboardManager;
    .local p6, "currentClipboardManager":Landroidx/compose/ui/platform/ClipboardManager;
    const/4 v6, 0x6

    or-int/2addr v3, v6

    .line 610
    nop

    .local v3, "$changed$iv$iv$iv":I
    move-object/from16 p7, v30

    .local p7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 p8, v29

    .local p8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v29, 0x0

    .line 619
    .local v29, "$i$f$ReusableComposeNode":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_4e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 620
    :cond_4e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 621
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 622
    move-object/from16 v6, p8

    .end local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3b

    .line 624
    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4f
    move-object/from16 v6, p8

    .end local p8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 626
    :goto_3b
    move-object/from16 v50, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v50, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 613
    .local v30, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v31, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p8, v7

    .end local v7    # "propagateMinConstraints$iv":Z
    .local p8, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 614
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 616
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .local v7, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v31, 0x0

    .line 627
    .local v31, "$i$f$set-impl":I
    move-object/from16 p10, v6

    .local p10, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 628
    .local v32, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v33

    if-nez v33, :cond_51

    move-object/from16 p15, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local p15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v51, v5

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_3c

    :cond_50
    move-object/from16 v5, p10

    goto :goto_3d

    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_51
    move-object/from16 p15, v4

    move-object/from16 v51, v5

    .line 629
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local p15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_3c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p10

    .end local p10    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 630
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 632
    :goto_3d
    nop

    .line 627
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 632
    nop

    .line 617
    .end local v7    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v31    # "$i$f$set-impl":I
    nop

    .line 626
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v30    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 633
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p7

    .end local p7    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6, v4, v11, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const v4, 0x7ab4aae9

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 635
    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v5, v11

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 636
    .local v7, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 p7, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local p7, "compositeKeyHash$iv$iv":I
    const v0, -0x4ab8dd4f

    move/from16 p10, v3

    .end local v3    # "$changed$iv$iv$iv":I
    .local p10, "$changed$iv$iv$iv":I
    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v3, v25, 0x6

    and-int/lit8 v3, v3, 0x70

    const/16 v30, 0x6

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$BasicTextField2_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v52, v5

    .local v52, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v53, 0x0

    .line 425
    .local v53, "$i$a$-Box-BasicTextField2Kt$BasicTextField2$5":I
    move-object/from16 v54, v0

    .end local v0    # "$this$BasicTextField2_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    .local v54, "$this$BasicTextField2_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x1cb7c4f2

    move/from16 v55, v3

    .end local v3    # "$changed":I
    .local v55, "$changed":I
    const-string v3, "C425@23768L2308:BasicTextField2.kt#g98mwb"

    move/from16 v56, v4

    move-object/from16 v4, v52

    .end local v52    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v56, "$changed$iv":I
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-nez p13, :cond_52

    sget-object v0, Landroidx/compose/foundation/text2/BasicTextField2Kt;->DefaultTextFieldDecorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    goto :goto_3e

    :cond_52
    move-object/from16 v0, p13

    .line 426
    .local v0, "nonNullDecorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :goto_3e
    new-instance v3, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$5$1;

    move-object/from16 v30, v3

    move-object/from16 v31, v16

    move-object/from16 v32, v1

    move-object/from16 v33, v17

    move/from16 v34, v49

    move/from16 v35, v48

    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v38, p12

    move/from16 v39, v9

    move/from16 v40, v13

    move-object/from16 v41, v21

    move-object/from16 v42, v2

    move/from16 v43, v14

    move-object/from16 v44, p11

    invoke-direct/range {v30 .. v44}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$5$1;-><init>(Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/text/TextStyle;ZZLandroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;ZLkotlin/jvm/functions/Function2;)V

    move-object/from16 v30, v1

    .end local v1    # "textLayoutState":Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .local v30, "textLayoutState":Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    const v1, 0x57fd8a17

    move-object/from16 v31, v2

    const/4 v2, 0x1

    .end local v2    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v31, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v4, v2}, Landroidx/compose/foundation/text2/TextFieldDecorator;->Decoration(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 425
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 484
    .end local v0    # "nonNullDecorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    nop

    .line 636
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v53    # "$i$a$-Box-BasicTextField2Kt$BasicTextField2$5":I
    .end local v54    # "$this$BasicTextField2_u24lambda_u2410":Landroidx/compose/foundation/layout/BoxScope;
    .end local v55    # "$changed":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 635
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v56    # "$changed$iv":I
    nop

    .line 637
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 638
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 639
    nop

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v29    # "$i$f$ReusableComposeNode":I
    .end local v50    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local p10    # "$changed$iv$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 640
    nop

    .end local v27    # "$changed$iv$iv":I
    .end local v28    # "$i$f$Layout":I
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p7    # "compositeKeyHash$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 641
    nop

    .end local v25    # "$changed$iv":I
    .end local v26    # "$i$f$Box":I
    .end local p3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local p8    # "propagateMinConstraints$iv":Z
    .end local p15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 485
    .end local v8    # "transformedState":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .end local v10    # "textFieldSelectionState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local v12    # "currentHapticFeedback":Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .end local v14    # "singleLine":Z
    .end local v15    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v30    # "textLayoutState":Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .end local v31    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .end local v45    # "windowInfo":Landroidx/compose/ui/platform/WindowInfo;
    .end local v48    # "isWindowFocused":Z
    .end local v49    # "isFocused":Z
    .end local p2    # "currentTextToolbar":Landroidx/compose/ui/platform/TextToolbar;
    .end local p4    # "density":Landroidx/compose/ui/unit/Density;
    .end local p5    # "decorationModifiers":Landroidx/compose/ui/Modifier;
    .end local p6    # "currentClipboardManager":Landroidx/compose/ui/platform/ClipboardManager;
    .end local p14    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    :cond_53
    move-object/from16 v26, p1

    move-object/from16 v28, p11

    move-object/from16 v30, p12

    move-object/from16 v31, p13

    move/from16 v19, v9

    move-object/from16 v27, v16

    move-object/from16 v25, v18

    move-object/from16 v32, v21

    move-object/from16 v29, v24

    move-object/from16 v24, v17

    move-object/from16 v21, v20

    move/from16 v20, v13

    .end local v9    # "enabled":Z
    .end local v13    # "readOnly":Z
    .end local v16    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .end local v17    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .end local v18    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .end local p1    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .end local p11    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local p12    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local p13    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v19, "enabled":Z
    .local v20, "readOnly":Z
    .local v21, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v24, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v25, "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .local v26, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v27, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v28, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v29, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v30, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v31, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v32, "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_3f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_54

    new-instance v33, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v34, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v34, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v13, v47

    move-object/from16 v14, v31

    move-object/from16 v57, v15

    move-object/from16 v15, v32

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$6;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v33

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v57

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_40

    .end local v34    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_54
    move-object/from16 v34, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v34    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_40
    return-void
.end method

.method public static final BasicTextField2(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 39
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "readOnly"    # Z
    .param p5, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p6, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p7, "keyboardOptions"    # Landroidx/compose/foundation/text/KeyboardOptions;
    .param p8, "keyboardActions"    # Landroidx/compose/foundation/text/KeyboardActions;
    .param p9, "lineLimits"    # Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .param p10, "onTextLayout"    # Lkotlin/jvm/functions/Function2;
    .param p11, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p12, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p13, "codepointTransformation"    # Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .param p14, "decorator"    # Landroidx/compose/foundation/text2/TextFieldDecorator;
    .param p15, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p16, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p17, "$changed"    # I
    .param p18, "$changed1"    # I
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
            "ZZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "Landroidx/compose/foundation/text2/input/TextFieldLineLimits;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 190
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const v0, -0x2f82a4ec

    move-object/from16 v1, p16

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(BasicTextField2)P(15,11,9,3,12,4,14,7,6,8,10,5,1)186@11484L21,190@11642L213,200@12048L174,210@12291L1011:BasicTextField2.kt#g98mwb"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p17

    .local v0, "$dirty":I
    move/from16 v1, p18

    .local v1, "$dirty1":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x70

    if-nez v2, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v13, 0x380

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move/from16 v3, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v13, 0x1c00

    if-nez v3, :cond_b

    move/from16 v3, p3

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_6

    :cond_a
    move/from16 v19, v18

    :goto_6
    or-int v0, v0, v19

    goto :goto_7

    :cond_b
    move/from16 v3, p3

    :goto_7
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v5, p4

    goto :goto_9

    :cond_c
    and-int v23, v13, v22

    if-nez v23, :cond_e

    move/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v20

    goto :goto_8

    :cond_d
    move/from16 v24, v21

    :goto_8
    or-int v0, v0, v24

    goto :goto_9

    :cond_e
    move/from16 v5, p4

    :goto_9
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v0, v0, v26

    move-object/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int v26, v13, v25

    if-nez v26, :cond_11

    move-object/from16 v6, p5

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v27, 0x10000

    :goto_a
    or-int v0, v0, v27

    goto :goto_b

    :cond_11
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v27, v11, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v0, v0, v28

    move-object/from16 v7, p6

    goto :goto_d

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v13, v28

    if-nez v28, :cond_14

    move-object/from16 v7, p6

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v29, 0x80000

    :goto_c
    or-int v0, v0, v29

    goto :goto_d

    :cond_14
    move-object/from16 v7, p6

    :goto_d
    and-int/lit16 v8, v11, 0x80

    if-eqz v8, :cond_15

    const/high16 v30, 0xc00000

    or-int v0, v0, v30

    move-object/from16 v4, p7

    goto :goto_f

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v13, v30

    if-nez v30, :cond_17

    move-object/from16 v4, p7

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v31, 0x400000

    :goto_e
    or-int v0, v0, v31

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    and-int/lit16 v3, v11, 0x100

    if-eqz v3, :cond_18

    const/high16 v31, 0x6000000

    or-int v0, v0, v31

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
    or-int v0, v0, v31

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v11, 0x200

    if-eqz v4, :cond_1b

    const/high16 v31, 0x30000000

    or-int v0, v0, v31

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    const/high16 v31, 0x70000000

    and-int v31, v13, v31

    if-nez v31, :cond_1d

    move-object/from16 v5, p9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_12
    or-int v0, v0, v31

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p9

    :goto_13
    and-int/lit16 v5, v11, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v6, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v31, v12, 0xe

    if-nez v31, :cond_20

    move-object/from16 v6, p10

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v31, 0x4

    goto :goto_14

    :cond_1f
    const/16 v31, 0x2

    :goto_14
    or-int v1, v1, v31

    goto :goto_15

    :cond_20
    move-object/from16 v6, p10

    :goto_15
    and-int/lit16 v6, v11, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v7, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v31, v12, 0x70

    if-nez v31, :cond_23

    move-object/from16 v7, p11

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    const/16 v23, 0x20

    goto :goto_16

    :cond_22
    const/16 v23, 0x10

    :goto_16
    or-int v1, v1, v23

    goto :goto_17

    :cond_23
    move-object/from16 v7, p11

    :goto_17
    and-int/lit16 v7, v11, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v9, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v9, v12, 0x380

    if-nez v9, :cond_26

    move-object/from16 v9, p12

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v28, 0x100

    goto :goto_18

    :cond_25
    const/16 v28, 0x80

    :goto_18
    or-int v1, v1, v28

    goto :goto_19

    :cond_26
    move-object/from16 v9, p12

    :goto_19
    and-int/lit16 v9, v11, 0x2000

    if-eqz v9, :cond_27

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v14, p13

    goto :goto_1b

    :cond_27
    and-int/lit16 v14, v12, 0x1c00

    if-nez v14, :cond_29

    move-object/from16 v14, p13

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v17, v18

    :goto_1a
    or-int v1, v1, v17

    goto :goto_1b

    :cond_29
    move-object/from16 v14, p13

    :goto_1b
    and-int/lit16 v14, v11, 0x4000

    if-eqz v14, :cond_2a

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v15, p14

    goto :goto_1d

    :cond_2a
    and-int v17, v12, v22

    if-nez v17, :cond_2c

    move-object/from16 v15, p14

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_1c

    :cond_2b
    move/from16 v20, v21

    :goto_1c
    or-int v1, v1, v20

    goto :goto_1d

    :cond_2c
    move-object/from16 v15, p14

    :goto_1d
    and-int v17, v12, v25

    const v18, 0x8000

    if-nez v17, :cond_2f

    and-int v17, v11, v18

    if-nez v17, :cond_2d

    move-object/from16 v12, p15

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2e

    const/high16 v17, 0x20000

    goto :goto_1e

    :cond_2d
    move-object/from16 v12, p15

    :cond_2e
    const/high16 v17, 0x10000

    :goto_1e
    or-int v1, v1, v17

    goto :goto_1f

    :cond_2f
    move-object/from16 v12, p15

    :goto_1f
    const v17, 0x5b6db6db

    and-int v12, v0, v17

    const v15, 0x12492492

    if-ne v12, v15, :cond_31

    const v12, 0x5b6db

    and-int/2addr v12, v1

    const v15, 0x12492

    if-ne v12, v15, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_30

    goto :goto_20

    .line 239
    :cond_30
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p1

    move-object/from16 v20, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    move-object/from16 v25, p7

    move-object/from16 v26, p8

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    move-object/from16 v29, p11

    move-object/from16 v30, p12

    move-object/from16 v31, p13

    move-object/from16 v35, p14

    move-object/from16 v36, p15

    move/from16 v32, v1

    goto/16 :goto_35

    .line 190
    :cond_31
    :goto_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_34

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_21

    .line 187
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v2, v11, v18

    if-eqz v2, :cond_33

    const v2, -0x70001

    and-int/2addr v1, v2

    :cond_33
    move/from16 v12, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v8, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v35, p14

    move-object/from16 v36, p15

    move v11, v1

    move-object/from16 v1, p2

    goto/16 :goto_2f

    .line 190
    :cond_34
    :goto_21
    if-eqz v2, :cond_35

    .line 174
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_22

    .line 190
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_35
    move-object/from16 v2, p2

    .line 174
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_22
    if-eqz v16, :cond_36

    .line 175
    const/4 v12, 0x1

    .end local p3    # "enabled":Z
    .local v12, "enabled":Z
    goto :goto_23

    .line 174
    .end local v12    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_36
    move/from16 v12, p3

    .line 175
    .end local p3    # "enabled":Z
    .restart local v12    # "enabled":Z
    :goto_23
    if-eqz v19, :cond_37

    .line 176
    const/16 v16, 0x0

    .end local p4    # "readOnly":Z
    .local v16, "readOnly":Z
    goto :goto_24

    .line 175
    .end local v16    # "readOnly":Z
    .restart local p4    # "readOnly":Z
    :cond_37
    move/from16 v16, p4

    .line 176
    .end local p4    # "readOnly":Z
    .restart local v16    # "readOnly":Z
    :goto_24
    if-eqz v24, :cond_38

    .line 177
    const/16 v17, 0x0

    .end local p5    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v17, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    goto :goto_25

    .line 176
    .end local v17    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local p5    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :cond_38
    move-object/from16 v17, p5

    .line 177
    .end local p5    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .restart local v17    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    :goto_25
    if-eqz v27, :cond_39

    .line 178
    sget-object v19, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    .end local p6    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v19, "textStyle":Landroidx/compose/ui/text/TextStyle;
    goto :goto_26

    .line 177
    .end local v19    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local p6    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :cond_39
    move-object/from16 v19, p6

    .line 178
    .end local p6    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local v19    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :goto_26
    if-eqz v8, :cond_3a

    .line 179
    sget-object v8, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v8

    .end local p7    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .local v8, "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    goto :goto_27

    .line 178
    .end local v8    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .restart local p7    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    :cond_3a
    move-object/from16 v8, p7

    .line 179
    .end local p7    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .restart local v8    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    :goto_27
    if-eqz v3, :cond_3b

    .line 180
    sget-object v3, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    .end local p8    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v3, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    goto :goto_28

    .line 179
    .end local v3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local p8    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    :cond_3b
    move-object/from16 v3, p8

    .line 180
    .end local p8    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local v3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    :goto_28
    if-eqz v4, :cond_3c

    .line 181
    sget-object v4, Landroidx/compose/foundation/text2/input/TextFieldLineLimits;->Companion:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$Companion;->getDefault()Landroidx/compose/foundation/text2/input/TextFieldLineLimits;

    move-result-object v4

    .end local p9    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v4, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    goto :goto_29

    .line 180
    .end local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local p9    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    :cond_3c
    move-object/from16 v4, p9

    .line 181
    .end local p9    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .restart local v4    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    :goto_29
    if-eqz v5, :cond_3d

    .line 182
    const/4 v5, 0x0

    .end local p10    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v5, "onTextLayout":Lkotlin/jvm/functions/Function2;
    goto :goto_2a

    .line 181
    .end local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local p10    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :cond_3d
    move-object/from16 v5, p10

    .line 182
    .end local p10    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    :goto_2a
    if-eqz v6, :cond_3e

    .line 183
    const/4 v6, 0x0

    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v6, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_2b

    .line 182
    .end local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_3e
    move-object/from16 v6, p11

    .line 183
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_2b
    if-eqz v7, :cond_3f

    .line 184
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v20, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p3, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    const/4 v15, 0x0

    invoke-direct {v7, v2, v3, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v7

    check-cast v2, Landroidx/compose/ui/graphics/Brush;

    .end local p12    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v2, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_2c

    .line 183
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local p12    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :cond_3f
    move-object/from16 p2, v2

    move-object/from16 p3, v3

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    move-object/from16 v2, p12

    .line 184
    .end local p12    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v2, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :goto_2c
    if-eqz v9, :cond_40

    .line 185
    const/4 v3, 0x0

    .end local p13    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v3, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    goto :goto_2d

    .line 184
    .end local v3    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local p13    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    :cond_40
    move-object/from16 v3, p13

    .line 185
    .end local p13    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local v3    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    :goto_2d
    if-eqz v14, :cond_41

    .line 186
    const/4 v7, 0x0

    .end local p14    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v7, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    goto :goto_2e

    .line 185
    .end local v7    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local p14    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :cond_41
    move-object/from16 v7, p14

    .line 186
    .end local p14    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .restart local v7    # "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    :goto_2e
    and-int v9, v11, v18

    if-eqz v9, :cond_42

    .line 187
    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-static {v14, v10, v14, v9}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    .end local p15    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v9, "scrollState":Landroidx/compose/foundation/ScrollState;
    const v14, -0x70001

    and-int/2addr v1, v14

    move v11, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v35, v7

    move-object/from16 v36, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v1, p2

    move-object v7, v5

    move-object v9, v6

    move-object/from16 v5, p3

    move-object v6, v4

    move-object/from16 v4, v19

    goto :goto_2f

    .line 186
    .end local v9    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local p15    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_42
    move-object/from16 v36, p15

    move v11, v1

    move-object v14, v2

    move-object v15, v3

    move-object v9, v6

    move-object/from16 v35, v7

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v1, p2

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v4, v19

    move-object/from16 v5, p3

    .line 187
    .end local v16    # "readOnly":Z
    .end local v17    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v19    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p3    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .end local p15    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "readOnly":Z
    .local v3, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v4, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v5, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v6, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v9, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v11, "$dirty1":I
    .local v14, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v15, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v35, "decorator":Landroidx/compose/foundation/text2/TextFieldDecorator;
    .local v36, "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_43

    .line 190
    const v13, -0x2f82a4ec

    move-object/from16 p9, v15

    .end local v15    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local p9, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    const-string/jumbo v15, "androidx.compose.foundation.text2.BasicTextField2 (BasicTextField2.kt:189)"

    invoke-static {v13, v0, v11, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_30

    .line 187
    .end local p9    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local v15    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    :cond_43
    move-object/from16 p9, v15

    .line 190
    .end local v15    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .restart local p9    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    :goto_30
    nop

    .line 191
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

    .line 544
    const/4 v13, 0x0

    .local v13, "invalid$iv$iv":Z
    move-object/from16 p3, v10

    .local p3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 545
    .local v16, "$i$f$cache":I
    move/from16 p4, v13

    .end local v13    # "invalid$iv$iv":Z
    .local p4, "invalid$iv$iv":Z
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 546
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v15

    .end local v15    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_44

    .line 547
    const/4 v15, 0x0

    .line 192
    .local v15, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$state$1":I
    move-object/from16 p6, v13

    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .local p6, "it$iv$iv":Ljava/lang/Object;
    new-instance v13, Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 193
    nop

    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 p10, v14

    move/from16 p7, v15

    .end local v14    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local v15    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$state$1":I
    .local p7, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$state$1":I
    .local p10, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v14

    .line 192
    move-object/from16 p12, v7

    move-object/from16 p11, v9

    const/4 v7, 0x0

    move-object/from16 v9, p0

    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local v9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p12, "onTextLayout":Lkotlin/jvm/functions/Function2;
    invoke-direct {v13, v9, v14, v15, v7}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 547
    .end local p7    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$state$1":I
    move-object v7, v13

    .line 548
    .local v7, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v13, p3

    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 549
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_31

    .line 550
    .end local p6    # "it$iv$iv":Ljava/lang/Object;
    .end local p10    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p12    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .restart local v9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v13, "it$iv$iv":Ljava/lang/Object;
    .restart local v14    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_44
    move-object/from16 p12, v7

    move-object/from16 p11, v9

    move-object/from16 p6, v13

    move-object/from16 p10, v14

    move-object/from16 v9, p0

    move-object/from16 v13, p3

    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local v9    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v14    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p6    # "it$iv$iv":Ljava/lang/Object;
    .restart local p10    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p12    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    move-object/from16 v7, p6

    .line 546
    :goto_31
    nop

    .line 545
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p6    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 544
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 191
    .end local p2    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    check-cast v7, Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 201
    .local v7, "state":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v13, 0x0

    move v14, v13

    .local v14, "$changed$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$remember":I
    const v15, -0x1d58f75c

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 551
    const/4 v15, 0x0

    .local v15, "invalid$iv$iv":Z
    move-object/from16 p13, v10

    .local p13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 552
    .restart local v16    # "$i$f$cache":I
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 553
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p14, v13

    .end local v13    # "$i$f$remember":I
    .local p14, "$i$f$remember":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v9, v13, :cond_45

    .line 554
    const/4 v13, 0x0

    .line 203
    .local v13, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$valueWithSelection$2":I
    move-object/from16 p15, v9

    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .local p15, "it$iv$iv":Ljava/lang/Object;
    new-instance v9, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 204
    nop

    .line 205
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v18

    .line 203
    const/16 v21, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 p2, v9

    move-object/from16 p3, p0

    move-wide/from16 p4, v18

    move-object/from16 p6, v21

    move/from16 p7, v23

    move-object/from16 p8, v24

    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    move/from16 p2, v13

    move/from16 p3, v14

    const/4 v13, 0x0

    const/4 v14, 0x2

    .end local v13    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$valueWithSelection$2":I
    .end local v14    # "$changed$iv":I
    .local p2, "$i$a$-remember-BasicTextField2Kt$BasicTextField2$valueWithSelection$2":I
    .local p3, "$changed$iv":I
    invoke-static {v9, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    .line 554
    .end local p2    # "$i$a$-remember-BasicTextField2Kt$BasicTextField2$valueWithSelection$2":I
    nop

    .line 555
    .local v9, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v13, p13

    .end local p13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 556
    nop

    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_32

    .line 557
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "$changed$iv":I
    .end local p15    # "it$iv$iv":Ljava/lang/Object;
    .local v9, "it$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$changed$iv":I
    .restart local p13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_45
    move-object/from16 v13, p13

    move-object/from16 p15, v9

    move/from16 p3, v14

    .line 553
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$changed$iv":I
    .end local p13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p3    # "$changed$iv":I
    .restart local p15    # "it$iv$iv":Ljava/lang/Object;
    :goto_32
    nop

    .line 552
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p15    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 551
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv$iv":Z
    .end local v16    # "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 201
    .end local p3    # "$changed$iv":I
    .end local p14    # "$i$f$remember":I
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 209
    .local v9, "valueWithSelection$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {v9}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

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

    invoke-static {v9, v13}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 213
    nop

    .line 214
    nop

    .line 215
    invoke-static {v9}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v13

    const v14, 0x4ce9f662    # 1.22663696E8f

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v15, p1

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v14, v14, v16

    .line 216
    move-object/from16 p2, v10

    .local v14, "invalid$iv":Z
    .local p2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 558
    .restart local v16    # "$i$f$cache":I
    move-object/from16 p3, v6

    .end local v6    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local p3, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 559
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_47

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v14

    .end local v14    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v6, v14, :cond_46

    goto :goto_33

    .line 563
    :cond_46
    move-object/from16 v14, p2

    move-object/from16 p5, v6

    goto :goto_34

    .line 559
    .end local p4    # "invalid$iv":Z
    .restart local v14    # "invalid$iv":Z
    :cond_47
    move/from16 p4, v14

    .line 560
    .end local v14    # "invalid$iv":Z
    .restart local p4    # "invalid$iv":Z
    :goto_33
    const/4 v14, 0x0

    .line 216
    .local v14, "$i$a$-cache-BasicTextField2Kt$BasicTextField2$1":I
    move-object/from16 p5, v6

    .end local v6    # "it$iv":Ljava/lang/Object;
    .local p5, "it$iv":Ljava/lang/Object;
    new-instance v6, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$1$1;

    invoke-direct {v6, v15, v9}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 560
    .end local v14    # "$i$a$-cache-BasicTextField2Kt$BasicTextField2$1":I
    nop

    .line 561
    .local v6, "value$iv":Ljava/lang/Object;
    move-object/from16 v14, p2

    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 562
    nop

    .line 559
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_34
    nop

    .line 558
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p5    # "it$iv":Ljava/lang/Object;
    nop

    .line 216
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 223
    nop

    .line 213
    const/4 v14, 0x0

    invoke-static {v1, v7, v13, v6, v14}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierKt;->syncTextFieldState(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 212
    nop

    .line 213
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 236
    nop

    .line 237
    nop

    .line 235
    shr-int/lit8 v6, v0, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/lit8 v6, v6, 0x6

    shr-int/lit8 v13, v0, 0x3

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v6, v13

    shr-int/lit8 v13, v0, 0x3

    and-int v13, v13, v22

    or-int/2addr v6, v13

    shr-int/lit8 v13, v0, 0x3

    and-int v13, v13, v25

    or-int/2addr v6, v13

    shr-int/lit8 v13, v0, 0x3

    const/high16 v14, 0x380000

    and-int/2addr v13, v14

    or-int/2addr v6, v13

    shr-int/lit8 v13, v0, 0x3

    const/high16 v14, 0x1c00000

    and-int/2addr v13, v14

    or-int/2addr v6, v13

    shr-int/lit8 v13, v0, 0x3

    const/high16 v14, 0xe000000

    and-int/2addr v13, v14

    or-int/2addr v6, v13

    shl-int/lit8 v13, v11, 0x1b

    const/high16 v14, 0x70000000

    and-int/2addr v13, v14

    or-int v32, v6, v13

    shr-int/lit8 v6, v11, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v13, v11, 0x3

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v6, v13

    shr-int/lit8 v13, v11, 0x3

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v6, v13

    shr-int/lit8 v13, v11, 0x3

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v6, v13

    shr-int/lit8 v13, v11, 0x3

    and-int v13, v13, v22

    or-int v33, v6, v13

    const/16 v34, 0x0

    .line 211
    move-object/from16 v16, v7

    move/from16 v18, v12

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v8

    move-object/from16 v23, v5

    move-object/from16 v24, p3

    move-object/from16 v25, p12

    move-object/from16 v26, p11

    move-object/from16 v27, p10

    move-object/from16 v28, p9

    move-object/from16 v29, v35

    move-object/from16 v30, v36

    move-object/from16 v31, v10

    invoke-static/range {v16 .. v34}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 239
    .end local v7    # "state":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v9    # "valueWithSelection$delegate":Landroidx/compose/runtime/MutableState;
    :cond_48
    move-object/from16 v27, p3

    move-object/from16 v31, p9

    move-object/from16 v30, p10

    move-object/from16 v29, p11

    move-object/from16 v28, p12

    move-object/from16 v20, v1

    move/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v25, v8

    move/from16 v32, v11

    move/from16 v21, v12

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "readOnly":Z
    .end local v3    # "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v4    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .end local v5    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .end local v8    # "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .end local v11    # "$dirty1":I
    .end local v12    # "enabled":Z
    .end local p3    # "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .end local p9    # "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .end local p10    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p12    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "enabled":Z
    .local v22, "readOnly":Z
    .local v23, "inputTransformation":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v24, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v25, "keyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    .local v26, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v27, "lineLimits":Landroidx/compose/foundation/text2/input/TextFieldLineLimits;
    .local v28, "onTextLayout":Lkotlin/jvm/functions/Function2;
    .local v29, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v30, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v31, "codepointTransformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .local v32, "$dirty1":I
    :goto_35
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_49

    new-instance v33, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$2;

    move/from16 v34, v0

    .end local v0    # "$dirty":I
    .local v34, "$dirty":I
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v37, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v37, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object v15, v14

    move-object/from16 v14, v31

    move-object/from16 v38, v15

    move-object/from16 v15, v35

    move-object/from16 v16, v36

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text2/BasicTextField2Kt$BasicTextField2$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v33

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_36

    .end local v34    # "$dirty":I
    .end local v37    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$dirty":I
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_49
    move/from16 v34, v0

    move-object/from16 v37, v10

    .end local v0    # "$dirty":I
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v34    # "$dirty":I
    .restart local v37    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_36
    return-void
.end method

.method private static final BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
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

    .line 201
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 648
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 201
    return-object v0
.end method

.method private static final BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
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

    .line 201
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 649
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 650
    nop

    .line 201
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p0, "selectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 488
    const v0, 0x2e1e8f07

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldCursorHandle)490@26277L629:BasicTextField2.kt#g98mwb"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text2.TextFieldCursorHandle (BasicTextField2.kt:487)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    .line 490
    .local v0, "cursorHandleState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getPosition-F1C5BW0()J

    move-result-wide v1

    .line 493
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 494
    const v4, 0x4cea2cce

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object v5, p1

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 642
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 643
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_2

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_1

    goto :goto_0

    .line 647
    :cond_1
    move-object v9, v7

    goto :goto_1

    .line 644
    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 494
    .local v9, "$i$a$-cache-BasicTextField2Kt$TextFieldCursorHandle$1":I
    new-instance v10, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$1$1;

    invoke-direct {v10, v0}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$1$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 644
    .end local v9    # "$i$a$-cache-BasicTextField2Kt$TextFieldCursorHandle$1":I
    move-object v9, v10

    .line 645
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 646
    nop

    .line 643
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 642
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 494
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v9, v4, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 502
    new-instance v4, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$2;

    invoke-direct {v4, p0, v6}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, p0, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 505
    const/4 v4, 0x0

    const/16 v6, 0x180

    .line 491
    move-object v5, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-ULxng0E(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$3;

    invoke-direct {v2, p0, p2}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldCursorHandle$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 508
    :cond_5
    return-void
.end method

.method public static final TextFieldSelectionHandles(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p0, "selectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 513
    const v0, -0x47348d1a

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldSelectionHandles)528@27633L397:BasicTextField2.kt#g98mwb"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text2.TextFieldSelectionHandles (BasicTextField2.kt:512)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getStartSelectionHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    .local v0, "startHandleState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    const v1, -0x56a351be    # -4.9000958E-14f

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "515@27123L401"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 516
    new-instance v1, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 518
    const/4 v2, 0x1

    .line 519
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    .line 520
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getHandlesCrossed()Z

    move-result v4

    .line 521
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    new-instance v6, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$2;

    invoke-direct {v6, p0, v8}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, p0, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v7, 0x30

    .line 516
    move-object v6, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 527
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getEndSelectionHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v9

    .line 528
    .local v9, "endHandleState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    invoke-virtual {v9}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    new-instance v1, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 531
    const/4 v2, 0x0

    .line 532
    invoke-virtual {v9}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    .line 533
    invoke-virtual {v9}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->getHandlesCrossed()Z

    move-result v4

    .line 534
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    new-instance v6, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$4;

    invoke-direct {v6, p0, v8}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$4;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, p0, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v7, 0x30

    .line 529
    move-object v6, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$5;

    invoke-direct {v2, p0, p2}, Landroidx/compose/foundation/text2/BasicTextField2Kt$TextFieldSelectionHandles$5;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 539
    :cond_4
    return-void
.end method

.method public static final synthetic access$BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1
    .param p0, "$valueWithSelection$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .param p0, "$valueWithSelection$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method

.method private static synthetic getDefaultTextFieldDecorator$annotations()V
    .locals 0

    return-void
.end method
