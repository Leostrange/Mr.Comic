.class public final Landroidx/compose/foundation/text/CoreTextFieldKt;
.super Ljava/lang/Object;
.source "CoreTextField.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 Composer.kt\nandroidx/compose/runtime/Updater\n+ 10 ContextMenu.android.kt\nandroidx/compose/foundation/text/ContextMenu_androidKt\n+ 11 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 12 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 13 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 14 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1195:1\n25#2:1196\n50#2:1216\n49#2:1217\n36#2:1224\n25#2:1231\n25#2:1238\n25#2:1252\n25#2:1263\n456#2,8:1287\n464#2,3:1301\n467#2,3:1307\n36#2:1313\n1116#3,6:1197\n1116#3,6:1210\n1116#3,6:1218\n1116#3,6:1225\n1116#3,6:1232\n1116#3,6:1239\n1116#3,3:1253\n1119#3,3:1259\n1116#3,6:1264\n1116#3,6:1314\n1116#3,6:1321\n74#4:1203\n74#4:1204\n74#4:1205\n74#4:1206\n74#4:1207\n74#4:1208\n74#4:1209\n74#4:1245\n74#4:1246\n74#4:1247\n74#4:1320\n487#5,4:1248\n491#5,2:1256\n495#5:1262\n487#6:1258\n68#7,6:1270\n74#7:1304\n78#7:1311\n79#8,11:1276\n92#8:1310\n3737#9,6:1295\n30#10,2:1305\n1#11:1312\n495#12,4:1327\n500#12:1336\n129#13,5:1331\n81#14:1337\n*S KotlinDebug\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt\n*L\n215#1:1196\n236#1:1216\n236#1:1217\n249#1:1224\n278#1:1231\n281#1:1238\n293#1:1252\n294#1:1263\n748#1:1287,8\n748#1:1301,3\n748#1:1307,3\n1128#1:1313\n215#1:1197,6\n233#1:1210,6\n236#1:1218,6\n249#1:1225,6\n278#1:1232,6\n281#1:1239,6\n293#1:1253,3\n293#1:1259,3\n294#1:1264,6\n1128#1:1314,6\n1145#1:1321,6\n219#1:1203\n220#1:1204\n221#1:1205\n222#1:1206\n223#1:1207\n224#1:1208\n225#1:1209\n287#1:1245\n288#1:1246\n289#1:1247\n1129#1:1320\n293#1:1248,4\n293#1:1256,2\n293#1:1262\n293#1:1258\n748#1:1270,6\n748#1:1304\n748#1:1311\n748#1:1276,11\n748#1:1310\n748#1:1295,6\n749#1:1305,2\n1175#1:1327,4\n1175#1:1336\n1175#1:1331,5\n345#1:1337\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u00ee\u0001\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00030\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000123\u0008\u0002\u0010\u001e\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00030\u001f\u00a2\u0006\u0002\u0008 \u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0002\u0008 H\u0001\u00a2\u0006\u0002\u0010$\u001a0\u0010%\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010&\u001a\u00020\'2\u0011\u0010(\u001a\r\u0012\u0004\u0012\u00020\u00030\u001f\u00a2\u0006\u0002\u0008 H\u0003\u00a2\u0006\u0002\u0010)\u001a\u001d\u0010*\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'2\u0006\u0010+\u001a\u00020\u0001H\u0003\u00a2\u0006\u0002\u0010,\u001a\u0015\u0010-\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H\u0001\u00a2\u0006\u0002\u0010.\u001a\u0010\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u000201H\u0002\u001a\u0010\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u000204H\u0000\u001a \u00105\u001a\u00020\u00032\u0006\u00100\u001a\u0002012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00106\u001a\u000207H\u0002\u001a0\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020:2\u0006\u00100\u001a\u0002012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00106\u001a\u000207H\u0002\u001a \u0010;\u001a\u00020\u00032\u0006\u00100\u001a\u0002012\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0001H\u0002\u001a2\u0010?\u001a\u00020\u0003*\u00020@2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u000f2\u0006\u00106\u001a\u000207H\u0080@\u00a2\u0006\u0002\u0010D\u001a\u001c\u0010E\u001a\u00020\t*\u00020\t2\u0006\u00100\u001a\u0002012\u0006\u0010&\u001a\u00020\'H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006F\u00b2\u0006\n\u0010G\u001a\u00020\u0001X\u008a\u0084\u0002"
    }
    d2 = {
        "USE_WINDOW_FOCUS_ENABLED",
        "",
        "CoreTextField",
        "",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "onTextLayout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "softWrap",
        "maxLines",
        "",
        "minLines",
        "imeOptions",
        "Landroidx/compose/ui/text/input/ImeOptions;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "enabled",
        "readOnly",
        "decorationBox",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ParameterName;",
        "name",
        "innerTextField",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "CoreTextFieldRootBox",
        "manager",
        "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
        "content",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "SelectionToolbarAndHandles",
        "show",
        "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V",
        "TextFieldCursorHandle",
        "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V",
        "endInputSession",
        "state",
        "Landroidx/compose/foundation/text/TextFieldState;",
        "isWindowFocusedBehindFlag",
        "windowInfo",
        "Landroidx/compose/ui/platform/WindowInfo;",
        "notifyFocusedRect",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "startInputSession",
        "textInputService",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "tapToFocus",
        "focusRequester",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "allowKeyboard",
        "bringSelectionEndIntoView",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
        "textDelegate",
        "Landroidx/compose/foundation/text/TextDelegate;",
        "textLayoutResult",
        "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "previewKeyEventToDeselectOnBack",
        "foundation_release",
        "writeable"
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
.field public static final USE_WINDOW_FOCUS_ENABLED:Z = false


# direct methods
.method public static final CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 68
    .param p0, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p1, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p4, "visualTransformation"    # Landroidx/compose/ui/text/input/VisualTransformation;
    .param p5, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p6, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p7, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p8, "softWrap"    # Z
    .param p9, "maxLines"    # I
    .param p10, "minLines"    # I
    .param p11, "imeOptions"    # Landroidx/compose/ui/text/input/ImeOptions;
    .param p12, "keyboardActions"    # Landroidx/compose/foundation/text/KeyboardActions;
    .param p13, "enabled"    # Z
    .param p14, "readOnly"    # Z
    .param p15, "decorationBox"    # Lkotlin/jvm/functions/Function3;
    .param p16, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p17, "$changed"    # I
    .param p18, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "ZII",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZZ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 214
    move-object/from16 v15, p0

    move/from16 v14, p17

    move/from16 v13, p18

    move/from16 v11, p19

    const v0, -0x3924b996

    move-object/from16 v1, p16

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CoreTextField)P(14,10,8,13,15,9,4!1,12,6,7,3,5,2,11)214@11969L29,218@12167L7,219@12206L7,220@12267L7,221@12335L7,222@12400L7,223@12445L7,224@12514L7,229@12730L135,235@12906L268,247@13479L21,248@13517L397,277@14313L26,280@14399L51,286@14702L7,287@14753L7,288@14810L7,292@14921L24,293@14979L37,588@27132L86,592@27224L515,641@29030L4637:CoreTextField.kt#423gt5"

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
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    move-object/from16 v10, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_5

    move-object/from16 v10, p1

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v10, p1

    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v14, 0x380

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v14, 0x1c00

    if-nez v6, :cond_b

    move-object/from16 v6, p3

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v18

    goto :goto_6

    :cond_a
    move/from16 v20, v17

    :goto_6
    or-int v1, v1, v20

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    and-int/lit8 v20, v11, 0x10

    const/16 v21, 0x4000

    const/16 v22, 0x2000

    if-eqz v20, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    const v23, 0xe000

    and-int v23, v14, v23

    if-nez v23, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v21

    goto :goto_8

    :cond_d
    move/from16 v24, v22

    :goto_8
    or-int v1, v1, v24

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    and-int/lit8 v24, v11, 0x20

    if-eqz v24, :cond_f

    const/high16 v25, 0x30000

    or-int v1, v1, v25

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    const/high16 v25, 0x70000

    and-int v25, v14, v25

    if-nez v25, :cond_11

    move-object/from16 v8, p5

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v26, 0x10000

    :goto_a
    or-int v1, v1, v26

    goto :goto_b

    :cond_11
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v26, v11, 0x40

    if-eqz v26, :cond_12

    const/high16 v27, 0x180000

    or-int v1, v1, v27

    move-object/from16 v9, p6

    goto :goto_d

    :cond_12
    const/high16 v27, 0x380000

    and-int v27, v14, v27

    if-nez v27, :cond_14

    move-object/from16 v9, p6

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    const/high16 v28, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v28, 0x80000

    :goto_c
    or-int v1, v1, v28

    goto :goto_d

    :cond_14
    move-object/from16 v9, p6

    :goto_d
    and-int/lit16 v5, v11, 0x80

    if-eqz v5, :cond_15

    const/high16 v29, 0xc00000

    or-int v1, v1, v29

    move-object/from16 v0, p7

    goto :goto_f

    :cond_15
    const/high16 v29, 0x1c00000

    and-int v29, v14, v29

    if-nez v29, :cond_17

    move-object/from16 v0, p7

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v30, 0x6000000

    or-int v1, v1, v30

    move/from16 v4, p8

    goto :goto_11

    :cond_18
    const/high16 v30, 0xe000000

    and-int v30, v14, v30

    if-nez v30, :cond_1a

    move/from16 v4, p8

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v11, 0x200

    if-eqz v4, :cond_1b

    const/high16 v30, 0x30000000

    or-int v1, v1, v30

    move/from16 v6, p9

    goto :goto_13

    :cond_1b
    const/high16 v30, 0x70000000

    and-int v30, v14, v30

    if-nez v30, :cond_1d

    move/from16 v6, p9

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v6, p9

    :goto_13
    and-int/lit16 v6, v11, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v30, v13, 0xe

    if-nez v30, :cond_20

    move/from16 v7, p10

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v30, 0x4

    goto :goto_14

    :cond_1f
    const/16 v30, 0x2

    :goto_14
    or-int v2, v2, v30

    goto :goto_15

    :cond_20
    move/from16 v7, p10

    :goto_15
    and-int/lit8 v30, v13, 0x70

    if-nez v30, :cond_23

    and-int/lit16 v7, v11, 0x800

    if-nez v7, :cond_21

    move-object/from16 v7, p11

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v19, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v7, p11

    :cond_22
    const/16 v19, 0x10

    :goto_16
    or-int v2, v2, v19

    goto :goto_17

    :cond_23
    move-object/from16 v7, p11

    :goto_17
    and-int/lit16 v7, v11, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v8, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v8, v13, 0x380

    if-nez v8, :cond_26

    move-object/from16 v8, p12

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v25, 0x100

    goto :goto_18

    :cond_25
    const/16 v25, 0x80

    :goto_18
    or-int v2, v2, v25

    goto :goto_19

    :cond_26
    move-object/from16 v8, p12

    :goto_19
    and-int/lit16 v8, v11, 0x2000

    if-eqz v8, :cond_27

    or-int/lit16 v2, v2, 0xc00

    move/from16 v9, p13

    goto :goto_1a

    :cond_27
    and-int/lit16 v9, v13, 0x1c00

    if-nez v9, :cond_29

    move/from16 v9, p13

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_28

    move/from16 v17, v18

    :cond_28
    or-int v2, v2, v17

    goto :goto_1a

    :cond_29
    move/from16 v9, p13

    :goto_1a
    and-int/lit16 v9, v11, 0x4000

    if-eqz v9, :cond_2a

    or-int/lit16 v2, v2, 0x6000

    move/from16 v10, p14

    goto :goto_1c

    :cond_2a
    const v17, 0xe000

    and-int v17, v13, v17

    if-nez v17, :cond_2c

    move/from16 v10, p14

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_1b

    :cond_2b
    move/from16 v21, v22

    :goto_1b
    or-int v2, v2, v21

    goto :goto_1c

    :cond_2c
    move/from16 v10, p14

    :goto_1c
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_2d

    const/high16 v18, 0x30000

    or-int v2, v2, v18

    move-object/from16 v10, p15

    goto :goto_1e

    :cond_2d
    const/high16 v18, 0x70000

    and-int v18, v13, v18

    if-nez v18, :cond_2f

    move-object/from16 v10, p15

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    const/high16 v18, 0x20000

    goto :goto_1d

    :cond_2e
    const/high16 v18, 0x10000

    :goto_1d
    or-int v2, v2, v18

    goto :goto_1e

    :cond_2f
    move-object/from16 v10, p15

    :goto_1e
    const v18, 0x5b6db6db

    and-int v10, v1, v18

    const v13, 0x12492492

    if-ne v10, v13, :cond_31

    const v10, 0x5b6db

    and-int/2addr v10, v2

    const v13, 0x12492

    if-ne v10, v13, :cond_31

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_30

    goto :goto_1f

    .line 740
    :cond_30
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v66, p2

    move-object/from16 v20, p3

    move-object/from16 v60, p4

    move-object/from16 v21, p5

    move-object/from16 v53, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v50, p9

    move/from16 v24, p10

    move-object/from16 v51, p11

    move-object/from16 v25, p12

    move/from16 v56, p13

    move/from16 v26, p14

    move-object/from16 v27, p15

    move/from16 v46, v1

    move/from16 v37, v2

    move-object v15, v12

    goto/16 :goto_42

    .line 214
    :cond_31
    :goto_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v14, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_34

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_32

    goto :goto_20

    .line 211
    :cond_32
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x800

    if-eqz v0, :cond_33

    and-int/lit8 v2, v2, -0x71

    :cond_33
    move-object/from16 v15, p2

    move-object/from16 v20, p3

    move-object/from16 v14, p4

    move-object/from16 v21, p5

    move-object/from16 v10, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v9, p9

    move/from16 v24, p10

    move-object/from16 v8, p11

    move-object/from16 v25, p12

    move/from16 v7, p13

    move/from16 v26, p14

    move-object/from16 v27, p15

    move v6, v2

    goto/16 :goto_2e

    .line 214
    :cond_34
    :goto_20
    if-eqz v3, :cond_35

    .line 199
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_21

    .line 214
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_35
    move-object/from16 v3, p2

    .line 199
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_21
    if-eqz v16, :cond_36

    .line 200
    sget-object v10, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v10

    .end local p3    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v10, "textStyle":Landroidx/compose/ui/text/TextStyle;
    goto :goto_22

    .line 199
    .end local v10    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local p3    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :cond_36
    move-object/from16 v10, p3

    .line 200
    .end local p3    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    .restart local v10    # "textStyle":Landroidx/compose/ui/text/TextStyle;
    :goto_22
    if-eqz v20, :cond_37

    .line 201
    sget-object v16, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v16

    .end local p4    # "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    .local v16, "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    goto :goto_23

    .line 200
    .end local v16    # "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    .restart local p4    # "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    :cond_37
    move-object/from16 v16, p4

    .line 201
    .end local p4    # "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    .restart local v16    # "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    :goto_23
    if-eqz v24, :cond_38

    .line 202
    sget-object v18, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;->INSTANCE:Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .end local p5    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v18, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_24

    .line 201
    .end local v18    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_38
    move-object/from16 v18, p5

    .line 202
    .end local p5    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v18    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_24
    if-eqz v26, :cond_39

    .line 203
    const/16 v19, 0x0

    .end local p6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v19, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_25

    .line 202
    .end local v19    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_39
    move-object/from16 v19, p6

    .line 203
    .end local p6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v19    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_25
    if-eqz v5, :cond_3a

    .line 204
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v20, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v14

    invoke-direct {v5, v14, v15, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v5, Landroidx/compose/ui/graphics/Brush;

    .end local p7    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v5, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    goto :goto_26

    .line 203
    .end local v5    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local p7    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :cond_3a
    move-object/from16 v5, p7

    .line 204
    .end local p7    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .restart local v5    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    :goto_26
    if-eqz v0, :cond_3b

    .line 205
    const/4 v0, 0x1

    .end local p8    # "softWrap":Z
    .local v0, "softWrap":Z
    goto :goto_27

    .line 204
    .end local v0    # "softWrap":Z
    .restart local p8    # "softWrap":Z
    :cond_3b
    move/from16 v0, p8

    .line 205
    .end local p8    # "softWrap":Z
    .restart local v0    # "softWrap":Z
    :goto_27
    if-eqz v4, :cond_3c

    .line 206
    const v4, 0x7fffffff

    .end local p9    # "maxLines":I
    .local v4, "maxLines":I
    goto :goto_28

    .line 205
    .end local v4    # "maxLines":I
    .restart local p9    # "maxLines":I
    :cond_3c
    move/from16 v4, p9

    .line 206
    .end local p9    # "maxLines":I
    .restart local v4    # "maxLines":I
    :goto_28
    if-eqz v6, :cond_3d

    .line 207
    const/4 v6, 0x1

    .end local p10    # "minLines":I
    .local v6, "minLines":I
    goto :goto_29

    .line 206
    .end local v6    # "minLines":I
    .restart local p10    # "minLines":I
    :cond_3d
    move/from16 v6, p10

    .line 207
    .end local p10    # "minLines":I
    .restart local v6    # "minLines":I
    :goto_29
    and-int/lit16 v14, v11, 0x800

    if-eqz v14, :cond_3e

    .line 208
    sget-object v14, Landroidx/compose/ui/text/input/ImeOptions;->Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/text/input/ImeOptions$Companion;->getDefault()Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v14

    .end local p11    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .local v14, "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    and-int/lit8 v2, v2, -0x71

    goto :goto_2a

    .line 207
    .end local v14    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .restart local p11    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    :cond_3e
    move-object/from16 v14, p11

    .line 208
    .end local p11    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .restart local v14    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    :goto_2a
    if-eqz v7, :cond_3f

    .line 209
    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v7

    .end local p12    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v7, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    goto :goto_2b

    .line 208
    .end local v7    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local p12    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    :cond_3f
    move-object/from16 v7, p12

    .line 209
    .end local p12    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .restart local v7    # "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    :goto_2b
    if-eqz v8, :cond_40

    .line 210
    const/4 v8, 0x1

    .end local p13    # "enabled":Z
    .local v8, "enabled":Z
    goto :goto_2c

    .line 209
    .end local v8    # "enabled":Z
    .restart local p13    # "enabled":Z
    :cond_40
    move/from16 v8, p13

    .line 210
    .end local p13    # "enabled":Z
    .restart local v8    # "enabled":Z
    :goto_2c
    if-eqz v9, :cond_41

    .line 211
    const/4 v9, 0x0

    .end local p14    # "readOnly":Z
    .local v9, "readOnly":Z
    goto :goto_2d

    .line 210
    .end local v9    # "readOnly":Z
    .restart local p14    # "readOnly":Z
    :cond_41
    move/from16 v9, p14

    .line 211
    .end local p14    # "readOnly":Z
    .restart local v9    # "readOnly":Z
    :goto_2d
    if-eqz v17, :cond_42

    sget-object v15, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->getLambda-1$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v15

    move/from16 v23, v0

    move-object/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move v7, v8

    move/from16 v26, v9

    move-object/from16 v20, v10

    move-object v8, v14

    move-object/from16 v27, v15

    move-object/from16 v14, v16

    move-object/from16 v21, v18

    move-object/from16 v10, v19

    move v6, v2

    move-object v15, v3

    move v9, v4

    .end local p15    # "decorationBox":Lkotlin/jvm/functions/Function3;
    .local v15, "decorationBox":Lkotlin/jvm/functions/Function3;
    goto :goto_2e

    .end local v15    # "decorationBox":Lkotlin/jvm/functions/Function3;
    .restart local p15    # "decorationBox":Lkotlin/jvm/functions/Function3;
    :cond_42
    move-object/from16 v27, p15

    move/from16 v23, v0

    move-object v15, v3

    move-object/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move v7, v8

    move/from16 v26, v9

    move-object/from16 v20, v10

    move-object v8, v14

    move-object/from16 v14, v16

    move-object/from16 v21, v18

    move-object/from16 v10, v19

    move v6, v2

    move v9, v4

    .end local v0    # "softWrap":Z
    .end local v2    # "$dirty1":I
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "maxLines":I
    .end local v5    # "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .end local v16    # "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    .end local v18    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v19    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p15    # "decorationBox":Lkotlin/jvm/functions/Function3;
    .local v6, "$dirty1":I
    .local v7, "enabled":Z
    .local v8, "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .local v9, "maxLines":I
    .local v10, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v14, "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "textStyle":Landroidx/compose/ui/text/TextStyle;
    .local v21, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v22, "cursorBrush":Landroidx/compose/ui/graphics/Brush;
    .local v23, "softWrap":Z
    .local v24, "minLines":I
    .local v25, "keyboardActions":Landroidx/compose/foundation/text/KeyboardActions;
    .local v26, "readOnly":Z
    .local v27, "decorationBox":Lkotlin/jvm/functions/Function3;
    :goto_2e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 214
    const-string/jumbo v0, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:213)"

    const v2, -0x3924b996

    invoke-static {v2, v1, v6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_43
    nop

    .line 215
    const/4 v5, 0x0

    move v0, v5

    .local v0, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1196
    const/16 v16, 0x0

    .local v16, "invalid$iv$iv":Z
    move-object/from16 p2, v12

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1197
    .local v17, "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1198
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v13, v3, :cond_44

    .line 1199
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$a$-remember-CoreTextFieldKt$CoreTextField$focusRequester$1":I
    new-instance v19, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct/range {v19 .. v19}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 1199
    .end local v3    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$focusRequester$1":I
    move-object/from16 v3, v19

    .line 1200
    .local v3, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1201
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_2f

    .line 1202
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_44
    move-object/from16 v5, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move-object v3, v13

    .line 1198
    :goto_2f
    nop

    .line 1197
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1196
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 215
    .end local v0    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    move-object v13, v3

    check-cast v13, Landroidx/compose/ui/focus/FocusRequester;

    .line 219
    .local v13, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextInputService()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 1203
    .local v3, "$i$f$getCurrent":I
    const v5, 0x789c5f52

    move/from16 p2, v2

    .end local v2    # "$changed$iv":I
    .local p2, "$changed$iv":I
    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 219
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/ui/text/input/TextInputService;

    .line 220
    .local v3, "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .line 1204
    .local v17, "$i$f$getCurrent":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v18

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 220
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    move-object/from16 v29, v18

    check-cast v29, Landroidx/compose/ui/unit/Density;

    .line 221
    .local v29, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .restart local v16    # "$changed$iv":I
    const/16 v17, 0x0

    .line 1205
    .restart local v17    # "$i$f$getCurrent":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v18

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 221
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    move-object/from16 v30, v18

    check-cast v30, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 222
    .local v30, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x6

    .restart local v16    # "$changed$iv":I
    const/16 v17, 0x0

    .line 1206
    .restart local v17    # "$i$f$getCurrent":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v18

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    check-cast v18, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 222
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v31

    .line 223
    .local v31, "selectionBackgroundColor":J
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .restart local v16    # "$changed$iv":I
    const/16 v17, 0x0

    .line 1207
    .restart local v17    # "$i$f$getCurrent":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v18

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 223
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/focus/FocusManager;

    .line 224
    .local v0, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .restart local v16    # "$changed$iv":I
    const/16 v18, 0x0

    .line 1208
    .local v18, "$i$f$getCurrent":I
    move/from16 v19, v6

    const v6, 0x789c5f52

    .end local v6    # "$dirty1":I
    .local v19, "$dirty1":I
    invoke-static {v12, v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 224
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v18    # "$i$f$getCurrent":I
    move-object/from16 v33, v6

    check-cast v33, Landroidx/compose/ui/platform/WindowInfo;

    .line 225
    .local v33, "windowInfo":Landroidx/compose/ui/platform/WindowInfo;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalSoftwareKeyboardController()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .restart local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    const/16 v16, 0x0

    .line 1209
    .local v16, "$i$f$getCurrent":I
    move/from16 p2, v6

    const v6, 0x789c5f52

    .end local v6    # "$changed$iv":I
    .restart local p2    # "$changed$iv":I
    invoke-static {v12, v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 225
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    check-cast v6, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 228
    .local v6, "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    const/4 v5, 0x1

    if-ne v9, v5, :cond_45

    if-nez v23, :cond_45

    invoke-virtual {v8}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v16

    if-eqz v16, :cond_45

    move/from16 v16, v5

    goto :goto_30

    :cond_45
    const/16 v16, 0x0

    :goto_30
    move/from16 v34, v16

    .line 229
    .local v34, "singleLine":Z
    if-eqz v34, :cond_46

    sget-object v16, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_31

    :cond_46
    sget-object v16, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_31
    move-object/from16 v35, v16

    .line 231
    .local v35, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    filled-new-array/range {v35 .. v35}, [Ljava/lang/Object;

    move-result-object v16

    .line 232
    sget-object v18, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Companion:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v18

    const/16 v36, 0x0

    const v5, 0x1188e0b7

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v5, v35

    .end local v35    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v5, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    .line 233
    move-object/from16 p2, v12

    .local v35, "invalid$iv":Z
    .local p2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 1210
    .local v38, "$i$f$cache":I
    move/from16 v39, v9

    .end local v9    # "maxLines":I
    .local v39, "maxLines":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 1211
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v35, :cond_48

    sget-object v41, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_47

    goto :goto_32

    .line 1215
    :cond_47
    move-object/from16 v11, p2

    move-object/from16 p3, v9

    goto :goto_33

    .line 1212
    :cond_48
    :goto_32
    const/4 v11, 0x0

    .line 233
    .local v11, "$i$a$-cache-CoreTextFieldKt$CoreTextField$scrollerPosition$1":I
    move-object/from16 p3, v9

    .end local v9    # "it$iv":Ljava/lang/Object;
    .local p3, "it$iv":Ljava/lang/Object;
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;

    invoke-direct {v9, v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1212
    .end local v11    # "$i$a$-cache-CoreTextFieldKt$CoreTextField$scrollerPosition$1":I
    nop

    .line 1213
    .local v9, "value$iv":Ljava/lang/Object;
    move-object/from16 v11, p2

    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1214
    nop

    .line 1211
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_33
    nop

    .line 1210
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p3    # "it$iv":Ljava/lang/Object;
    nop

    .line 233
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v35    # "invalid$iv":Z
    .end local v38    # "$i$f$cache":I
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v11, 0x48

    const/16 v35, 0x4

    .line 230
    move-object/from16 p2, v16

    move-object/from16 p3, v18

    move-object/from16 p4, v36

    move-object/from16 p5, v9

    move-object/from16 p6, v12

    move/from16 p7, v11

    move/from16 p8, v35

    invoke-static/range {p2 .. p8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .local v11, "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    and-int/lit8 v9, v1, 0xe

    shr-int/lit8 v16, v1, 0x9

    and-int/lit8 v16, v16, 0x70

    or-int v9, v9, v16

    .line 236
    nop

    .local v9, "$changed$iv":I
    const/16 v16, 0x0

    move/from16 v18, v1

    .end local v1    # "$dirty":I
    .local v16, "$i$f$remember":I
    .local v18, "$dirty":I
    const v1, 0x1e7b2b64

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1216
    move-object/from16 v1, p0

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v36

    or-int v35, v35, v36

    .line 1217
    move-object/from16 p2, v12

    .local v35, "invalid$iv$iv":Z
    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v36, 0x0

    .line 1218
    .local v36, "$i$f$cache":I
    move-object/from16 v38, v5

    .end local v5    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v38, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 1219
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v35, :cond_4a

    sget-object v41, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v9

    .end local v9    # "$changed$iv":I
    .local p3, "$changed$iv":I
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_49

    goto :goto_34

    .line 1223
    :cond_49
    move-object/from16 v9, p2

    move-object/from16 p4, v5

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    goto :goto_36

    .line 1219
    .end local p3    # "$changed$iv":I
    .restart local v9    # "$changed$iv":I
    :cond_4a
    move/from16 p3, v9

    .line 1220
    .end local v9    # "$changed$iv":I
    .restart local p3    # "$changed$iv":I
    :goto_34
    const/4 v9, 0x0

    .line 237
    .local v9, "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    move-object/from16 p4, v5

    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    invoke-static {v14, v5}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v5

    .line 238
    .local v5, "transformed":Landroidx/compose/ui/text/input/TransformedText;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v41

    if-eqz v41, :cond_4b

    move/from16 p5, v9

    move-object/from16 v42, v10

    .end local v9    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    .end local v10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v42, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p5, "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v9

    .local v9, "it":J
    const/16 v41, 0x0

    .line 239
    .local v41, "$i$a$-let-CoreTextFieldKt$CoreTextField$transformedText$1$1":I
    move-object/from16 v43, v11

    .end local v11    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .local v43, "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    sget-object v11, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    invoke-virtual {v11, v9, v10, v5}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->applyCompositionDecoration-72CqOWE(JLandroidx/compose/ui/text/input/TransformedText;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v9

    .line 238
    .end local v9    # "it":J
    .end local v41    # "$i$a$-let-CoreTextFieldKt$CoreTextField$transformedText$1$1":I
    if-nez v9, :cond_4c

    goto :goto_35

    .end local v42    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v43    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .end local p5    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    .local v9, "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    .restart local v10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v11    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    :cond_4b
    move/from16 p5, v9

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    .line 240
    .end local v9    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    .end local v10    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v11    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .restart local v42    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v43    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .restart local p5    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    :goto_35
    move-object v9, v5

    .line 238
    :cond_4c
    nop

    .line 1220
    .end local v5    # "transformed":Landroidx/compose/ui/text/input/TransformedText;
    .end local p5    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$transformedText$1":I
    move-object v5, v9

    .line 1221
    .local v5, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v9, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1222
    nop

    .line 1219
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    :goto_36
    nop

    .line 1218
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1217
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v35    # "invalid$iv$iv":Z
    .end local v36    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 236
    .end local v16    # "$i$f$remember":I
    .end local p3    # "$changed$iv":I
    move-object/from16 v35, v5

    check-cast v35, Landroidx/compose/ui/text/input/TransformedText;

    .line 243
    .local v35, "transformedText":Landroidx/compose/ui/text/input/TransformedText;
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v36

    .line 244
    .local v36, "visualText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v11

    .line 248
    .local v11, "offsetMapping":Landroidx/compose/ui/text/input/OffsetMapping;
    const/4 v5, 0x0

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    move-result-object v10

    .line 249
    .local v10, "scope":Landroidx/compose/runtime/RecomposeScope;
    move v9, v5

    .local v9, "$changed$iv":I
    const/4 v5, 0x0

    move/from16 v16, v5

    .restart local v16    # "$i$f$remember":I
    const v5, 0x44faf204

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1224
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid$iv$iv":Z
    move-object/from16 v40, v12

    .local v40, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 1225
    .local v41, "$i$f$cache":I
    move/from16 v44, v9

    .end local v9    # "$changed$iv":I
    .local v44, "$changed$iv":I
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/16 v45, 0x0

    .line 1226
    .local v45, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v5, :cond_4e

    sget-object v46, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v47, v5

    .end local v5    # "invalid$iv$iv":Z
    .local v47, "invalid$iv$iv":Z
    invoke-virtual/range {v46 .. v46}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v9, v5, :cond_4d

    goto :goto_37

    .line 1230
    :cond_4d
    move-object v5, v9

    move-object/from16 v48, v5

    move-object/from16 v9, v40

    goto :goto_38

    .line 1226
    .end local v47    # "invalid$iv$iv":Z
    .restart local v5    # "invalid$iv$iv":Z
    :cond_4e
    move/from16 v47, v5

    .line 1227
    .end local v5    # "invalid$iv$iv":Z
    .restart local v47    # "invalid$iv$iv":Z
    :goto_37
    const/4 v5, 0x0

    .line 250
    .local v5, "$i$a$-remember-CoreTextFieldKt$CoreTextField$state$1":I
    move/from16 v46, v5

    .end local v5    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$state$1":I
    .local v46, "$i$a$-remember-CoreTextFieldKt$CoreTextField$state$1":I
    new-instance v5, Landroidx/compose/foundation/text/TextFieldState;

    .line 251
    move-object/from16 v48, v9

    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .local v48, "it$iv$iv":Ljava/lang/Object;
    new-instance v9, Landroidx/compose/foundation/text/TextDelegate;

    .line 252
    nop

    .line 253
    nop

    .line 251
    const/16 v49, 0x0

    const/16 v50, 0x0

    .line 254
    nop

    .line 251
    const/16 v51, 0x0

    .line 255
    nop

    .line 256
    nop

    .line 251
    const/16 v52, 0x0

    const/16 v53, 0x12c

    const/16 v54, 0x0

    move-object/from16 p2, v9

    move-object/from16 p3, v36

    move-object/from16 p4, v20

    move/from16 p5, v49

    move/from16 p6, v50

    move/from16 p7, v23

    move/from16 p8, v51

    move-object/from16 p9, v29

    move-object/from16 p10, v30

    move-object/from16 p11, v52

    move/from16 p12, v53

    move-object/from16 p13, v54

    invoke-direct/range {p2 .. p13}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    nop

    .line 259
    nop

    .line 250
    invoke-direct {v5, v9, v10, v6}, Landroidx/compose/foundation/text/TextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    .line 1227
    .end local v46    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$state$1":I
    nop

    .line 1228
    .local v5, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v9, v40

    .end local v40    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1229
    nop

    .line 1226
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    :goto_38
    nop

    .line 1225
    .end local v45    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v48    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1224
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v41    # "$i$f$cache":I
    .end local v47    # "invalid$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 249
    .end local v16    # "$i$f$remember":I
    .end local v44    # "$changed$iv":I
    move-object v9, v5

    check-cast v9, Landroidx/compose/foundation/text/TextFieldState;

    .line 262
    .local v9, "state":Landroidx/compose/foundation/text/TextFieldState;
    nop

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 270
    nop

    .line 271
    nop

    .line 272
    nop

    .line 262
    move-object/from16 p2, v9

    move-object/from16 p3, v5

    move-object/from16 p4, v36

    move-object/from16 p5, v20

    move/from16 p6, v23

    move-object/from16 p7, v29

    move-object/from16 p8, v30

    move-object/from16 p9, p1

    move-object/from16 p10, v25

    move-object/from16 p11, v0

    move-wide/from16 p12, v31

    invoke-virtual/range {p2 .. p13}, Landroidx/compose/foundation/text/TextFieldState;->update-fnh65Uc(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/ui/focus/FocusManager;J)V

    .line 276
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v5

    move-object/from16 p13, v0

    .end local v0    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local p13, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroidx/compose/ui/text/input/EditProcessor;->reset(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 278
    const/4 v0, 0x0

    move v5, v0

    .local v5, "$changed$iv":I
    const/4 v0, 0x0

    move/from16 p2, v0

    const v0, -0x1d58f75c

    .local p2, "$i$f$remember":I
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1231
    const/4 v0, 0x0

    .local v0, "invalid$iv$iv":Z
    move-object/from16 p3, v12

    .local p3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1232
    .local v16, "$i$f$cache":I
    move/from16 p4, v0

    .end local v0    # "invalid$iv$iv":Z
    .local p4, "invalid$iv$iv":Z
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 1233
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v41, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v5

    .end local v5    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_4f

    .line 1234
    const/4 v5, 0x0

    .line 278
    .local v5, "$i$a$-remember-CoreTextFieldKt$CoreTextField$undoManager$1":I
    move-object/from16 p6, v0

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .local p6, "it$iv$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/foundation/text/UndoManager;

    move/from16 p7, v5

    move-object/from16 v37, v6

    move-object/from16 v41, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    .end local v5    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$undoManager$1":I
    .end local v6    # "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .end local v10    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .local v37, "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .local v41, "scope":Landroidx/compose/runtime/RecomposeScope;
    .local p7, "$i$a$-remember-CoreTextFieldKt$CoreTextField$undoManager$1":I
    invoke-direct {v0, v6, v10, v5}, Landroidx/compose/foundation/text/UndoManager;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1234
    .end local p7    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$undoManager$1":I
    nop

    .line 1235
    .local v0, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, p3

    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1236
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_39

    .line 1237
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v37    # "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .end local v41    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .end local p6    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local v6    # "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .restart local v10    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .restart local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_4f
    move-object/from16 v5, p3

    move-object/from16 p6, v0

    move-object/from16 v37, v6

    move-object/from16 v41, v10

    const/4 v10, 0x1

    .line 1233
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .end local v10    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v37    # "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .restart local v41    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .restart local p6    # "it$iv$iv":Ljava/lang/Object;
    :goto_39
    nop

    .line 1232
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p6    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1231
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 278
    .end local p2    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/text/UndoManager;

    .line 279
    .local v6, "undoManager":Landroidx/compose/foundation/text/UndoManager;
    const-wide/16 v44, 0x0

    const/4 v0, 0x2

    const/4 v5, 0x0

    move-object/from16 p2, v6

    move-object/from16 p3, p0

    move-wide/from16 p4, v44

    move/from16 p6, v0

    move-object/from16 p7, v5

    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/text/UndoManager;->snapshotIfNeeded$default(Landroidx/compose/foundation/text/UndoManager;Landroidx/compose/ui/text/input/TextFieldValue;JILjava/lang/Object;)V

    .line 281
    const/4 v0, 0x0

    move v5, v0

    .local v5, "$changed$iv":I
    const/4 v0, 0x0

    const v10, -0x1d58f75c

    .local v0, "$i$f$remember":I
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1238
    const/4 v10, 0x0

    .local v10, "invalid$iv$iv":Z
    move-object/from16 p2, v12

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v40, 0x0

    .line 1239
    .local v40, "$i$f$cache":I
    move/from16 p3, v0

    .end local v0    # "$i$f$remember":I
    .local p3, "$i$f$remember":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v44, 0x0

    .line 1240
    .local v44, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v45, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v5

    .end local v5    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_50

    .line 1241
    const/4 v5, 0x0

    .line 281
    .local v5, "$i$a$-remember-CoreTextFieldKt$CoreTextField$manager$1":I
    move-object/from16 p5, v0

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    .line 1241
    .end local v5    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$manager$1":I
    nop

    .line 1242
    .local v0, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1243
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_3a

    .line 1244
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_50
    move-object/from16 v5, p2

    move-object/from16 p5, v0

    .line 1240
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    :goto_3a
    nop

    .line 1239
    .end local v44    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1238
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "invalid$iv$iv":Z
    .end local v40    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 281
    .end local p3    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    move-object v10, v0

    check-cast v10, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 282
    .local v10, "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    invoke-virtual {v10, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setOffsetMapping$foundation_release(Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 283
    invoke-virtual {v10, v14}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setVisualTransformation$foundation_release(Landroidx/compose/ui/text/input/VisualTransformation;)V

    .line 284
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setOnValueChange$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 285
    invoke-virtual {v10, v9}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setState$foundation_release(Landroidx/compose/foundation/text/TextFieldState;)V

    .line 286
    invoke-virtual {v10, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setValue$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 287
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x0

    .local v5, "$changed$iv":I
    const/16 v40, 0x0

    .line 1245
    .local v40, "$i$f$getCurrent":I
    move/from16 p2, v5

    const v5, 0x789c5f52

    .end local v5    # "$changed$iv":I
    .local p2, "$changed$iv":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v40    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    check-cast v5, Landroidx/compose/ui/platform/ClipboardManager;

    .line 287
    invoke-virtual {v10, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setClipboardManager$foundation_release(Landroidx/compose/ui/platform/ClipboardManager;)V

    .line 288
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x0

    .restart local v5    # "$changed$iv":I
    const/16 v40, 0x0

    .line 1246
    .restart local v40    # "$i$f$getCurrent":I
    move/from16 p2, v5

    const v5, 0x789c5f52

    .end local v5    # "$changed$iv":I
    .restart local p2    # "$changed$iv":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v40    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    check-cast v5, Landroidx/compose/ui/platform/TextToolbar;

    .line 288
    invoke-virtual {v10, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setTextToolbar(Landroidx/compose/ui/platform/TextToolbar;)V

    .line 289
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x0

    .restart local v5    # "$changed$iv":I
    const/16 v40, 0x0

    .line 1247
    .restart local v40    # "$i$f$getCurrent":I
    move/from16 p2, v5

    const v5, 0x789c5f52

    .end local v5    # "$changed$iv":I
    .restart local p2    # "$changed$iv":I
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v40    # "$i$f$getCurrent":I
    .end local p2    # "$changed$iv":I
    check-cast v2, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 289
    invoke-virtual {v10, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V

    .line 290
    invoke-virtual {v10, v13}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 291
    xor-int/lit8 v0, v26, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setEditable(Z)V

    .line 293
    const/4 v0, 0x0

    move v2, v0

    .restart local v2    # "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$rememberCoroutineScope":I
    const v0, 0x2e20b340

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1248
    nop

    .line 1250
    move-object v0, v12

    .line 1251
    .local v0, "composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    move/from16 v40, v17

    .local v40, "$changed$iv$iv":I
    const/16 v17, 0x0

    move/from16 p2, v2

    const v2, -0x1d58f75c

    .end local v2    # "$changed$iv":I
    .local v17, "$i$f$remember":I
    .restart local p2    # "$changed$iv":I
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1252
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv$iv":Z
    move-object/from16 p3, v12

    .local p3, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v44, 0x0

    .line 1253
    .local v44, "$i$f$cache":I
    move/from16 p4, v2

    .end local v2    # "invalid$iv$iv$iv":Z
    .local p4, "invalid$iv$iv$iv":Z
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v45, 0x0

    .line 1254
    .local v45, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v46, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v5

    .end local v5    # "$i$f$rememberCoroutineScope":I
    .local p5, "$i$f$rememberCoroutineScope":I
    invoke-virtual/range {v46 .. v46}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_51

    .line 1255
    const/4 v5, 0x0

    .line 1256
    .local v5, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 1257
    const/16 v46, 0x0

    .line 1258
    .local v46, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v46, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1257
    .end local v46    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p6, v2

    .end local v2    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p6, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v46

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 1256
    move-object/from16 p7, v0

    .end local v0    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local p7, "composer$iv":Landroidx/compose/runtime/Composer;
    new-instance v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 1255
    .end local v5    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 1259
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, p3

    .end local p3    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1260
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3b

    .line 1261
    .end local p6    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p7    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local v0, "composer$iv":Landroidx/compose/runtime/Composer;
    .local v2, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p3    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_51
    move-object/from16 p7, v0

    move-object/from16 p6, v2

    move-object/from16 v2, p3

    .end local v0    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p6    # "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p7    # "composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v0, p6

    .line 1254
    :goto_3b
    nop

    .line 1253
    .end local v45    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p6    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 1252
    .end local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v44    # "$i$f$cache":I
    .end local p4    # "invalid$iv$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1251
    .end local v17    # "$i$f$remember":I
    .end local v40    # "$changed$iv$iv":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 1262
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 293
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local p2    # "$changed$iv":I
    .end local p5    # "$i$f$rememberCoroutineScope":I
    .end local p7    # "composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 p11, v2

    .line 294
    .local p11, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v0, 0x0

    move v2, v0

    .local v2, "$changed$iv":I
    const/4 v0, 0x0

    const v5, -0x1d58f75c

    .local v0, "$i$f$remember":I
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1263
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    move-object v5, v12

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1264
    .local v17, "$i$f$cache":I
    move/from16 p2, v0

    .end local v0    # "$i$f$remember":I
    .local p2, "$i$f$remember":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 1265
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v44, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v2

    .end local v2    # "$changed$iv":I
    .local p3, "$changed$iv":I
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_52

    .line 1266
    const/4 v2, 0x0

    .line 294
    .local v2, "$i$a$-remember-CoreTextFieldKt$CoreTextField$bringIntoViewRequester$1":I
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->BringIntoViewRequester()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object v2

    .line 1266
    .end local v2    # "$i$a$-remember-CoreTextFieldKt$CoreTextField$bringIntoViewRequester$1":I
    nop

    .line 1267
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1268
    nop

    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_3c

    .line 1269
    :cond_52
    move-object v2, v0

    .line 1265
    :goto_3c
    nop

    .line 1264
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1263
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 294
    .end local p2    # "$i$f$remember":I
    .end local p3    # "$changed$iv":I
    move-object/from16 v40, v2

    check-cast v40, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 297
    .local v40, "bringIntoViewRequester":Landroidx/compose/foundation/relocation/BringIntoViewRequester;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 297
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;

    move-object/from16 p2, v2

    move-object/from16 p3, v9

    move-object/from16 p4, v3

    move/from16 p5, v7

    move/from16 p6, v26

    move-object/from16 p7, p0

    move-object/from16 p8, v8

    move-object/from16 p9, v11

    move-object/from16 p10, v10

    move-object/from16 p12, v40

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextInputService;ZZLandroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, v42

    .end local v42    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static {v0, v7, v13, v5, v2}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->textFieldFocusModifier(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .local v4, "focusModifier":Landroidx/compose/ui/Modifier;
    const v0, -0x347582c

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "344@17012L42,345@17063L1006"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 344
    if-eqz v3, :cond_54

    .line 345
    if-eqz v7, :cond_53

    if-nez v26, :cond_53

    const/4 v0, 0x1

    goto :goto_3d

    :cond_53
    const/4 v0, 0x0

    :goto_3d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 346
    .local v0, "writeable$delegate":Landroidx/compose/runtime/State;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v17, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;

    const/16 v42, 0x0

    move-object/from16 p2, v17

    move-object/from16 p3, v9

    move-object/from16 p4, v0

    move-object/from16 p5, v3

    move-object/from16 p6, v10

    move-object/from16 p7, v8

    move-object/from16 p8, v42

    invoke-direct/range {p2 .. p8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/coroutines/Continuation;)V

    move-object/from16 p2, v0

    .end local v0    # "writeable$delegate":Landroidx/compose/runtime/State;
    .local p2, "writeable$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 p9, v3

    .end local v3    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .local p9, "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    const/16 v3, 0x46

    invoke-static {v2, v0, v12, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3e

    .line 344
    .end local p2    # "writeable$delegate":Landroidx/compose/runtime/State;
    .end local p9    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .restart local v3    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    :cond_54
    move-object/from16 p9, v3

    .line 346
    .end local v3    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .restart local p9    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    :goto_3e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 371
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 372
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1;

    invoke-direct {v2, v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->updateSelectionTouchMode(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 373
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$2;

    move-object/from16 p2, v2

    move-object/from16 p3, v9

    move-object/from16 p4, v13

    move/from16 p5, v26

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    invoke-direct/range {p2 .. p7}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$2;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v5, v7, v2}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;->tapPressTextFieldModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 396
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getMouseSelectionObserver$foundation_release()Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    move-result-object v2

    .line 397
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTouchSelectionObserver$foundation_release()Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v3

    .line 395
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->selectionGestureInput(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 399
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object v2

    move-object/from16 p10, v4

    move-object/from16 v42, v5

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .end local v4    # "focusModifier":Landroidx/compose/ui/Modifier;
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v42    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p10, "focusModifier":Landroidx/compose/ui/Modifier;
    invoke-static {v0, v2, v5, v4, v3}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 371
    move-object v4, v0

    .line 401
    .local v4, "pointerModifier":Landroidx/compose/ui/Modifier;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1;

    invoke-direct {v2, v9, v1, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    .line 415
    .local v28, "drawModifier":Landroidx/compose/ui/Modifier;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1;

    move-object/from16 p2, v2

    move/from16 p4, v7

    move-object/from16 p5, v33

    move-object/from16 p7, p0

    move-object/from16 p8, v11

    invoke-direct/range {p2 .. p8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v44

    .line 450
    .local v44, "onPositionedModifier":Landroidx/compose/ui/Modifier;
    instance-of v3, v14, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 451
    .local v3, "isPassword":Z
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier;

    new-instance v17, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;

    move-object/from16 v45, v14

    move-object/from16 v14, p13

    .end local p13    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v14, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v45, "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    move-object/from16 v0, v17

    move/from16 v46, v18

    move-object v14, v1

    .end local v14    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .end local v18    # "$dirty":I
    .local v46, "$dirty":I
    .restart local p13    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    move-object/from16 v1, v35

    move-object/from16 v18, v15

    move-object v15, v2

    .end local v15    # "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v2, p0

    move-object/from16 v55, p9

    move/from16 v47, v3

    .end local v3    # "isPassword":Z
    .end local p9    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .local v47, "isPassword":Z
    .local v55, "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    move v3, v7

    move-object/from16 v56, p10

    move-object/from16 v57, v4

    .end local v4    # "pointerModifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "focusModifier":Landroidx/compose/ui/Modifier;
    .local v56, "focusModifier":Landroidx/compose/ui/Modifier;
    .local v57, "pointerModifier":Landroidx/compose/ui/Modifier;
    move/from16 v4, v47

    move/from16 v16, v5

    const/4 v14, 0x1

    move-object v5, v8

    move-object/from16 v49, v6

    move-object/from16 v48, v37

    move/from16 v37, v19

    .end local v6    # "undoManager":Landroidx/compose/foundation/text/UndoManager;
    .end local v19    # "$dirty1":I
    .local v37, "$dirty1":I
    .local v48, "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .local v49, "undoManager":Landroidx/compose/foundation/text/UndoManager;
    move/from16 v6, v26

    move/from16 v58, v7

    .end local v7    # "enabled":Z
    .local v58, "enabled":Z
    move-object v7, v9

    move-object/from16 v59, v8

    .end local v8    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .local v59, "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    move-object v8, v11

    move-object/from16 p8, v9

    move/from16 v60, v39

    .end local v9    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .end local v39    # "maxLines":I
    .local v60, "maxLines":I
    .local p8, "state":Landroidx/compose/foundation/text/TextFieldState;
    move-object v9, v10

    move-object/from16 v61, v10

    move-object/from16 v39, v41

    move-object/from16 v62, v42

    .end local v10    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .end local v41    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .end local v42    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v39, "scope":Landroidx/compose/runtime/RecomposeScope;
    .local v61, "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .local v62, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;-><init>(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/ImeOptions;ZLandroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/focus/FocusRequester;)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v14, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 586
    .local v15, "semanticsModifier":Landroidx/compose/ui/Modifier;
    move/from16 v10, v58

    .end local v58    # "enabled":Z
    .local v10, "enabled":Z
    if-eqz v10, :cond_55

    if-nez v26, :cond_55

    invoke-static/range {v33 .. v33}, Landroidx/compose/foundation/text/CoreTextFieldKt;->isWindowFocusedBehindFlag(Landroidx/compose/ui/platform/WindowInfo;)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v14

    goto :goto_3f

    :cond_55
    move/from16 v0, v16

    :goto_3f
    move/from16 p7, v0

    .line 587
    .local p7, "showCursor":Z
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 p2, v0

    move-object/from16 p3, p8

    move-object/from16 p4, p0

    move-object/from16 p5, v11

    move-object/from16 p6, v22

    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursor(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;

    move-result-object v41

    .line 589
    .local v41, "cursorModifier":Landroidx/compose/ui/Modifier;
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3;

    move-object/from16 v9, v61

    .end local v61    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .local v9, "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    invoke-direct {v0, v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x8

    invoke-static {v9, v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 593
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4;

    move-object/from16 v6, p8

    move v5, v14

    move-object/from16 v8, v55

    move-object/from16 v7, v59

    move-object/from16 v14, p0

    .end local v55    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .end local v59    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .end local p8    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .local v6, "state":Landroidx/compose/foundation/text/TextFieldState;
    .local v7, "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .local v8, "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    invoke-direct {v0, v8, v6, v14, v7}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v1, v37, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v7, v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 608
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 609
    nop

    .line 610
    nop

    .line 611
    nop

    .line 612
    invoke-virtual {v6}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 613
    nop

    .line 614
    xor-int/lit8 v17, v26, 0x1

    move/from16 v3, v60

    .end local v60    # "maxLines":I
    .local v3, "maxLines":I
    if-ne v3, v5, :cond_56

    move/from16 v19, v5

    goto :goto_40

    :cond_56
    move/from16 v19, v16

    .line 615
    :goto_40
    nop

    .line 616
    nop

    .line 617
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/ImeOptions;->getImeAction-eUduSuo()I

    move-result v42

    .line 608
    move-object v1, v6

    move-object v2, v9

    move/from16 v50, v3

    .end local v3    # "maxLines":I
    .local v50, "maxLines":I
    move-object/from16 v3, p0

    move/from16 v5, v17

    move-object v14, v6

    .end local v6    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .local v14, "state":Landroidx/compose/foundation/text/TextFieldState;
    move/from16 v6, v19

    move-object/from16 v51, v7

    .end local v7    # "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    .local v51, "imeOptions":Landroidx/compose/ui/text/input/ImeOptions;
    move-object v7, v11

    move-object/from16 v52, v8

    .end local v8    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .local v52, "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    move-object/from16 v8, v49

    move-object/from16 p2, v13

    move-object v13, v9

    .end local v9    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .local v13, "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .local p2, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    move/from16 v9, v42

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/TextFieldKeyInputKt;->textFieldKeyInput-2WJ9YEU(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 607
    move-object v9, v0

    .line 622
    .local v9, "textKeyInputModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 623
    move-object/from16 v7, v18

    move-object/from16 v8, v56

    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v56    # "focusModifier":Landroidx/compose/ui/Modifier;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "focusModifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v7, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 624
    move-object/from16 v6, p13

    .end local p13    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v6, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-static {v0, v14, v6}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt;->interceptDPadAndMoveFocus(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 625
    invoke-static {v0, v14, v13}, Landroidx/compose/foundation/text/CoreTextFieldKt;->previewKeyEventToDeselectOnBack(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 626
    invoke-interface {v0, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 627
    move-object/from16 v5, v43

    move-object/from16 v4, v62

    .end local v43    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .end local v62    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v4, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v5, "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    invoke-static {v0, v5, v4, v10}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 628
    move-object/from16 v3, v57

    .end local v57    # "pointerModifier":Landroidx/compose/ui/Modifier;
    .local v3, "pointerModifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 629
    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 630
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;

    invoke-direct {v1, v14}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 622
    move-object v2, v0

    .line 635
    .local v2, "decorationBoxModifier":Landroidx/compose/ui/Modifier;
    if-eqz v10, :cond_57

    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static/range {v33 .. v33}, Landroidx/compose/foundation/text/CoreTextFieldKt;->isWindowFocusedBehindFlag(Landroidx/compose/ui/platform/WindowInfo;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v16, 0x1

    .line 634
    :cond_57
    move/from16 v42, v16

    .line 636
    .local v42, "showHandleAndMagnifier":Z
    if-eqz v42, :cond_58

    .line 637
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {v0, v13}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->textFieldMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_41

    .line 639
    :cond_58
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 636
    :goto_41
    move-object v1, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    move-object v12, v0

    .line 642
    .local v12, "magnifierModifier":Landroidx/compose/ui/Modifier;
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;

    move-object/from16 p3, v0

    move-object/from16 v63, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v63, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v1, v27

    move-object/from16 v64, v2

    .end local v2    # "decorationBoxModifier":Landroidx/compose/ui/Modifier;
    .local v64, "decorationBoxModifier":Landroidx/compose/ui/Modifier;
    move-object v2, v14

    move-object/from16 v43, v3

    .end local v3    # "pointerModifier":Landroidx/compose/ui/Modifier;
    .local v43, "pointerModifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v3, v20

    move-object/from16 v53, v4

    .end local v4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v53, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move/from16 v4, v24

    move-object/from16 v16, v5

    .end local v5    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .local v16, "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    move/from16 v5, v50

    move-object/from16 v17, v6

    .end local v6    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v17, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    move-object/from16 v6, v16

    move-object/from16 v18, v7

    .end local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v18    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v7, p0

    move-object/from16 v54, v8

    .end local v8    # "focusModifier":Landroidx/compose/ui/Modifier;
    .local v54, "focusModifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v8, v45

    move-object/from16 v55, v9

    .end local v9    # "textKeyInputModifier":Landroidx/compose/ui/Modifier;
    .local v55, "textKeyInputModifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v9, v41

    move/from16 v56, v10

    .end local v10    # "enabled":Z
    .local v56, "enabled":Z
    move-object/from16 v10, v28

    move-object/from16 v58, v11

    move-object/from16 v57, v16

    .end local v11    # "offsetMapping":Landroidx/compose/ui/text/input/OffsetMapping;
    .end local v16    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .local v57, "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .local v58, "offsetMapping":Landroidx/compose/ui/text/input/OffsetMapping;
    move-object/from16 v11, v44

    move-object/from16 v59, p2

    move-object/from16 v61, v13

    .end local v13    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .end local p2    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .local v59, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v61    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    move-object/from16 v13, v40

    move-object/from16 v62, v14

    move-object/from16 v60, v45

    move-object/from16 v45, v17

    .end local v14    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .end local v17    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v45, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v60, "visualTransformation":Landroidx/compose/ui/text/input/VisualTransformation;
    .local v62, "state":Landroidx/compose/foundation/text/TextFieldState;
    move-object/from16 v14, v61

    move-object/from16 v65, v15

    move-object/from16 v66, v18

    .end local v15    # "semanticsModifier":Landroidx/compose/ui/Modifier;
    .end local v18    # "modifier":Landroidx/compose/ui/Modifier;
    .local v65, "semanticsModifier":Landroidx/compose/ui/Modifier;
    .local v66, "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v15, v42

    move/from16 v16, v26

    move-object/from16 v17, v21

    move-object/from16 v18, v58

    move-object/from16 v19, v29

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    const v0, -0x164ff220

    move-object/from16 v1, p3

    move-object/from16 v15, v63

    const/4 v2, 0x1

    .end local v63    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v15, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x1c0

    move-object/from16 v2, v61

    move-object/from16 v3, v64

    .end local v61    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .end local v64    # "decorationBoxModifier":Landroidx/compose/ui/Modifier;
    .local v2, "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .local v3, "decorationBoxModifier":Landroidx/compose/ui/Modifier;
    invoke-static {v3, v2, v0, v15, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 740
    .end local v2    # "manager":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .end local v3    # "decorationBoxModifier":Landroidx/compose/ui/Modifier;
    .end local v12    # "magnifierModifier":Landroidx/compose/ui/Modifier;
    .end local v28    # "drawModifier":Landroidx/compose/ui/Modifier;
    .end local v29    # "density":Landroidx/compose/ui/unit/Density;
    .end local v30    # "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .end local v31    # "selectionBackgroundColor":J
    .end local v33    # "windowInfo":Landroidx/compose/ui/platform/WindowInfo;
    .end local v34    # "singleLine":Z
    .end local v35    # "transformedText":Landroidx/compose/ui/text/input/TransformedText;
    .end local v36    # "visualText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v38    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .end local v39    # "scope":Landroidx/compose/runtime/RecomposeScope;
    .end local v40    # "bringIntoViewRequester":Landroidx/compose/foundation/relocation/BringIntoViewRequester;
    .end local v41    # "cursorModifier":Landroidx/compose/ui/Modifier;
    .end local v42    # "showHandleAndMagnifier":Z
    .end local v43    # "pointerModifier":Landroidx/compose/ui/Modifier;
    .end local v44    # "onPositionedModifier":Landroidx/compose/ui/Modifier;
    .end local v45    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .end local v47    # "isPassword":Z
    .end local v48    # "keyboardController":Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .end local v49    # "undoManager":Landroidx/compose/foundation/text/UndoManager;
    .end local v52    # "textInputService":Landroidx/compose/ui/text/input/TextInputService;
    .end local v54    # "focusModifier":Landroidx/compose/ui/Modifier;
    .end local v55    # "textKeyInputModifier":Landroidx/compose/ui/Modifier;
    .end local v57    # "scrollerPosition":Landroidx/compose/foundation/text/TextFieldScrollerPosition;
    .end local v58    # "offsetMapping":Landroidx/compose/ui/text/input/OffsetMapping;
    .end local v59    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .end local v62    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .end local v65    # "semanticsModifier":Landroidx/compose/ui/Modifier;
    .end local p7    # "showCursor":Z
    .end local p11    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :cond_59
    :goto_42
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_5a

    new-instance v28, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v66

    move-object/from16 v4, v20

    move-object/from16 v5, v60

    move-object/from16 v6, v21

    move-object/from16 v7, v53

    move-object/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v50

    move/from16 v11, v24

    move-object/from16 v12, v51

    move-object/from16 v13, v25

    move-object/from16 v67, v14

    move/from16 v14, v56

    move-object/from16 v29, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v15, v26

    move-object/from16 v16, v27

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v28

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v67

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_43

    .end local v29    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_5a
    move-object/from16 v29, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v29    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_43
    return-void
.end method

.method private static final CoreTextField$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$writeable$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 1337
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 345
    return v0
.end method

.method private static final CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 25
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
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

    .line 747
    move-object/from16 v0, p2

    const v1, -0x1399887

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(CoreTextFieldRootBox)P(2,1)747@33825L95:CoreTextField.kt#423gt5"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.foundation.text.CoreTextFieldRootBox (CoreTextField.kt:746)"

    invoke-static {v1, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 748
    :cond_0
    const/4 v1, 0x1

    .local v1, "propagateMinConstraints$iv":Z
    and-int/lit8 v4, v3, 0xe

    or-int/lit16 v4, v4, 0x180

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$Box":I
    const v6, 0x2bb5b5d7

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1270
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    .line 1274
    .local v6, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    shr-int/lit8 v7, v4, 0x3

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v8, v4, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v7, v8

    invoke-static {v6, v1, v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v8, v4, 0x3

    and-int/lit8 v8, v8, 0x70

    .line 1275
    nop

    .local v8, "$changed$iv$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$Layout":I
    const v10, -0x4ee9b9da

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v2, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1276
    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v10

    .line 1277
    .local v10, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 1279
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 1286
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v13

    shl-int/lit8 v14, v8, 0x9

    and-int/lit16 v14, v14, 0x1c00

    or-int/lit8 v14, v14, 0x6

    .line 1278
    nop

    .local v12, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v14, "$changed$iv$iv$iv":I
    const/4 v15, 0x0

    .line 1287
    .local v15, "$i$f$ReusableComposeNode":I
    move/from16 p3, v1

    .end local v1    # "propagateMinConstraints$iv":Z
    .local p3, "propagateMinConstraints$iv":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1288
    :cond_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1289
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1290
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1292
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1294
    :goto_0
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1281
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v18, v5

    .end local v5    # "$i$f$Box":I
    .local v18, "$i$f$Box":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1282
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v11, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1284
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 1295
    .local v17, "$i$f$set-impl":I
    move-object/from16 v19, v1

    .local v19, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 1296
    .local v20, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v21, v6

    .end local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v21, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v7

    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v22, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v7, v19

    goto :goto_2

    .end local v21    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v22    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_4
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 1297
    .end local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v21    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v22    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v19

    .end local v19    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1298
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1300
    :goto_2
    nop

    .line 1295
    .end local v7    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1300
    nop

    .line 1285
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 1294
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1301
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v5, v14, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v1, v2, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const v1, 0x7ab4aae9

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1303
    shr-int/lit8 v1, v14, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v5, v2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1304
    .local v6, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v7, -0x4ab8dd4f

    move/from16 v16, v1

    .end local v1    # "$changed$iv":I
    .local v16, "$changed$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v5, v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    .local v7, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$CoreTextFieldRootBox_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v17, v5

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 749
    .local v19, "$i$a$-Box-CoreTextFieldKt$CoreTextFieldRootBox$1":I
    move-object/from16 v20, v1

    .end local v1    # "$this$CoreTextFieldRootBox_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    .local v20, "$this$CoreTextFieldRootBox_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    const v1, -0x40ce6688

    move/from16 v23, v4

    .end local v4    # "$changed$iv":I
    .local v23, "$changed$iv":I
    const-string v4, "C748@33881L33:CoreTextField.kt#423gt5"

    move/from16 v24, v6

    move-object/from16 v6, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v6, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x8

    .local v1, "$changed$iv":I
    const/4 v4, 0x0

    move/from16 v17, v3

    .end local v3    # "$dirty":I
    .local v4, "$i$f$ContextMenuArea":I
    .local v17, "$dirty":I
    const v3, -0x7658948d

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(ContextMenuArea)P(1)29@1062L9:ContextMenu.android.kt#423gt5"

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1305
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1306
    nop

    .line 749
    .end local v1    # "$changed$iv":I
    .end local v4    # "$i$f$ContextMenuArea":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 750
    nop

    .line 1304
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v7    # "$changed":I
    .end local v19    # "$i$a$-Box-CoreTextFieldKt$CoreTextFieldRootBox$1":I
    .end local v20    # "$this$CoreTextFieldRootBox_u24lambda_u249":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1303
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed$iv":I
    .end local v24    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 1307
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1308
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1309
    nop

    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v14    # "$changed$iv$iv$iv":I
    .end local v15    # "$i$f$ReusableComposeNode":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1310
    nop

    .end local v8    # "$changed$iv$iv":I
    .end local v9    # "$i$f$Layout":I
    .end local v10    # "compositeKeyHash$iv$iv":I
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1311
    nop

    .end local v18    # "$i$f$Box":I
    .end local v21    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v22    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "$changed$iv":I
    .end local p3    # "propagateMinConstraints$iv":Z
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p4

    invoke-direct {v3, v4, v5, v0, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;I)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_3

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p4

    .line 751
    :goto_3
    return-void
.end method

.method private static final SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 12
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p1, "show"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1083
    const v0, 0x25552d88

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(SelectionToolbarAndHandles)1101@48248L202:CoreTextField.kt#423gt5"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text.SelectionToolbarAndHandles (CoreTextField.kt:1082)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1084
    :cond_0
    move-object v0, p0

    .local v0, "$this$SelectionToolbarAndHandles_u24lambda_u2414":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    const/4 v1, 0x0

    .line 1085
    .local v1, "$i$a$-with-CoreTextFieldKt$SelectionToolbarAndHandles$1":I
    if-eqz p1, :cond_c

    .line 1088
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v5, v2

    .line 1312
    .local v5, "it":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v6, 0x0

    .line 1088
    .local v6, "$i$a$-takeIf-CoreTextFieldKt$SelectionToolbarAndHandles$1$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextFieldState;->isLayoutResultStale()Z

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v4

    .end local v5    # "it":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v6    # "$i$a$-takeIf-CoreTextFieldKt$SelectionToolbarAndHandles$1$1":I
    :goto_0
    xor-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_2

    move-object v3, v2

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    :goto_1
    goto/16 :goto_5

    :cond_4
    move-object v2, v3

    .local v2, "it":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v3, 0x0

    .line 1089
    .local v3, "$i$a$-let-CoreTextFieldKt$SelectionToolbarAndHandles$1$2":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_8

    .line 1090
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v7

    invoke-interface {v5, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v5

    .line 1091
    .local v5, "startOffset":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v7

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    invoke-interface {v7, v8}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v7

    .line 1092
    .local v7, "endOffset":I
    invoke-virtual {v2, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v8

    .line 1093
    .local v8, "startDirection":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    add-int/lit8 v9, v7, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v9

    .local v9, "endDirection":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    const v10, -0x1db4c744

    invoke-interface {p2, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "1094@47925L203"

    invoke-static {p2, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroidx/compose/foundation/text/TextFieldState;->getShowSelectionHandleStart()Z

    move-result v10

    if-ne v10, v4, :cond_5

    move v10, v4

    goto :goto_2

    :cond_5
    move v10, v6

    :goto_2
    const/16 v11, 0x206

    if-eqz v10, :cond_6

    .line 1096
    nop

    .line 1097
    nop

    .line 1098
    nop

    .line 1095
    invoke-static {v4, v8, p0, p2, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1101
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroidx/compose/foundation/text/TextFieldState;->getShowSelectionHandleEnd()Z

    move-result v10

    if-ne v10, v4, :cond_7

    goto :goto_3

    :cond_7
    move v4, v6

    :goto_3
    if-eqz v4, :cond_8

    .line 1103
    nop

    .line 1104
    nop

    .line 1105
    nop

    .line 1102
    invoke-static {v6, v9, p0, p2, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 1110
    .end local v5    # "startOffset":I
    .end local v7    # "endOffset":I
    .end local v8    # "startDirection":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .end local v9    # "endDirection":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v4

    if-eqz v4, :cond_3

    .local v4, "textFieldState":Landroidx/compose/foundation/text/TextFieldState;
    const/4 v5, 0x0

    .line 1114
    .local v5, "$i$a$-let-CoreTextFieldKt$SelectionToolbarAndHandles$1$2$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->isTextChanged$foundation_release()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4, v6}, Landroidx/compose/foundation/text/TextFieldState;->setShowFloatingToolbar(Z)V

    .line 1115
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1116
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextFieldState;->getShowFloatingToolbar()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation_release()V

    goto :goto_4

    .line 1117
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    .line 1119
    :cond_b
    :goto_4
    nop

    .line 1110
    .end local v4    # "textFieldState":Landroidx/compose/foundation/text/TextFieldState;
    .end local v5    # "$i$a$-let-CoreTextFieldKt$SelectionToolbarAndHandles$1$2$1":I
    goto/16 :goto_1

    .line 1121
    .end local v2    # "it":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v3    # "$i$a$-let-CoreTextFieldKt$SelectionToolbarAndHandles$1$2":I
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    .line 1085
    :goto_5
    nop

    .line 1084
    .end local v0    # "$this$SelectionToolbarAndHandles_u24lambda_u2414":Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .end local v1    # "$i$a$-with-CoreTextFieldKt$SelectionToolbarAndHandles$1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;

    invoke-direct {v1, p0, p1, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 1123
    :cond_e
    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 1126
    move-object/from16 v0, p0

    move/from16 v1, p2

    const v2, -0x5597ad88

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(TextFieldCursorHandle)1127@49342L50,1128@49455L7,1129@49472L1101:CoreTextField.kt#423gt5"

    invoke-static {v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.text.TextFieldCursorHandle (CoreTextField.kt:1125)"

    invoke-static {v2, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1127
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextFieldState;->getShowCursorHandle()Z

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation_release()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-eqz v2, :cond_8

    .line 1128
    const/16 v2, 0x8

    .local v2, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, 0x44faf204

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v9, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1313
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object v7, v9

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 1314
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1315
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_5

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_4

    goto :goto_3

    .line 1319
    :cond_4
    move-object v12, v10

    goto :goto_4

    .line 1316
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 1128
    .local v12, "$i$a$-remember-CoreTextFieldKt$TextFieldCursorHandle$observer$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cursorDragObserver$foundation_release()Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v12

    .line 1316
    .end local v12    # "$i$a$-remember-CoreTextFieldKt$TextFieldCursorHandle$observer$1":I
    nop

    .line 1317
    .local v12, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1318
    nop

    .line 1315
    .end local v12    # "value$iv$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 1314
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1313
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1128
    .end local v2    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    move-object v2, v12

    check-cast v2, Landroidx/compose/foundation/text/TextDragObserver;

    .line 1129
    .local v2, "observer":Landroidx/compose/foundation/text/TextDragObserver;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 1320
    .local v7, "$i$f$getCurrent":I
    const v8, 0x789c5f52

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v9, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$getCurrent":I
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 1129
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCursorPosition-tuRUvjQ$foundation_release(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v10

    .line 1131
    .local v10, "position":J
    nop

    .line 1132
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 1133
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v0, v7}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v2, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 1145
    const v6, 0x118972d2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v9, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    .local v6, "invalid$iv":Z
    move-object v8, v9

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 1321
    .local v12, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1322
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v6, :cond_7

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_6

    goto :goto_5

    .line 1326
    :cond_6
    move-object v3, v13

    goto :goto_6

    .line 1323
    :cond_7
    :goto_5
    const/4 v15, 0x0

    .line 1145
    .local v15, "$i$a$-cache-CoreTextFieldKt$TextFieldCursorHandle$2":I
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    invoke-direct {v3, v10, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(J)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1323
    .end local v15    # "$i$a$-cache-CoreTextFieldKt$TextFieldCursorHandle$2":I
    nop

    .line 1324
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1325
    nop

    .line 1322
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 1321
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1145
    .end local v6    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v6, 0x1

    invoke-static {v5, v4, v3, v6, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 1153
    const/4 v6, 0x0

    const/16 v8, 0x180

    .line 1130
    move-wide v3, v10

    move-object v7, v9

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-ULxng0E(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .end local v2    # "observer":Landroidx/compose/foundation/text/TextDragObserver;
    .end local v10    # "position":J
    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3;

    invoke-direct {v3, v0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 1156
    :cond_a
    return-void
.end method

.method public static final synthetic access$CoreTextField$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 1
    .param p0, "$writeable$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField$lambda$8(Landroidx/compose/runtime/State;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p1, "show"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$endInputSession(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/foundation/text/TextFieldState;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->endInputSession(Landroidx/compose/foundation/text/TextFieldState;)V

    return-void
.end method

.method public static final synthetic access$notifyFocusedRect(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->notifyFocusedRect(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-void
.end method

.method public static final synthetic access$startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0
    .param p0, "textInputService"    # Landroidx/compose/ui/text/input/TextInputService;
    .param p1, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p2, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "imeOptions"    # Landroidx/compose/ui/text/input/ImeOptions;
    .param p4, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt;->startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-void
.end method

.method public static final synthetic access$tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p1, "focusRequester"    # Landroidx/compose/ui/focus/FocusRequester;
    .param p2, "allowKeyboard"    # Z

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V

    return-void
.end method

.method public static final bringSelectionEndIntoView(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$bringSelectionEndIntoView"    # Landroidx/compose/foundation/relocation/BringIntoViewRequester;
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "textDelegate"    # Landroidx/compose/foundation/text/TextDelegate;
    .param p3, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p4, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1060
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v0

    invoke-interface {p4, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    .line 1061
    .local v0, "selectionEndInTransformed":I
    nop

    .line 1062
    invoke-virtual {p3}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1063
    invoke-virtual {p3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    .line 1066
    :cond_0
    if-eqz v0, :cond_1

    .line 1067
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p3, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 1073
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    .line 1074
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v4

    .line 1071
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide v1

    .line 1076
    .local v1, "defaultSize":J
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v6, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    move-object v1, v3

    .line 1061
    .end local v1    # "defaultSize":J
    :goto_0
    nop

    .line 1079
    .local v1, "selectionEndBounds":Landroidx/compose/ui/geometry/Rect;
    invoke-interface {p0, v1, p5}, Landroidx/compose/foundation/relocation/BringIntoViewRequester;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    return-object v2

    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1080
    return-object v2
.end method

.method private static final endInputSession(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 5
    .param p0, "state"    # Landroidx/compose/foundation/text/TextFieldState;

    .line 1026
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "session":Landroidx/compose/ui/text/input/TextInputSession;
    const/4 v1, 0x0

    .line 1027
    .local v1, "$i$a$-let-CoreTextFieldKt$endInputSession$1":I
    sget-object v2, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onBlur$foundation_release(Landroidx/compose/ui/text/input/TextInputSession;Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;)V

    .line 1028
    nop

    .line 1026
    .end local v0    # "session":Landroidx/compose/ui/text/input/TextInputSession;
    .end local v1    # "$i$a$-let-CoreTextFieldKt$endInputSession$1":I
    nop

    .line 1029
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/TextFieldState;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 1030
    return-void
.end method

.method public static final isWindowFocusedBehindFlag(Landroidx/compose/ui/platform/WindowInfo;)Z
    .locals 1
    .param p0, "windowInfo"    # Landroidx/compose/ui/platform/WindowInfo;

    .line 1194
    const/4 v0, 0x1

    return v0
.end method

.method private static final notifyFocusedRect(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 16
    .param p0, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1175
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v2, 0x0

    .line 1327
    .local v2, "$i$f$withoutReadObservation":I
    nop

    .line 1328
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 1329
    .local v3, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1330
    move-object v4, v3

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v5, 0x0

    .line 1331
    .local v5, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v0

    .line 1332
    .local v6, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1333
    const/4 v0, 0x0

    .line 1176
    .local v0, "$i$a$-withoutReadObservation-CoreTextFieldKt$notifyFocusedRect$1":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_0

    .line 1335
    .end local v0    # "$i$a$-withoutReadObservation-CoreTextFieldKt$notifyFocusedRect$1":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v2    # "$i$f$withoutReadObservation":I
    .end local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "$i$f$enter":I
    .end local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :goto_0
    :try_start_2
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1336
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v2    # "$i$f$withoutReadObservation":I
    .restart local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    goto :goto_1

    .restart local v0    # "$i$a$-withoutReadObservation-CoreTextFieldKt$notifyFocusedRect$1":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "$i$f$enter":I
    .restart local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :cond_0
    nop

    .line 1177
    .local v7, "layoutResult":Landroidx/compose/foundation/text/TextLayoutResultProxy;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v13

    if-nez v13, :cond_1

    goto :goto_0

    .line 1336
    :cond_1
    nop

    .line 1178
    .local v13, "inputSession":Landroidx/compose/ui/text/input/TextInputSession;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_0

    .line 1336
    :cond_2
    nop

    .line 1179
    .local v12, "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    sget-object v8, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    .line 1180
    nop

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextFieldState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    move-result-object v10

    .line 1182
    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v11

    .line 1183
    nop

    .line 1184
    nop

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v14

    .line 1186
    nop

    .line 1179
    move-object/from16 v9, p1

    move-object/from16 v15, p2

    invoke-virtual/range {v8 .. v15}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->notifyFocusedRect$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V

    .line 1188
    nop

    .end local v0    # "$i$a$-withoutReadObservation-CoreTextFieldKt$notifyFocusedRect$1":I
    .end local v7    # "layoutResult":Landroidx/compose/foundation/text/TextLayoutResultProxy;
    .end local v12    # "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v13    # "inputSession":Landroidx/compose/ui/text/input/TextInputSession;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1333
    nop

    .line 1335
    :try_start_4
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1333
    nop

    .line 1336
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "$i$f$enter":I
    .end local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1330
    nop

    .line 1189
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v2    # "$i$f$withoutReadObservation":I
    .end local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    return-void

    .line 1335
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v2    # "$i$f$withoutReadObservation":I
    .restart local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "$i$f$enter":I
    .restart local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v2    # "$i$f$withoutReadObservation":I
    .end local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local p0    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .end local p1    # "value":Landroidx/compose/ui/text/input/TextFieldValue;
    .end local p2    # "offsetMapping":Landroidx/compose/ui/text/input/OffsetMapping;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1336
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "$i$f$enter":I
    .end local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v2    # "$i$f$withoutReadObservation":I
    .restart local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p0    # "state":Landroidx/compose/foundation/text/TextFieldState;
    .restart local p1    # "value":Landroidx/compose/ui/text/input/TextFieldValue;
    .restart local p2    # "offsetMapping":Landroidx/compose/ui/text/input/OffsetMapping;
    :catchall_2
    move-exception v0

    :goto_1
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0
.end method

.method private static final previewKeyEventToDeselectOnBack(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$previewKeyEventToDeselectOnBack"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p2, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 802
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 809
    return-object v0
.end method

.method private static final startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 7
    .param p0, "textInputService"    # Landroidx/compose/ui/text/input/TextInputService;
    .param p1, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p2, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "imeOptions"    # Landroidx/compose/ui/text/input/ImeOptions;
    .param p4, "offsetMapping"    # Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1014
    sget-object v0, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    .line 1015
    nop

    .line 1016
    nop

    .line 1017
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v3

    .line 1018
    nop

    .line 1019
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 1020
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnImeActionPerformed()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 1014
    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onFocus$foundation_release(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/TextFieldState;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 1022
    invoke-static {p1, p2, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt;->notifyFocusedRect(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 1023
    return-void
.end method

.method private static final tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V
    .locals 1
    .param p0, "state"    # Landroidx/compose/foundation/text/TextFieldState;
    .param p1, "focusRequester"    # Landroidx/compose/ui/focus/FocusRequester;
    .param p2, "allowKeyboard"    # Z

    .line 1000
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus()V

    goto :goto_0

    .line 1002
    :cond_0
    if-eqz p2, :cond_1

    .line 1003
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->show()V

    .line 1005
    :cond_1
    :goto_0
    return-void
.end method
