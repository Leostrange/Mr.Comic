.class public final Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "BasicText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,447:1\n74#2:448\n74#2:449\n74#2:460\n74#2:461\n74#2:490\n74#2:491\n74#2:502\n74#2:538\n67#3,3:450\n66#3:453\n286#3,8:467\n294#3,2:487\n67#3,3:492\n66#3:495\n286#3,8:508\n294#3,2:528\n25#3:531\n456#3,8:562\n464#3,6:576\n1116#4,6:454\n1116#4,6:496\n1116#4,6:532\n1116#4,6:539\n1116#4,6:545\n124#5,5:462\n130#5,5:475\n135#5:486\n137#5:489\n124#5,5:503\n130#5,5:516\n135#5:527\n137#5:530\n79#5,11:551\n92#5:582\n3737#6,6:480\n3737#6,6:521\n3737#6,6:570\n*S KotlinDebug\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n*L\n96#1:448\n98#1:449\n125#1:460\n137#1:461\n190#1:490\n192#1:491\n221#1:502\n250#1:538\n103#1:450,3\n103#1:453\n145#1:467,8\n145#1:487,2\n197#1:492,3\n197#1:495\n209#1:508,8\n209#1:528,2\n234#1:531\n237#1:562,8\n237#1:576,6\n103#1:454,6\n197#1:496,6\n234#1:532,6\n252#1:539,6\n256#1:545,6\n145#1:462,5\n145#1:475,5\n145#1:486\n145#1:489\n209#1:503,5\n209#1:516,5\n209#1:527\n209#1:530\n237#1:551,11\n237#1:582\n145#1:480,6\n209#1:521,6\n237#1:570,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0084\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0090\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001az\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001ad\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001an\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010 \u001az\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010!\u001a\u001e\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$0#2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002\u001a\u00ac\u0001\u0010\'\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010(\u001a\u00020)2\u0014\u0010*\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0,\u0018\u00010+2\u001c\u0010.\u001a\u0018\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010/0+\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u00100\u001a\u0004\u0018\u0001012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00064"
    }
    d2 = {
        "BasicText",
        "",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "onTextLayout",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "softWrap",
        "",
        "maxLines",
        "",
        "minLines",
        "inlineContent",
        "",
        "",
        "Landroidx/compose/foundation/text/InlineTextContent;",
        "BasicText-VhcvRP8",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "color",
        "Landroidx/compose/ui/graphics/ColorProducer;",
        "BasicText-RWo7tUw",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V",
        "BasicText-4YKlhWE",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "BasicText-BpD7jsM",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V",
        "selectionIdSaver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "",
        "selectionRegistrar",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
        "textModifier",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "placeholders",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/Placeholder;",
        "onPlaceholderLayout",
        "Landroidx/compose/ui/geometry/Rect;",
        "selectionController",
        "Landroidx/compose/foundation/text/modifiers/SelectionController;",
        "textModifier-RWo7tUw",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;",
        "foundation_release"
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
.method public static final synthetic BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "inlineContent"    # Ljava/util/Map;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 295
    move/from16 v11, p9

    move/from16 v10, p10

    const v0, -0x26a8f0e8

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicText)P(7,2,6,3,4:c#ui.text.style.TextOverflow,5,1)295@12678L273:BasicText.kt#423gt5"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0xe

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v10, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v11, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v7, v10, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v12, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v12, v11, 0x1c00

    if-nez v12, :cond_b

    move-object/from16 v12, p3

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v1, v13

    goto :goto_7

    :cond_b
    move-object/from16 v12, p3

    :goto_7
    and-int/lit8 v13, v10, 0x10

    const v14, 0xe000

    if-eqz v13, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v15, p4

    goto :goto_9

    :cond_c
    and-int v15, v11, v14

    if-nez v15, :cond_e

    move/from16 v15, p4

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v15, p4

    :goto_9
    and-int/lit8 v16, v10, 0x20

    const/high16 v17, 0x70000

    if-eqz v16, :cond_f

    const/high16 v18, 0x30000

    or-int v1, v1, v18

    move/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v18, v11, v17

    if-nez v18, :cond_11

    move/from16 v14, p5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v1, v1, v18

    goto :goto_b

    :cond_11
    move/from16 v14, p5

    :goto_b
    and-int/lit8 v18, v10, 0x40

    const/high16 v19, 0x380000

    if-eqz v18, :cond_12

    const/high16 v20, 0x180000

    or-int v1, v1, v20

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v20, v11, v19

    if-nez v20, :cond_14

    move/from16 v0, p6

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v5, v10, 0x80

    if-eqz v5, :cond_15

    const/high16 v22, 0x400000

    or-int v1, v1, v22

    :cond_15
    const/16 v0, 0x80

    if-ne v5, v0, :cond_17

    const v0, 0x16db6db

    and-int/2addr v0, v1

    const v3, 0x492492

    if-ne v0, v3, :cond_17

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_e

    .line 307
    :cond_16
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object v13, v6

    move/from16 v16, v14

    move-object v14, v12

    move-object/from16 v12, p1

    goto/16 :goto_15

    .line 295
    :cond_17
    :goto_e
    if-eqz v2, :cond_18

    .line 288
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 295
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object/from16 v0, p1

    .line 288
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v4, :cond_19

    .line 289
    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object v6, v2

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v6, "style":Landroidx/compose/ui/text/TextStyle;
    :cond_19
    if-eqz v7, :cond_1a

    .line 290
    const/4 v2, 0x0

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v2, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_10

    .line 289
    .end local v2    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1a
    move-object v2, v12

    .line 290
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_10
    if-eqz v13, :cond_1b

    .line 291
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v3

    .end local p4    # "overflow":I
    .local v3, "overflow":I
    goto :goto_11

    .line 290
    .end local v3    # "overflow":I
    .restart local p4    # "overflow":I
    :cond_1b
    move v3, v15

    .line 291
    .end local p4    # "overflow":I
    .restart local v3    # "overflow":I
    :goto_11
    if-eqz v16, :cond_1c

    .line 292
    const/4 v4, 0x1

    .end local p5    # "softWrap":Z
    .local v4, "softWrap":Z
    goto :goto_12

    .line 291
    .end local v4    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1c
    move v4, v14

    .line 292
    .end local p5    # "softWrap":Z
    .restart local v4    # "softWrap":Z
    :goto_12
    if-eqz v18, :cond_1d

    .line 293
    const v7, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v7, "maxLines":I
    goto :goto_13

    .line 292
    .end local v7    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_1d
    move/from16 v7, p6

    .line 293
    .end local p6    # "maxLines":I
    .restart local v7    # "maxLines":I
    :goto_13
    if-eqz v5, :cond_1e

    .line 294
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .end local p7    # "inlineContent":Ljava/util/Map;
    .local v5, "inlineContent":Ljava/util/Map;
    goto :goto_14

    .line 293
    .end local v5    # "inlineContent":Ljava/util/Map;
    .restart local p7    # "inlineContent":Ljava/util/Map;
    :cond_1e
    move-object/from16 v5, p7

    .line 294
    .end local p7    # "inlineContent":Ljava/util/Map;
    .restart local v5    # "inlineContent":Ljava/util/Map;
    :goto_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 295
    const/4 v12, -0x1

    const-string/jumbo v13, "androidx.compose.foundation.text.BasicText (BasicText.kt:294)"

    const v14, -0x26a8f0e8

    invoke-static {v14, v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 297
    :cond_1f
    nop

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 301
    nop

    .line 302
    nop

    .line 304
    nop

    .line 303
    const/16 v20, 0x1

    .line 305
    const/16 v21, 0x0

    const/high16 v12, 0x8c00000

    and-int/lit8 v13, v1, 0xe

    or-int/2addr v12, v13

    and-int/lit8 v13, v1, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v1, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v13, v1, 0x1c00

    or-int/2addr v12, v13

    const v13, 0xe000

    and-int/2addr v13, v1

    or-int/2addr v12, v13

    and-int v13, v1, v17

    or-int/2addr v12, v13

    and-int v13, v1, v19

    or-int v23, v12, v13

    const/16 v24, 0x200

    .line 296
    move-object/from16 v12, p0

    move-object v13, v0

    move-object v14, v6

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v20

    move-object/from16 v20, v5

    move-object/from16 v22, v9

    invoke-static/range {v12 .. v24}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 307
    :cond_20
    move-object v12, v0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v18, v5

    move-object v13, v6

    move/from16 v17, v7

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v3    # "overflow":I
    .end local v4    # "softWrap":Z
    .end local v5    # "inlineContent":Ljava/util/Map;
    .end local v6    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v7    # "maxLines":I
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "style":Landroidx/compose/ui/text/TextStyle;
    .local v14, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v15, "overflow":I
    .local v16, "softWrap":Z
    .local v17, "maxLines":I
    .local v18, "inlineContent":Ljava/util/Map;
    :goto_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_21

    new-instance v19, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;

    move-object/from16 v0, v19

    move/from16 v20, v1

    .end local v1    # "$dirty":I
    .local v20, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move-object v11, v7

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v21, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_16

    .end local v20    # "$dirty":I
    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_21
    move/from16 v20, v1

    move-object/from16 v21, v9

    .end local v1    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$dirty":I
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_16
    return-void
.end method

.method public static final synthetic BasicText-4YKlhWE(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compat"
    .end annotation

    .line 320
    move/from16 v11, p9

    move/from16 v10, p10

    const v0, 0x5bf3fbc9

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicText)P(7,2,6,3,4:c#ui.text.style.TextOverflow,5)319@13349L86:BasicText.kt#423gt5"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0xe

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v10, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, v10, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v11, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v12, v10, 0x10

    const v13, 0xe000

    if-eqz v12, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v14, p4

    goto :goto_9

    :cond_c
    and-int v14, v11, v13

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v14, p4

    :goto_9
    and-int/lit8 v15, v10, 0x20

    const/high16 v16, 0x70000

    if-eqz v15, :cond_f

    const/high16 v17, 0x30000

    or-int v1, v1, v17

    move/from16 v13, p5

    goto :goto_b

    :cond_f
    and-int v17, v11, v16

    if-nez v17, :cond_11

    move/from16 v13, p5

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_11
    move/from16 v13, p5

    :goto_b
    and-int/lit8 v17, v10, 0x40

    const/high16 v18, 0x380000

    if-eqz v17, :cond_12

    const/high16 v19, 0x180000

    or-int v1, v1, v19

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v19, v11, v18

    if-nez v19, :cond_14

    move/from16 v0, p6

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v10, 0x80

    const/high16 v20, 0x1c00000

    if-eqz v0, :cond_15

    const/high16 v21, 0xc00000

    or-int v1, v1, v21

    move/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v21, v11, v20

    if-nez v21, :cond_17

    move/from16 v3, p7

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v21, 0x400000

    :goto_e
    or-int v1, v1, v21

    goto :goto_f

    :cond_17
    move/from16 v3, p7

    :goto_f
    const v21, 0x16db6db

    and-int v3, v1, v21

    const v5, 0x492492

    if-ne v3, v5, :cond_19

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_10

    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v12, p1

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v16, v13

    move v15, v14

    move-object/from16 v13, p2

    move-object v14, v7

    goto/16 :goto_17

    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    .line 313
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_11

    .line 320
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1a
    move-object/from16 v2, p1

    .line 313
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    if-eqz v4, :cond_1b

    .line 314
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_12

    .line 313
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1b
    move-object/from16 v3, p2

    .line 314
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    :goto_12
    if-eqz v6, :cond_1c

    .line 315
    const/4 v4, 0x0

    move-object v7, v4

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1c
    if-eqz v12, :cond_1d

    .line 316
    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v4

    .end local p4    # "overflow":I
    .local v4, "overflow":I
    goto :goto_13

    .line 315
    .end local v4    # "overflow":I
    .restart local p4    # "overflow":I
    :cond_1d
    move v4, v14

    .line 316
    .end local p4    # "overflow":I
    .restart local v4    # "overflow":I
    :goto_13
    if-eqz v15, :cond_1e

    .line 317
    const/4 v5, 0x1

    .end local p5    # "softWrap":Z
    .local v5, "softWrap":Z
    goto :goto_14

    .line 316
    .end local v5    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1e
    move v5, v13

    .line 317
    .end local p5    # "softWrap":Z
    .restart local v5    # "softWrap":Z
    :goto_14
    if-eqz v17, :cond_1f

    .line 318
    const v6, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v6, "maxLines":I
    goto :goto_15

    .line 317
    .end local v6    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_1f
    move/from16 v6, p6

    .line 318
    .end local p6    # "maxLines":I
    .restart local v6    # "maxLines":I
    :goto_15
    if-eqz v0, :cond_20

    .line 319
    const/4 v0, 0x1

    .end local p7    # "minLines":I
    .local v0, "minLines":I
    goto :goto_16

    .line 318
    .end local v0    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_20
    move/from16 v0, p7

    .line 319
    .end local p7    # "minLines":I
    .restart local v0    # "minLines":I
    :goto_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_21

    .line 320
    const/4 v12, -0x1

    const-string/jumbo v13, "androidx.compose.foundation.text.BasicText (BasicText.kt:319)"

    const v14, 0x5bf3fbc9

    invoke-static {v14, v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    const/16 v21, 0x0

    and-int/lit8 v12, v1, 0xe

    and-int/lit8 v13, v1, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v1, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v13, v1, 0x1c00

    or-int/2addr v12, v13

    const v13, 0xe000

    and-int/2addr v13, v1

    or-int/2addr v12, v13

    and-int v13, v1, v16

    or-int/2addr v12, v13

    and-int v13, v1, v18

    or-int/2addr v12, v13

    and-int v13, v1, v20

    or-int v22, v12, v13

    const/16 v23, 0x100

    move-object/from16 v12, p0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v7

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v0

    move-object/from16 v20, v21

    move-object/from16 v21, v9

    invoke-static/range {v12 .. v23}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    move/from16 v18, v0

    move-object v12, v2

    move-object v13, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v14, v7

    .end local v0    # "minLines":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v4    # "overflow":I
    .end local v5    # "softWrap":Z
    .end local v6    # "maxLines":I
    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "style":Landroidx/compose/ui/text/TextStyle;
    .local v14, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v15, "overflow":I
    .local v16, "softWrap":Z
    .local v17, "maxLines":I
    .local v18, "minLines":I
    :goto_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_23

    new-instance v19, Landroidx/compose/foundation/text/BasicTextKt$BasicText$8;

    move-object/from16 v0, v19

    move/from16 v20, v1

    .end local v1    # "$dirty":I
    .local v20, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move-object v11, v7

    move/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v21, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$8;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIII)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_18

    .end local v20    # "$dirty":I
    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_23
    move/from16 v20, v1

    move-object/from16 v21, v9

    .end local v1    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$dirty":I
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_18
    return-void
.end method

.method public static final synthetic BasicText-BpD7jsM(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    .line 271
    move/from16 v10, p8

    const v0, 0x3cf10926

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicText)P(6,1,5,2,3:c#ui.text.style.TextOverflow,4)271@11987L234:BasicText.kt#423gt5"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v10, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v10, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v11, p9, 0x10

    const v12, 0xe000

    if-eqz v11, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int v13, v10, v12

    if-nez v13, :cond_e

    move/from16 v13, p4

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p9, 0x20

    const/high16 v15, 0x70000

    if-eqz v14, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int v16, v10, v15

    if-nez v16, :cond_11

    move/from16 v15, p5

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v15, p5

    :goto_b
    and-int/lit8 v16, p9, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move/from16 v12, p6

    goto :goto_d

    :cond_12
    and-int v18, v10, v17

    if-nez v18, :cond_14

    move/from16 v12, p6

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v1, v1, v19

    goto :goto_d

    :cond_14
    move/from16 v12, p6

    :goto_d
    const v19, 0x2db6db

    and-int v0, v1, v19

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 282
    :cond_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p1

    move/from16 v16, v12

    move v14, v13

    move-object v12, v5

    move-object v13, v7

    goto/16 :goto_14

    .line 271
    :cond_16
    :goto_e
    if-eqz v2, :cond_17

    .line 265
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 271
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object/from16 v0, p1

    .line 265
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v4, :cond_18

    .line 266
    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v2, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_10

    .line 265
    .end local v2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_18
    move-object v2, v5

    .line 266
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v2    # "style":Landroidx/compose/ui/text/TextStyle;
    :goto_10
    if-eqz v6, :cond_19

    .line 267
    const/4 v3, 0x0

    move-object v7, v3

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v7, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_19
    if-eqz v11, :cond_1a

    .line 268
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v3

    .end local p4    # "overflow":I
    .local v3, "overflow":I
    goto :goto_11

    .line 267
    .end local v3    # "overflow":I
    .restart local p4    # "overflow":I
    :cond_1a
    move v3, v13

    .line 268
    .end local p4    # "overflow":I
    .restart local v3    # "overflow":I
    :goto_11
    if-eqz v14, :cond_1b

    .line 269
    const/4 v4, 0x1

    .end local p5    # "softWrap":Z
    .local v4, "softWrap":Z
    goto :goto_12

    .line 268
    .end local v4    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1b
    move v4, v15

    .line 269
    .end local p5    # "softWrap":Z
    .restart local v4    # "softWrap":Z
    :goto_12
    if-eqz v16, :cond_1c

    .line 270
    const v5, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v5, "maxLines":I
    goto :goto_13

    .line 269
    .end local v5    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_1c
    move v5, v12

    .line 270
    .end local p6    # "maxLines":I
    .restart local v5    # "maxLines":I
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 271
    const/4 v6, -0x1

    const-string/jumbo v11, "androidx.compose.foundation.text.BasicText (BasicText.kt:270)"

    const v12, 0x3cf10926

    invoke-static {v12, v1, v6, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 273
    :cond_1d
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 280
    nop

    .line 279
    const/4 v6, 0x1

    const/16 v19, 0x0

    const/high16 v11, 0xc00000

    and-int/lit8 v12, v1, 0xe

    or-int/2addr v11, v12

    and-int/lit8 v12, v1, 0x70

    or-int/2addr v11, v12

    and-int/lit16 v12, v1, 0x380

    or-int/2addr v11, v12

    and-int/lit16 v12, v1, 0x1c00

    or-int/2addr v11, v12

    const v12, 0xe000

    and-int/2addr v12, v1

    or-int/2addr v11, v12

    const/high16 v12, 0x70000

    and-int/2addr v12, v1

    or-int/2addr v11, v12

    and-int v12, v1, v17

    or-int v21, v11, v12

    const/16 v22, 0x100

    .line 272
    move-object/from16 v11, p0

    move-object v12, v0

    move-object v13, v2

    move-object v14, v7

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v20, v9

    invoke-static/range {v11 .. v22}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 282
    :cond_1e
    move-object v11, v0

    move-object v12, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move-object v13, v7

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v3    # "overflow":I
    .end local v4    # "softWrap":Z
    .end local v5    # "maxLines":I
    .end local v7    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "style":Landroidx/compose/ui/text/TextStyle;
    .local v13, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v14, "overflow":I
    .local v15, "softWrap":Z
    .local v16, "maxLines":I
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_1f

    new-instance v17, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;

    move-object/from16 v0, v17

    move/from16 v18, v1

    .end local v1    # "$dirty":I
    .local v18, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    move v6, v15

    move-object v10, v7

    move/from16 v7, v16

    move/from16 v8, p8

    move-object/from16 v19, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIII)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v18    # "$dirty":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1f
    move/from16 v18, v1

    move-object/from16 v19, v9

    .end local v1    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$dirty":I
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_15
    return-void
.end method

.method public static final BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 53
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "inlineContent"    # Ljava/util/Map;
    .param p9, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 185
    move-object/from16 v15, p0

    move/from16 v14, p11

    move/from16 v13, p12

    const v0, -0x3f70023c

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicText)P(9,4,8,5,6:c#ui.text.style.TextOverflow,7,2,3,1)189@8865L7:BasicText.kt#423gt5"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, v13, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v7, v13, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v9, v13, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v10, p4

    goto :goto_9

    :cond_c
    const v10, 0xe000

    and-int/2addr v10, v14

    if-nez v10, :cond_e

    move/from16 v10, p4

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v1, v11

    goto :goto_9

    :cond_e
    move/from16 v10, p4

    :goto_9
    and-int/lit8 v11, v13, 0x20

    if-eqz v11, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v3, p5

    goto :goto_b

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v14, v16

    if-nez v16, :cond_11

    move/from16 v3, p5

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v3, p5

    :goto_b
    and-int/lit8 v16, v13, 0x40

    if-eqz v16, :cond_12

    const/high16 v17, 0x180000

    or-int v1, v1, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v14, v17

    if-nez v17, :cond_14

    move/from16 v0, p6

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_14
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_15

    const/high16 v18, 0xc00000

    or-int v1, v1, v18

    move/from16 v3, p7

    goto :goto_f

    :cond_15
    const/high16 v18, 0x1c00000

    and-int v18, v14, v18

    if-nez v18, :cond_17

    move/from16 v3, p7

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_17
    move/from16 v3, p7

    :goto_f
    and-int/lit16 v3, v13, 0x100

    if-eqz v3, :cond_18

    const/high16 v18, 0x2000000

    or-int v1, v1, v18

    :cond_18
    and-int/lit16 v4, v13, 0x200

    if-eqz v4, :cond_19

    const/high16 v18, 0x10000000

    or-int v1, v1, v18

    :cond_19
    and-int/lit16 v6, v13, 0x300

    const/16 v8, 0x300

    if-ne v6, v8, :cond_1b

    const v6, 0x5b6db6db

    and-int/2addr v6, v1

    const v8, 0x12492492

    if-ne v6, v8, :cond_1b

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_10

    .line 259
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v41, p1

    move-object/from16 v42, p2

    move-object/from16 v43, p3

    move/from16 v45, p5

    move/from16 v52, p6

    move/from16 v51, p7

    move-object/from16 v50, p8

    move-object/from16 v46, p9

    move/from16 v48, v1

    move/from16 v44, v10

    move-object v10, v12

    move-object v9, v15

    goto/16 :goto_29

    .line 185
    :cond_1b
    :goto_10
    if-eqz v2, :cond_1c

    .line 176
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v41, v2

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_11

    .line 185
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1c
    move-object/from16 v41, p1

    .line 176
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v41, "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    if-eqz v5, :cond_1d

    .line 177
    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v42, v2

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v2, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_12

    .line 176
    .end local v2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1d
    move-object/from16 v42, p2

    .line 177
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v42, "style":Landroidx/compose/ui/text/TextStyle;
    :goto_12
    if-eqz v7, :cond_1e

    .line 178
    const/4 v2, 0x0

    move-object/from16 v43, v2

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v2, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_13

    .line 177
    .end local v2    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1e
    move-object/from16 v43, p3

    .line 178
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v43, "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_13
    if-eqz v9, :cond_1f

    .line 179
    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v2

    move/from16 v44, v2

    .end local p4    # "overflow":I
    .local v2, "overflow":I
    goto :goto_14

    .line 178
    .end local v2    # "overflow":I
    .restart local p4    # "overflow":I
    :cond_1f
    move/from16 v44, v10

    .line 179
    .end local p4    # "overflow":I
    .local v44, "overflow":I
    :goto_14
    if-eqz v11, :cond_20

    .line 180
    const/4 v2, 0x1

    move/from16 v45, v2

    .end local p5    # "softWrap":Z
    .local v2, "softWrap":Z
    goto :goto_15

    .line 179
    .end local v2    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_20
    move/from16 v45, p5

    .line 180
    .end local p5    # "softWrap":Z
    .local v45, "softWrap":Z
    :goto_15
    if-eqz v16, :cond_21

    .line 181
    const v2, 0x7fffffff

    move v10, v2

    .end local p6    # "maxLines":I
    .local v2, "maxLines":I
    goto :goto_16

    .line 180
    .end local v2    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_21
    move/from16 v10, p6

    .line 181
    .end local p6    # "maxLines":I
    .local v10, "maxLines":I
    :goto_16
    if-eqz v0, :cond_22

    .line 182
    const/4 v0, 0x1

    move v9, v0

    .end local p7    # "minLines":I
    .local v0, "minLines":I
    goto :goto_17

    .line 181
    .end local v0    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_22
    move/from16 v9, p7

    .line 182
    .end local p7    # "minLines":I
    .local v9, "minLines":I
    :goto_17
    if-eqz v3, :cond_23

    .line 183
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v8, v0

    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v0, "inlineContent":Ljava/util/Map;
    goto :goto_18

    .line 182
    .end local v0    # "inlineContent":Ljava/util/Map;
    .restart local p8    # "inlineContent":Ljava/util/Map;
    :cond_23
    move-object/from16 v8, p8

    .line 183
    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v8, "inlineContent":Ljava/util/Map;
    :goto_18
    if-eqz v4, :cond_24

    .line 184
    const/4 v0, 0x0

    move-object/from16 v46, v0

    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v0, "color":Landroidx/compose/ui/graphics/ColorProducer;
    goto :goto_19

    .line 183
    .end local v0    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_24
    move-object/from16 v46, p9

    .line 184
    .end local p9    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v46, "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_19
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 185
    const/4 v0, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:184)"

    const v3, -0x3f70023c

    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 187
    :cond_25
    nop

    .line 188
    nop

    .line 186
    invoke-static {v9, v10}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    .line 190
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 490
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 190
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .local v7, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    const v0, 0x392ce1f3

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "191@9001L7,193@9064L152,196@9225L234"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 191
    const/4 v6, 0x0

    if-eqz v7, :cond_28

    .line 192
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x6

    .local v3, "$changed$iv":I
    const/4 v11, 0x0

    .line 491
    .local v11, "$i$f$getCurrent":I
    invoke-static {v12, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v11    # "$i$f$getCurrent":I
    check-cast v16, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 192
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v2

    .line 194
    .local v2, "backgroundSelectionColor":J
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7}, Landroidx/compose/foundation/text/BasicTextKt;->selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectionController$selectableId$2;

    invoke-direct {v0, v7}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectionController$selectableId$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x48

    const/16 v20, 0x4

    move-object/from16 p1, v11

    move-object/from16 p2, v16

    move-object/from16 p3, v17

    move-object/from16 p4, v0

    move-object/from16 p5, v12

    move/from16 p6, v19

    move/from16 p7, v20

    invoke-static/range {p1 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    .line 193
    move-wide/from16 p2, v16

    .local p2, "selectableId":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v11

    .line 197
    move/from16 v16, v6

    .local v0, "key1$iv":Ljava/lang/Object;
    .local v11, "key3$iv":Ljava/lang/Object;
    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$remember":I
    const v6, 0x607fb4c4

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 492
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 493
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    .line 492
    or-int v6, v6, v19

    .line 494
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    .line 492
    or-int v6, v6, v19

    .line 495
    move-object/from16 v19, v12

    .local v6, "invalid$iv$iv":Z
    .local v19, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 496
    .local v20, "$i$f$cache":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 497
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_27

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v23, v0

    .end local v0    # "key1$iv":Ljava/lang/Object;
    .local v23, "key1$iv":Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_26

    goto :goto_1a

    .line 501
    :cond_26
    move/from16 v48, v1

    move-object v0, v4

    move-object/from16 v1, v19

    goto :goto_1b

    .line 497
    .end local v23    # "key1$iv":Ljava/lang/Object;
    .restart local v0    # "key1$iv":Ljava/lang/Object;
    :cond_27
    move-object/from16 v23, v0

    .line 498
    .end local v0    # "key1$iv":Ljava/lang/Object;
    .restart local v23    # "key1$iv":Ljava/lang/Object;
    :goto_1a
    const/4 v0, 0x0

    .line 198
    .local v0, "$i$a$-remember-BasicTextKt$BasicText$selectionController$2":I
    new-instance v22, Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 198
    const/16 v24, 0x0

    const/16 v25, 0x8

    const/16 v26, 0x0

    move-object/from16 p1, v22

    move-object/from16 p4, v7

    move-wide/from16 p5, v2

    move-object/from16 p7, v24

    move/from16 p8, v25

    move-object/from16 p9, v26

    invoke-direct/range {p1 .. p9}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 498
    .end local v0    # "$i$a$-remember-BasicTextKt$BasicText$selectionController$2":I
    move-object/from16 v0, v22

    .line 499
    .local v0, "value$iv$iv":Ljava/lang/Object;
    move/from16 v48, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v48, "$dirty":I
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 500
    nop

    .line 497
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_1b
    nop

    .line 496
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 495
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "invalid$iv$iv":Z
    .end local v20    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "backgroundSelectionColor":J
    .end local v11    # "key3$iv":Ljava/lang/Object;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$remember":I
    .end local v23    # "key1$iv":Ljava/lang/Object;
    .end local p2    # "selectableId":J
    check-cast v0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    move-object v11, v0

    goto :goto_1c

    .line 205
    .end local v48    # "$dirty":I
    .local v1, "$dirty":I
    :cond_28
    move/from16 v48, v1

    .end local v1    # "$dirty":I
    .restart local v48    # "$dirty":I
    const/4 v11, 0x0

    .line 191
    :goto_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 207
    .local v11, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->hasInlineContent(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v0

    const/16 v49, 0x6

    if-nez v0, :cond_2d

    const v0, 0x392ce462

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "220@10119L7,208@9605L768"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 210
    nop

    .line 212
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v41

    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 502
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    invoke-static {v12, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object/from16 v16, v4

    check-cast v16, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 222
    const/16 v17, 0x0

    .line 223
    const/16 v18, 0x0

    .line 224
    nop

    .line 225
    nop

    .line 213
    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move/from16 v4, v44

    move/from16 v5, v45

    const/4 v14, 0x0

    move v6, v10

    move-object/from16 v47, v7

    .end local v7    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local v47, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    move v7, v9

    move-object/from16 v50, v8

    .end local v8    # "inlineContent":Ljava/util/Map;
    .local v50, "inlineContent":Ljava/util/Map;
    move-object/from16 v8, v16

    move/from16 v51, v9

    .end local v9    # "minLines":I
    .local v51, "minLines":I
    move-object/from16 v9, v17

    move/from16 v52, v10

    .end local v10    # "maxLines":I
    .local v52, "maxLines":I
    move-object/from16 v10, v18

    move-object v14, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, v46

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 227
    sget-object v1, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 209
    nop

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v1, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v2, 0x30

    .restart local v2    # "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Layout":I
    const v4, 0x207baf9a

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Layout)P(1)123@4784L23,126@4935L385:Layout.kt#80mrfh"

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 503
    const/4 v4, 0x0

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v4

    .line 504
    .local v4, "compositeKeyHash$iv":I
    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 505
    .local v5, "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 507
    .local v6, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 506
    move/from16 v8, v49

    .local v7, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "$changed$iv$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$ReusableComposeNode":I
    const v10, 0x53ca7ea5

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(ReusableComposeNode):Composables.kt#9igjgp"

    invoke-static {v14, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 508
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 509
    :cond_29
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 510
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 511
    new-instance v10, Landroidx/compose/foundation/text/BasicTextKt$BasicText-RWo7tUw$$inlined$Layout$1;

    invoke-direct {v10, v7}, Landroidx/compose/foundation/text/BasicTextKt$BasicText-RWo7tUw$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    .line 513
    :cond_2a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 515
    :goto_1d
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 516
    .local v12, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p1, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p1, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 517
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 518
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 520
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v16, 0x0

    .line 521
    .local v16, "$i$f$set-impl":I
    move-object/from16 p2, v10

    .local p2, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 522
    .local v17, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v18

    if-nez v18, :cond_2c

    move-object/from16 p3, v1

    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local p3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move/from16 p4, v2

    .end local v2    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_1e

    :cond_2b
    move-object/from16 v2, p2

    goto :goto_1f

    .end local p3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p4    # "$changed$iv":I
    .restart local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "$changed$iv":I
    :cond_2c
    move-object/from16 p3, v1

    move/from16 p4, v2

    .line 523
    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v2    # "$changed$iv":I
    .restart local p3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local p4    # "$changed$iv":I
    :goto_1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p2

    .end local p2    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 526
    :goto_1f
    nop

    .line 521
    .end local v2    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 526
    nop

    .line 527
    .end local v0    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$f$set-impl":I
    nop

    .line 515
    .end local v10    # "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    nop

    .line 528
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 529
    nop

    .end local v7    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$changed$iv$iv":I
    .end local v9    # "$i$f$ReusableComposeNode":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 530
    nop

    .line 207
    .end local v3    # "$i$f$Layout":I
    .end local v4    # "compositeKeyHash$iv":I
    .end local v5    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p4    # "$changed$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v10, v14

    move-object v9, v15

    goto/16 :goto_28

    .line 229
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v47    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local v50    # "inlineContent":Ljava/util/Map;
    .end local v51    # "minLines":I
    .end local v52    # "maxLines":I
    .local v7, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local v8, "inlineContent":Ljava/util/Map;
    .local v9, "minLines":I
    .local v10, "maxLines":I
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    :cond_2d
    move-object/from16 v47, v7

    move-object/from16 v50, v8

    move/from16 v51, v9

    move/from16 v52, v10

    move-object v14, v12

    .end local v7    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .end local v8    # "inlineContent":Ljava/util/Map;
    .end local v9    # "minLines":I
    .end local v10    # "maxLines":I
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v47    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .restart local v50    # "inlineContent":Ljava/util/Map;
    .restart local v51    # "minLines":I
    .restart local v52    # "maxLines":I
    const v0, 0x392ce7bd

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "233@10597L81,249@11260L7,236@10687L908"

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 231
    nop

    .line 232
    nop

    .line 231
    move-object/from16 v0, v50

    .end local v50    # "inlineContent":Ljava/util/Map;
    .local v0, "inlineContent":Ljava/util/Map;
    invoke-static {v15, v0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->resolveInlineContent(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "placeholders":Ljava/util/List;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 234
    .local v1, "inlineComposables":Ljava/util/List;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v7, -0x1d58f75c

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v14, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 531
    const/4 v7, 0x0

    .local v7, "invalid$iv$iv":Z
    move-object v8, v14

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 532
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 533
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v10, v3, :cond_2e

    .line 534
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$a$-remember-BasicTextKt$BasicText$measuredPlaceholderPositions$1":I
    move-object/from16 v50, v0

    move/from16 p2, v3

    const/4 v0, 0x2

    const/4 v3, 0x0

    .end local v0    # "inlineContent":Ljava/util/Map;
    .end local v3    # "$i$a$-remember-BasicTextKt$BasicText$measuredPlaceholderPositions$1":I
    .restart local v50    # "inlineContent":Ljava/util/Map;
    .local p2, "$i$a$-remember-BasicTextKt$BasicText$measuredPlaceholderPositions$1":I
    invoke-static {v3, v3, v0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 534
    .end local p2    # "$i$a$-remember-BasicTextKt$BasicText$measuredPlaceholderPositions$1":I
    nop

    .line 535
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 536
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_20

    .line 537
    .end local v50    # "inlineContent":Ljava/util/Map;
    .local v0, "inlineContent":Ljava/util/Map;
    :cond_2e
    move-object/from16 v50, v0

    .end local v0    # "inlineContent":Ljava/util/Map;
    .restart local v50    # "inlineContent":Ljava/util/Map;
    move-object v0, v10

    .line 533
    :goto_20
    nop

    .line 532
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 531
    .end local v7    # "invalid$iv$iv":Z
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 234
    .end local v4    # "$changed$iv":I
    .end local v6    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 239
    .local v0, "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    nop

    .line 241
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v41

    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .restart local v4    # "$changed$iv":I
    const/4 v6, 0x0

    .line 538
    .local v6, "$i$f$getCurrent":I
    const v7, 0x789c5f52

    invoke-static {v14, v7, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v6    # "$i$f$getCurrent":I
    move-object/from16 v20, v5

    check-cast v20, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 251
    const v3, 0x2219fbc5

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 252
    nop

    .local v3, "invalid$iv":Z
    move-object v4, v14

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 539
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 540
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_30

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_2f

    goto :goto_21

    .line 544
    :cond_2f
    move-object v8, v6

    goto :goto_22

    .line 541
    :cond_30
    :goto_21
    const/4 v8, 0x0

    .line 252
    .local v8, "$i$a$-cache-BasicTextKt$BasicText$3":I
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3$1;

    invoke-direct {v9, v0}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 541
    .end local v8    # "$i$a$-cache-BasicTextKt$BasicText$3":I
    move-object v8, v9

    .line 542
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 543
    nop

    .line 540
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 539
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 252
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object/from16 v22, v8

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 253
    nop

    .line 254
    nop

    .line 242
    move-object/from16 v13, p0

    move-object v10, v14

    const/4 v3, 0x0

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v14, v42

    move-object v9, v15

    move-object/from16 v15, v43

    move/from16 v16, v44

    move/from16 v17, v45

    move/from16 v18, v52

    move/from16 v19, v51

    move-object/from16 v21, v2

    move-object/from16 v23, v11

    move-object/from16 v24, v46

    invoke-static/range {v12 .. v24}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 256
    const v5, 0x2219fc88

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid$iv":Z
    move-object v6, v10

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 545
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 546
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_32

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v8, v13, :cond_31

    goto :goto_23

    .line 550
    :cond_31
    move-object v13, v8

    goto :goto_24

    .line 547
    :cond_32
    :goto_23
    const/4 v13, 0x0

    .line 256
    .local v13, "$i$a$-cache-BasicTextKt$BasicText$4":I
    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4$1;

    invoke-direct {v14, v0}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 547
    .end local v13    # "$i$a$-cache-BasicTextKt$BasicText$4":I
    move-object v13, v14

    .line 548
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 549
    nop

    .line 546
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_24
    nop

    .line 545
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 256
    .end local v5    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-instance v5, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v5, v13}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 237
    move v6, v3

    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$Layout":I
    const v8, -0x4ee9b9da

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v10, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 551
    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 552
    .local v3, "compositeKeyHash$iv":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 554
    .local v8, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 561
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v13

    shl-int/lit8 v14, v6, 0x9

    and-int/lit16 v14, v14, 0x1c00

    or-int/lit8 v14, v14, 0x6

    .line 553
    nop

    .local v12, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    .line 562
    .local v15, "$i$f$ReusableComposeNode":I
    move-object/from16 p1, v0

    .end local v0    # "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    .local p1, "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 563
    :cond_33
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 564
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 565
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_25

    .line 567
    :cond_34
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 569
    :goto_25
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 556
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p2, v2

    .end local v2    # "placeholders":Ljava/util/List;
    .local p2, "placeholders":Ljava/util/List;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 557
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 559
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 570
    .local v17, "$i$f$set-impl":I
    move-object/from16 p3, v0

    .local p3, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 571
    .local v18, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-nez v19, :cond_36

    move-object/from16 p4, v4

    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p4, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 p5, v5

    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local p5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_26

    :cond_35
    move-object/from16 v5, p3

    goto :goto_27

    .end local p4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_36
    move-object/from16 p4, v4

    move-object/from16 p5, v5

    .line 572
    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local p4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local p5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p3

    .end local p3    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 575
    :goto_27
    nop

    .line 570
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 575
    nop

    .line 560
    .end local v2    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 569
    .end local v0    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 576
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v14, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v10, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const v0, 0x7ab4aae9

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 578
    shr-int/lit8 v0, v14, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed":I
    move-object v2, v10

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 238
    .local v4, "$i$a$-Layout-BasicTextKt$BasicText$2":I
    const v5, 0x5082892c

    move/from16 p3, v0

    .end local v0    # "$changed":I
    .local p3, "$changed":I
    const-string v0, "C237@10719L63:BasicText.kt#423gt5"

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v48, 0xe

    or-int/lit8 v0, v0, 0x40

    invoke-static {v9, v1, v2, v0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 578
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$a$-Layout-BasicTextKt$BasicText$2":I
    .end local p3    # "$changed":I
    nop

    .line 579
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 580
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 581
    nop

    .end local v12    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$ReusableComposeNode":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 582
    nop

    .line 229
    .end local v1    # "inlineComposables":Ljava/util/List;
    .end local v3    # "compositeKeyHash$iv":I
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$Layout":I
    .end local v8    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p1    # "measuredPlaceholderPositions":Landroidx/compose/runtime/MutableState;
    .end local p2    # "placeholders":Ljava/util/List;
    .end local p4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_28
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 259
    .end local v11    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local v47    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :cond_37
    :goto_29
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_38

    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$BasicText$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    move/from16 v5, v44

    move/from16 v6, v45

    move/from16 v7, v52

    move/from16 v8, v51

    move-object/from16 v9, v50

    move-object v15, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v46

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$5;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2a

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_38
    move-object v15, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_2a
    return-void
.end method

.method public static final synthetic BasicText-VhcvRP8(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "inlineContent"    # Ljava/util/Map;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compat"
    .end annotation

    .line 334
    move/from16 v12, p10

    move/from16 v11, p11

    const v0, 0x32bf773b

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicText)P(8,3,7,4,5:c#ui.text.style.TextOverflow,6,1,2)333@13901L240:BasicText.kt#423gt5"

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

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v12, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v12, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v1, v13

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v13, v11, 0x10

    const v14, 0xe000

    if-eqz v13, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v15, p4

    goto :goto_9

    :cond_c
    and-int v15, v12, v14

    if-nez v15, :cond_e

    move/from16 v15, p4

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v15, p4

    :goto_9
    and-int/lit8 v16, v11, 0x20

    const/high16 v17, 0x70000

    if-eqz v16, :cond_f

    const/high16 v18, 0x30000

    or-int v1, v1, v18

    move/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v18, v12, v17

    if-nez v18, :cond_11

    move/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v1, v1, v18

    goto :goto_b

    :cond_11
    move/from16 v14, p5

    :goto_b
    and-int/lit8 v18, v11, 0x40

    const/high16 v19, 0x380000

    if-eqz v18, :cond_12

    const/high16 v20, 0x180000

    or-int v1, v1, v20

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v20, v12, v19

    if-nez v20, :cond_14

    move/from16 v0, p6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v5, v11, 0x80

    const/high16 v22, 0x1c00000

    if-eqz v5, :cond_15

    const/high16 v23, 0xc00000

    or-int v1, v1, v23

    move/from16 v0, p7

    goto :goto_f

    :cond_15
    and-int v23, v12, v22

    if-nez v23, :cond_17

    move/from16 v0, p7

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v0, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v23, 0x2000000

    or-int v1, v1, v23

    :cond_18
    const/16 v3, 0x100

    if-ne v0, v3, :cond_1a

    const v3, 0xb6db6db

    and-int/2addr v3, v1

    const v6, 0x2492492

    if-ne v3, v6, :cond_1a

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_10

    .line 344
    :cond_19
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p1

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v17, v14

    move/from16 v16, v15

    move-object/from16 v14, p2

    move-object v15, v8

    goto/16 :goto_19

    .line 334
    :cond_1a
    :goto_10
    if-eqz v2, :cond_1b

    .line 326
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_11

    .line 334
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object/from16 v2, p1

    .line 326
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    if-eqz v4, :cond_1c

    .line 327
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v3, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_12

    .line 326
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1c
    move-object/from16 v3, p2

    .line 327
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    :goto_12
    if-eqz v7, :cond_1d

    .line 328
    const/4 v4, 0x0

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v4, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_13

    .line 327
    .end local v4    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1d
    move-object v4, v8

    .line 328
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_13
    if-eqz v13, :cond_1e

    .line 329
    sget-object v6, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v6

    .end local p4    # "overflow":I
    .local v6, "overflow":I
    goto :goto_14

    .line 328
    .end local v6    # "overflow":I
    .restart local p4    # "overflow":I
    :cond_1e
    move v6, v15

    .line 329
    .end local p4    # "overflow":I
    .restart local v6    # "overflow":I
    :goto_14
    if-eqz v16, :cond_1f

    .line 330
    const/4 v7, 0x1

    .end local p5    # "softWrap":Z
    .local v7, "softWrap":Z
    goto :goto_15

    .line 329
    .end local v7    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1f
    move v7, v14

    .line 330
    .end local p5    # "softWrap":Z
    .restart local v7    # "softWrap":Z
    :goto_15
    if-eqz v18, :cond_20

    .line 331
    const v8, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v8, "maxLines":I
    goto :goto_16

    .line 330
    .end local v8    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_20
    move/from16 v8, p6

    .line 331
    .end local p6    # "maxLines":I
    .restart local v8    # "maxLines":I
    :goto_16
    if-eqz v5, :cond_21

    .line 332
    const/4 v5, 0x1

    .end local p7    # "minLines":I
    .local v5, "minLines":I
    goto :goto_17

    .line 331
    .end local v5    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_21
    move/from16 v5, p7

    .line 332
    .end local p7    # "minLines":I
    .restart local v5    # "minLines":I
    :goto_17
    if-eqz v0, :cond_22

    .line 333
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .end local p8    # "inlineContent":Ljava/util/Map;
    .local v0, "inlineContent":Ljava/util/Map;
    goto :goto_18

    .line 332
    .end local v0    # "inlineContent":Ljava/util/Map;
    .restart local p8    # "inlineContent":Ljava/util/Map;
    :cond_22
    move-object/from16 v0, p8

    .line 333
    .end local p8    # "inlineContent":Ljava/util/Map;
    .restart local v0    # "inlineContent":Ljava/util/Map;
    :goto_18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_23

    .line 334
    const/4 v13, -0x1

    const-string/jumbo v14, "androidx.compose.foundation.text.BasicText (BasicText.kt:333)"

    const v15, 0x32bf773b

    invoke-static {v15, v1, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 335
    :cond_23
    nop

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 342
    nop

    .line 343
    const/16 v23, 0x0

    const/high16 v13, 0x8000000

    and-int/lit8 v14, v1, 0xe

    or-int/2addr v13, v14

    and-int/lit8 v14, v1, 0x70

    or-int/2addr v13, v14

    and-int/lit16 v14, v1, 0x380

    or-int/2addr v13, v14

    and-int/lit16 v14, v1, 0x1c00

    or-int/2addr v13, v14

    const v14, 0xe000

    and-int/2addr v14, v1

    or-int/2addr v13, v14

    and-int v14, v1, v17

    or-int/2addr v13, v14

    and-int v14, v1, v19

    or-int/2addr v13, v14

    and-int v14, v1, v22

    or-int v24, v13, v14

    const/16 v25, 0x200

    .line 334
    move-object/from16 v13, p0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v5

    move-object/from16 v21, v0

    move-object/from16 v22, v23

    move-object/from16 v23, v10

    invoke-static/range {v13 .. v25}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 344
    :cond_24
    move-object/from16 v20, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v19, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    .end local v0    # "inlineContent":Ljava/util/Map;
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v4    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v5    # "minLines":I
    .end local v6    # "overflow":I
    .end local v7    # "softWrap":Z
    .end local v8    # "maxLines":I
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "style":Landroidx/compose/ui/text/TextStyle;
    .local v15, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v16, "overflow":I
    .local v17, "softWrap":Z
    .local v18, "maxLines":I
    .local v19, "minLines":I
    .local v20, "inlineContent":Ljava/util/Map;
    :goto_19
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_25

    new-instance v21, Landroidx/compose/foundation/text/BasicTextKt$BasicText$9;

    move-object/from16 v0, v21

    move/from16 v22, v1

    .end local v1    # "$dirty":I
    .local v22, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object v12, v8

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v23, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$9;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1a

    .end local v22    # "$dirty":I
    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_25
    move/from16 v22, v1

    move-object/from16 v23, v10

    .end local v1    # "$dirty":I
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$dirty":I
    .restart local v23    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1a
    return-void
.end method

.method public static final BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 91
    move/from16 v12, p10

    move/from16 v11, p11

    const v0, -0x46bd8e2e

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BasicText)P(8,3,7,4,5:c#ui.text.style.TextOverflow,6,1,2)95@4654L7,144@6466L41:BasicText.kt#423gt5"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-object/from16 v10, p0

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v10, p0

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

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v12, 0x380

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
    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v12, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v9, v11, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v14, p4

    goto :goto_9

    :cond_c
    const v14, 0xe000

    and-int/2addr v14, v12

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v14, p4

    :goto_9
    and-int/lit8 v15, v11, 0x20

    if-eqz v15, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v0, p5

    goto :goto_b

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v12, v16

    if-nez v16, :cond_11

    move/from16 v0, p5

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_11
    move/from16 v0, p5

    :goto_b
    and-int/lit8 v17, v11, 0x40

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move/from16 v5, p6

    goto :goto_d

    :cond_12
    const/high16 v18, 0x380000

    and-int v18, v12, v18

    if-nez v18, :cond_14

    move/from16 v5, p6

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_14
    move/from16 v5, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_15

    const/high16 v18, 0xc00000

    or-int v1, v1, v18

    move/from16 v3, p7

    goto :goto_f

    :cond_15
    const/high16 v18, 0x1c00000

    and-int v18, v12, v18

    if-nez v18, :cond_17

    move/from16 v3, p7

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_17
    move/from16 v3, p7

    :goto_f
    and-int/lit16 v3, v11, 0x100

    if-eqz v3, :cond_18

    const/high16 v18, 0x2000000

    or-int v1, v1, v18

    :cond_18
    const/16 v5, 0x100

    if-ne v3, v5, :cond_1a

    const v5, 0xb6db6db

    and-int/2addr v5, v1

    const v6, 0x2492492

    if-ne v5, v6, :cond_1a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_10

    .line 146
    :cond_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v19, p1

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v20, p7

    move-object/from16 v21, p8

    move/from16 p9, v1

    move-object v15, v8

    move/from16 v16, v14

    move-object/from16 v14, p2

    goto/16 :goto_21

    .line 91
    :cond_1a
    :goto_10
    if-eqz v2, :cond_1b

    .line 83
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_11

    .line 91
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object/from16 v2, p1

    .line 83
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    if-eqz v4, :cond_1c

    .line 84
    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .local v4, "style":Landroidx/compose/ui/text/TextStyle;
    goto :goto_12

    .line 83
    .end local v4    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    :cond_1c
    move-object/from16 v4, p2

    .line 84
    .end local p2    # "style":Landroidx/compose/ui/text/TextStyle;
    .restart local v4    # "style":Landroidx/compose/ui/text/TextStyle;
    :goto_12
    if-eqz v7, :cond_1d

    .line 85
    const/4 v5, 0x0

    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v5, "onTextLayout":Lkotlin/jvm/functions/Function1;
    goto :goto_13

    .line 84
    .end local v5    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :cond_1d
    move-object v5, v8

    .line 85
    .end local p3    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    :goto_13
    if-eqz v9, :cond_1e

    .line 86
    sget-object v6, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v6

    .end local p4    # "overflow":I
    .local v6, "overflow":I
    goto :goto_14

    .line 85
    .end local v6    # "overflow":I
    .restart local p4    # "overflow":I
    :cond_1e
    move v6, v14

    .line 86
    .end local p4    # "overflow":I
    .restart local v6    # "overflow":I
    :goto_14
    if-eqz v15, :cond_1f

    .line 87
    const/4 v7, 0x1

    .end local p5    # "softWrap":Z
    .local v7, "softWrap":Z
    goto :goto_15

    .line 86
    .end local v7    # "softWrap":Z
    .restart local p5    # "softWrap":Z
    :cond_1f
    move/from16 v7, p5

    .line 87
    .end local p5    # "softWrap":Z
    .restart local v7    # "softWrap":Z
    :goto_15
    if-eqz v17, :cond_20

    .line 88
    const v8, 0x7fffffff

    .end local p6    # "maxLines":I
    .local v8, "maxLines":I
    goto :goto_16

    .line 87
    .end local v8    # "maxLines":I
    .restart local p6    # "maxLines":I
    :cond_20
    move/from16 v8, p6

    .line 88
    .end local p6    # "maxLines":I
    .restart local v8    # "maxLines":I
    :goto_16
    if-eqz v0, :cond_21

    .line 89
    const/4 v0, 0x1

    .end local p7    # "minLines":I
    .local v0, "minLines":I
    goto :goto_17

    .line 88
    .end local v0    # "minLines":I
    .restart local p7    # "minLines":I
    :cond_21
    move/from16 v0, p7

    .line 89
    .end local p7    # "minLines":I
    .restart local v0    # "minLines":I
    :goto_17
    if-eqz v3, :cond_22

    .line 90
    const/4 v3, 0x0

    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v3, "color":Landroidx/compose/ui/graphics/ColorProducer;
    goto :goto_18

    .line 89
    .end local v3    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :cond_22
    move-object/from16 v3, p8

    .line 90
    .end local p8    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local v3    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 91
    const/4 v9, -0x1

    const-string/jumbo v14, "androidx.compose.foundation.text.BasicText (BasicText.kt:90)"

    const v15, -0x46bd8e2e

    invoke-static {v15, v1, v9, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 93
    :cond_23
    nop

    .line 94
    nop

    .line 92
    invoke-static {v0, v8}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    .line 96
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .local v9, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x6

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .line 448
    .local v15, "$i$f$getCurrent":I
    move/from16 p9, v1

    .end local v1    # "$dirty":I
    .local p9, "$dirty":I
    const v1, 0x789c5f52

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v1, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 96
    .end local v9    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$getCurrent":I
    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .local v9, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    const v14, 0x392cd180

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "97@4790L7,99@4853L152,102@5014L234"

    invoke-static {v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 97
    const/4 v15, 0x0

    if-eqz v9, :cond_26

    .line 98
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .local v14, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x6

    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .line 449
    .local v17, "$i$f$getCurrent":I
    invoke-static {v13, v1, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v18

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    check-cast v18, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 98
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v26

    .line 100
    .local v26, "backgroundSelectionColor":J
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9}, Landroidx/compose/foundation/text/BasicTextKt;->selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectionController$selectableId$1;

    invoke-direct {v1, v9}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectionController$selectableId$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x48

    const/16 v19, 0x4

    move-object/from16 p1, v14

    move-object/from16 p2, v16

    move-object/from16 p3, v17

    move-object/from16 p4, v1

    move-object/from16 p5, v13

    move/from16 p6, v18

    move/from16 p7, v19

    invoke-static/range {p1 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    .line 99
    nop

    .local v18, "selectableId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v14

    .line 103
    move/from16 v16, v15

    .local v1, "key1$iv":Ljava/lang/Object;
    .local v14, "key3$iv":Ljava/lang/Object;
    .restart local v16    # "$changed$iv":I
    const/16 v28, 0x0

    .local v28, "$i$f$remember":I
    const v15, 0x607fb4c4

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 450
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 451
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    .line 450
    or-int v15, v15, v17

    .line 452
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    .line 450
    or-int v15, v15, v17

    .line 453
    nop

    .local v15, "invalid$iv$iv":Z
    move-object/from16 p2, v13

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 454
    .local v29, "$i$f$cache":I
    move-object/from16 p3, v1

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .local p3, "key1$iv":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 455
    .local v30, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v15, :cond_25

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v1, v11, :cond_24

    goto :goto_19

    .line 459
    :cond_24
    move-object/from16 p4, v1

    move-object/from16 v11, p4

    move-object/from16 v1, p2

    goto :goto_1a

    .line 456
    :cond_25
    :goto_19
    const/4 v11, 0x0

    .line 104
    .local v11, "$i$a$-remember-BasicTextKt$BasicText$selectionController$1":I
    new-instance v31, Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 104
    const/16 v23, 0x0

    const/16 v24, 0x8

    const/16 v25, 0x0

    move-object/from16 v17, v31

    move-object/from16 v20, v9

    move-wide/from16 v21, v26

    invoke-direct/range {v17 .. v25}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 456
    .end local v11    # "$i$a$-remember-BasicTextKt$BasicText$selectionController$1":I
    move-object/from16 v11, v31

    .line 457
    .local v11, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p4, v1

    move-object/from16 v1, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    nop

    .line 455
    .end local v11    # "value$iv$iv":Ljava/lang/Object;
    :goto_1a
    nop

    .line 454
    .end local v30    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 453
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv$iv":Z
    .end local v29    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v14    # "key3$iv":Ljava/lang/Object;
    .end local v16    # "$changed$iv":I
    .end local v18    # "selectableId":J
    .end local v26    # "backgroundSelectionColor":J
    .end local v28    # "$i$f$remember":I
    .end local p3    # "key1$iv":Ljava/lang/Object;
    check-cast v11, Landroidx/compose/foundation/text/modifiers/SelectionController;

    goto :goto_1b

    .line 111
    :cond_26
    const/4 v11, 0x0

    .line 97
    :goto_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v1, v11

    .line 113
    .local v1, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    if-nez v1, :cond_28

    if-eqz v5, :cond_27

    move-object/from16 p7, v9

    const/4 v9, 0x0

    goto/16 :goto_1c

    .line 131
    :cond_27
    const v11, 0x392cd6bc

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "136@6279L7"

    invoke-static {v13, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 132
    nop

    .line 134
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v24, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 135
    nop

    .line 136
    nop

    .line 137
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .local v14, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v15, 0x0

    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    .line 461
    .local v16, "$i$f$getCurrent":I
    move-object/from16 p7, v9

    const v9, 0x789c5f52

    .end local v9    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .local p7, "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v15    # "$changed$iv":I
    .end local v16    # "$i$f$getCurrent":I
    move-object/from16 v17, v9

    check-cast v17, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    const/16 v23, 0x0

    .line 134
    move-object/from16 v14, v24

    const/4 v9, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v0

    move-object/from16 v22, v3

    invoke-direct/range {v14 .. v23}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v24

    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 132
    invoke-interface {v11, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 131
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_1d

    .line 113
    .end local p7    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .restart local v9    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :cond_28
    move-object/from16 p7, v9

    const/4 v9, 0x0

    .end local v9    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .restart local p7    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :goto_1c
    const v11, 0x392cd41e

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "124@5828L7"

    invoke-static {v13, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 114
    nop

    .line 116
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 118
    new-instance v19, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object/from16 p1, v19

    move-object/from16 p2, p0

    move-object/from16 p3, v11

    move-object/from16 p4, v14

    move/from16 p5, v15

    move-object/from16 p6, v16

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .local v11, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x0

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .line 460
    .local v15, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$getCurrent":I
    move-object/from16 v26, v9

    check-cast v26, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 126
    const/16 v27, 0x0

    .line 127
    const/16 v28, 0x0

    .line 128
    nop

    .line 129
    nop

    .line 117
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v0

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    invoke-static/range {v18 .. v30}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 113
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_1d
    move-object v9, v10

    .line 145
    .local v9, "finalModifier":Landroidx/compose/ui/Modifier;
    sget-object v10, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    check-cast v10, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v11, 0x30

    .local v11, "$changed$iv":I
    const/4 v14, 0x0

    .local v14, "$i$f$Layout":I
    const v15, 0x207baf9a

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(Layout)P(1)123@4784L23,126@4935L385:Layout.kt#80mrfh"

    invoke-static {v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 462
    const/4 v15, 0x0

    invoke-static {v13, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v15

    .line 463
    .local v15, "compositeKeyHash$iv":I
    move/from16 v16, v0

    .end local v0    # "minLines":I
    .local v16, "minLines":I
    invoke-static {v13, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 464
    .local v0, "materialized$iv":Landroidx/compose/ui/Modifier;
    move-object/from16 p1, v1

    .end local v1    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .local p1, "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 466
    .local v1, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 465
    const/16 v18, 0x6

    .local v18, "$changed$iv$iv":I
    move-object/from16 p2, v17

    .local p2, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    move-object/from16 v19, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "$i$f$ReusableComposeNode":I
    .local v19, "modifier":Landroidx/compose/ui/Modifier;
    const v2, 0x53ca7ea5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(ReusableComposeNode):Composables.kt#9igjgp"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 467
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 468
    :cond_29
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 469
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 470
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$BasicText-VhcvRP8$$inlined$Layout$1;

    move-object/from16 p3, v3

    move-object/from16 v3, p2

    .end local p2    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local p3, "color":Landroidx/compose/ui/graphics/ColorProducer;
    invoke-direct {v2, v3}, Landroidx/compose/foundation/text/BasicTextKt$BasicText-VhcvRP8$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    .line 472
    .end local p3    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v3, "color":Landroidx/compose/ui/graphics/ColorProducer;
    .restart local p2    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2a
    move-object/from16 p3, v3

    move-object/from16 v3, p2

    .end local p2    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 474
    :goto_1e
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 475
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v3

    .end local v3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v22, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 476
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 477
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 479
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 480
    .local v21, "$i$f$set-impl":I
    move-object/from16 p2, v2

    .local p2, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 481
    .local v23, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v24

    if-nez v24, :cond_2c

    move-object/from16 p4, v0

    .end local v0    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .local p4, "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 p5, v1

    .end local v1    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local p5, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1f

    :cond_2b
    move-object/from16 v1, p2

    goto :goto_20

    .end local p4    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v0    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .restart local v1    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_2c
    move-object/from16 p4, v0

    move-object/from16 p5, v1

    .line 482
    .end local v0    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v1    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local p4    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .restart local p5    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_1f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p2

    .end local p2    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 483
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 485
    :goto_20
    nop

    .line 480
    .end local v1    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 485
    nop

    .line 486
    .end local v3    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 474
    .end local v2    # "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    nop

    .line 487
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 488
    nop

    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v18    # "$changed$iv$iv":I
    .end local v22    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 489
    nop

    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "$changed$iv":I
    .end local v14    # "$i$f$Layout":I
    .end local v15    # "compositeKeyHash$iv":I
    .end local p4    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 146
    .end local v9    # "finalModifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "selectionController":Landroidx/compose/foundation/text/modifiers/SelectionController;
    .end local p7    # "selectionRegistrar":Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    :cond_2d
    move-object/from16 v21, p3

    move-object v14, v4

    move-object v15, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v20, v16

    move/from16 v16, v6

    .end local v4    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v5    # "onTextLayout":Lkotlin/jvm/functions/Function1;
    .end local v6    # "overflow":I
    .end local v7    # "softWrap":Z
    .end local v8    # "maxLines":I
    .end local p3    # "color":Landroidx/compose/ui/graphics/ColorProducer;
    .local v14, "style":Landroidx/compose/ui/text/TextStyle;
    .local v15, "onTextLayout":Lkotlin/jvm/functions/Function1;
    .local v16, "overflow":I
    .local v17, "softWrap":Z
    .local v18, "maxLines":I
    .local v20, "minLines":I
    .local v21, "color":Landroidx/compose/ui/graphics/ColorProducer;
    :goto_21
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_2e

    new-instance v22, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    move-object/from16 v0, v22

    move/from16 v23, p9

    .end local p9    # "$dirty":I
    .local v23, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, p10

    move-object v12, v11

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_22

    .end local v23    # "$dirty":I
    .restart local p9    # "$dirty":I
    :cond_2e
    move/from16 v23, p9

    .end local p9    # "$dirty":I
    .restart local v23    # "$dirty":I
    :goto_22
    return-void
.end method

.method private static final selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .param p0, "selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    .line 352
    return-object v0
.end method

.method private static final textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0, "$this$textModifier_u2dRWo7tUw"    # Landroidx/compose/ui/Modifier;
    .param p1, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "onTextLayout"    # Lkotlin/jvm/functions/Function1;
    .param p4, "overflow"    # I
    .param p5, "softWrap"    # Z
    .param p6, "maxLines"    # I
    .param p7, "minLines"    # I
    .param p8, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p9, "placeholders"    # Ljava/util/List;
    .param p10, "onPlaceholderLayout"    # Lkotlin/jvm/functions/Function1;
    .param p11, "selectionController"    # Landroidx/compose/foundation/text/modifiers/SelectionController;
    .param p12, "color"    # Landroidx/compose/ui/graphics/ColorProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/modifiers/SelectionController;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 413
    move-object/from16 v0, p0

    if-nez p11, :cond_0

    .line 414
    new-instance v15, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 415
    nop

    .line 416
    nop

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 420
    nop

    .line 421
    nop

    .line 422
    nop

    .line 423
    nop

    .line 424
    nop

    .line 425
    const/4 v12, 0x0

    .line 426
    const/4 v14, 0x0

    .line 414
    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 428
    .local v1, "staticTextModifier":Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    return-object v2

    .line 430
    .end local v1    # "staticTextModifier":Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;
    :cond_0
    new-instance v15, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    .line 431
    nop

    .line 432
    nop

    .line 433
    nop

    .line 434
    nop

    .line 435
    nop

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 439
    nop

    .line 440
    nop

    .line 441
    nop

    .line 442
    const/4 v14, 0x0

    .line 430
    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 444
    .local v1, "selectableTextModifier":Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;
    invoke-virtual/range {p11 .. p11}, Landroidx/compose/foundation/text/modifiers/SelectionController;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    return-object v2
.end method
