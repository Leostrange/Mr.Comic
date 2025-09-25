.class public final Landroidx/compose/material3/BottomSheetScaffoldKt;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material3/BottomSheetScaffoldKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,386:1\n74#2:387\n74#2:433\n1116#3,6:388\n1116#3,6:394\n1116#3,6:400\n1116#3,3:411\n1119#3,3:417\n1116#3,6:421\n1116#3,6:427\n1116#3,6:434\n1116#3,6:440\n487#4,4:406\n491#4,2:414\n495#4:420\n25#5:410\n487#6:416\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material3/BottomSheetScaffoldKt\n*L\n120#1:387\n335#1:433\n131#1:388,6\n191#1:394,6\n193#1:400,6\n233#1:411,3\n233#1:417,3\n243#1:421,6\n256#1:427,6\n336#1:434,6\n339#1:440,6\n233#1:406,4\n233#1:414,2\n233#1:420\n233#1:410\n233#1:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u001a\u008a\u0002\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0002\u0008\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000c2\u0015\u0008\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0015\u0008\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00052\u0019\u0008\u0002\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00112\u0017\u0010\u001e\u001a\u0013\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!\u001a\u00c0\u0001\u0010\"\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0013\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00052&\u0010#\u001a\"\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u00052&\u0010\'\u001a\"\u0012\u0013\u0012\u00110(\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u00052\u0011\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u00010\u0016\u00a2\u0006\u0002\u0008\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020+0\u00162\u0006\u0010,\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/\u001a\u00b6\u0001\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020-2\'\u00102\u001a#\u0012\u0013\u0012\u001103\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(4\u0012\n\u0012\u0008\u0012\u0004\u0012\u000206050\u00032\u0006\u00107\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u00109\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020\u000c2\u0013\u0010;\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016\u00a2\u0006\u0002\u0008\u00052\u001c\u0010\u001e\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0002\u0008\u0006H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=\u001a!\u0010>\u001a\u00020\n2\u0008\u0008\u0002\u0010?\u001a\u00020-2\u0008\u0008\u0002\u0010@\u001a\u00020\u001bH\u0007\u00a2\u0006\u0002\u0010A\u001a7\u0010B\u001a\u00020-2\u0008\u0008\u0002\u0010C\u001a\u0002062\u0014\u0008\u0002\u0010D\u001a\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00180\u00032\u0008\u0008\u0002\u0010E\u001a\u00020\u0018H\u0007\u00a2\u0006\u0002\u0010F\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006G"
    }
    d2 = {
        "BottomSheetScaffold",
        "",
        "sheetContent",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "scaffoldState",
        "Landroidx/compose/material3/BottomSheetScaffoldState;",
        "sheetPeekHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "sheetMaxWidth",
        "sheetShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "sheetContainerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "sheetContentColor",
        "sheetTonalElevation",
        "sheetShadowElevation",
        "sheetDragHandle",
        "Lkotlin/Function0;",
        "sheetSwipeEnabled",
        "",
        "topBar",
        "snackbarHost",
        "Landroidx/compose/material3/SnackbarHostState;",
        "containerColor",
        "contentColor",
        "content",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "BottomSheetScaffold-sdMYb0k",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "BottomSheetScaffoldLayout",
        "body",
        "Lkotlin/ParameterName;",
        "name",
        "innerPadding",
        "bottomSheet",
        "",
        "layoutHeight",
        "sheetOffset",
        "",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "BottomSheetScaffoldLayout-PxNyym8",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V",
        "StandardBottomSheet",
        "state",
        "calculateAnchors",
        "Landroidx/compose/ui/unit/IntSize;",
        "sheetSize",
        "Landroidx/compose/material3/DraggableAnchors;",
        "Landroidx/compose/material3/SheetValue;",
        "peekHeight",
        "shape",
        "tonalElevation",
        "shadowElevation",
        "dragHandle",
        "StandardBottomSheet-XcniZvE",
        "(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "rememberBottomSheetScaffoldState",
        "bottomSheetState",
        "snackbarHostState",
        "(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;",
        "rememberStandardBottomSheetState",
        "initialValue",
        "confirmValueChange",
        "skipHiddenState",
        "(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;",
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


# direct methods
.method public static final BottomSheetScaffold-sdMYb0k(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 49
    .param p0, "sheetContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "scaffoldState"    # Landroidx/compose/material3/BottomSheetScaffoldState;
    .param p3, "sheetPeekHeight"    # F
    .param p4, "sheetMaxWidth"    # F
    .param p5, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p6, "sheetContainerColor"    # J
    .param p8, "sheetContentColor"    # J
    .param p10, "sheetTonalElevation"    # F
    .param p11, "sheetShadowElevation"    # F
    .param p12, "sheetDragHandle"    # Lkotlin/jvm/functions/Function2;
    .param p13, "sheetSwipeEnabled"    # Z
    .param p14, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p15, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p16, "containerColor"    # J
    .param p18, "contentColor"    # J
    .param p20, "content"    # Lkotlin/jvm/functions/Function3;
    .param p21, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p22, "$changed"    # I
    .param p23, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/BottomSheetScaffoldState;",
            "FF",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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

    .line 119
    move/from16 v15, p22

    move/from16 v14, p23

    move/from16 v13, p24

    const v0, -0x5ad53ca7

    move-object/from16 v1, p21

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(BottomSheetScaffold)P(6,3,4,10:c#ui.unit.Dp,9:c#ui.unit.Dp,12,5:c#ui.graphics.Color,7:c#ui.graphics.Color,14:c#ui.unit.Dp,11:c#ui.unit.Dp,8,13,16,15,0:c#ui.graphics.Color,2:c#ui.graphics.Color)103@5431L34,106@5633L13,107@5701L14,108@5748L36,115@6205L11,116@6252L31,*119@6379L7,130@6700L50,122@6436L1811:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p22

    .local v0, "$dirty":I
    move/from16 v1, p23

    .local v1, "$dirty1":I
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v0, v8

    goto :goto_3

    :cond_5
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_8

    and-int/lit8 v8, v13, 0x4

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move/from16 v3, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_b

    move/from16 v3, p3

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    and-int/lit8 v19, v13, 0x10

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-eqz v19, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v4, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v4, v15, 0x6000

    if-nez v4, :cond_e

    move/from16 v4, p4

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v21

    goto :goto_8

    :cond_d
    move/from16 v23, v20

    :goto_8
    or-int v0, v0, v23

    goto :goto_9

    :cond_e
    move/from16 v4, p4

    :goto_9
    const/high16 v23, 0x30000

    and-int v23, v15, v23

    const/high16 v24, 0x10000

    if-nez v23, :cond_11

    and-int/lit8 v23, v13, 0x20

    if-nez v23, :cond_f

    move-object/from16 v5, p5

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v5, p5

    :cond_10
    move/from16 v25, v24

    :goto_a
    or-int v0, v0, v25

    goto :goto_b

    :cond_11
    move-object/from16 v5, p5

    :goto_b
    const/high16 v25, 0x180000

    and-int v26, v15, v25

    if-nez v26, :cond_14

    and-int/lit8 v26, v13, 0x40

    if-nez v26, :cond_12

    move-wide/from16 v6, p6

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_12
    move-wide/from16 v6, p6

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    goto :goto_d

    :cond_14
    move-wide/from16 v6, p6

    :goto_d
    const/high16 v27, 0xc00000

    and-int v27, v15, v27

    if-nez v27, :cond_17

    and-int/lit16 v10, v13, 0x80

    if-nez v10, :cond_15

    move-wide/from16 v9, p8

    invoke-interface {v12, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_15
    move-wide/from16 v9, p8

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v0, v0, v28

    goto :goto_f

    :cond_17
    move-wide/from16 v9, p8

    :goto_f
    and-int/lit16 v3, v13, 0x100

    const/high16 v28, 0x6000000

    if-eqz v3, :cond_18

    or-int v0, v0, v28

    move/from16 v4, p10

    goto :goto_11

    :cond_18
    and-int v28, v15, v28

    if-nez v28, :cond_1a

    move/from16 v4, p10

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v28, 0x2000000

    :goto_10
    or-int v0, v0, v28

    goto :goto_11

    :cond_1a
    move/from16 v4, p10

    :goto_11
    and-int/lit16 v4, v13, 0x200

    const/high16 v28, 0x30000000

    if-eqz v4, :cond_1b

    or-int v0, v0, v28

    move/from16 v5, p11

    goto :goto_13

    :cond_1b
    and-int v28, v15, v28

    if-nez v28, :cond_1d

    move/from16 v5, p11

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_12
    or-int v0, v0, v28

    goto :goto_13

    :cond_1d
    move/from16 v5, p11

    :goto_13
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v6, p12

    goto :goto_15

    :cond_1e
    and-int/lit8 v28, v14, 0x6

    if-nez v28, :cond_20

    move-object/from16 v6, p12

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/16 v22, 0x4

    goto :goto_14

    :cond_1f
    const/16 v22, 0x2

    :goto_14
    or-int v1, v1, v22

    goto :goto_15

    :cond_20
    move-object/from16 v6, p12

    :goto_15
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v1, v1, 0x30

    move/from16 v6, p13

    goto :goto_17

    :cond_21
    and-int/lit8 v22, v14, 0x30

    if-nez v22, :cond_23

    move/from16 v6, p13

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_22

    const/16 v23, 0x20

    goto :goto_16

    :cond_22
    const/16 v23, 0x10

    :goto_16
    or-int v1, v1, v23

    goto :goto_17

    :cond_23
    move/from16 v6, p13

    :goto_17
    and-int/lit16 v6, v13, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v8, p14

    goto :goto_19

    :cond_24
    and-int/lit16 v8, v14, 0x180

    if-nez v8, :cond_26

    move-object/from16 v8, p14

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v27, 0x100

    goto :goto_18

    :cond_25
    const/16 v27, 0x80

    :goto_18
    or-int v1, v1, v27

    goto :goto_19

    :cond_26
    move-object/from16 v8, p14

    :goto_19
    and-int/lit16 v8, v13, 0x2000

    if-eqz v8, :cond_27

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p15

    goto :goto_1b

    :cond_27
    and-int/lit16 v9, v14, 0xc00

    if-nez v9, :cond_29

    move-object/from16 v9, p15

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v17, v18

    :goto_1a
    or-int v1, v1, v17

    goto :goto_1b

    :cond_29
    move-object/from16 v9, p15

    :goto_1b
    and-int/lit16 v10, v14, 0x6000

    if-nez v10, :cond_2c

    and-int/lit16 v10, v13, 0x4000

    if-nez v10, :cond_2a

    move-wide/from16 v9, p16

    invoke-interface {v12, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2b

    move/from16 v20, v21

    goto :goto_1c

    :cond_2a
    move-wide/from16 v9, p16

    :cond_2b
    :goto_1c
    or-int v1, v1, v20

    goto :goto_1d

    :cond_2c
    move-wide/from16 v9, p16

    :goto_1d
    const/high16 v17, 0x30000

    and-int v17, v14, v17

    const v18, 0x8000

    if-nez v17, :cond_2f

    and-int v17, v13, v18

    if-nez v17, :cond_2d

    move-wide/from16 v9, p18

    invoke-interface {v12, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2e

    const/high16 v17, 0x20000

    goto :goto_1e

    :cond_2d
    move-wide/from16 v9, p18

    :cond_2e
    move/from16 v17, v24

    :goto_1e
    or-int v1, v1, v17

    goto :goto_1f

    :cond_2f
    move-wide/from16 v9, p18

    :goto_1f
    and-int v17, v13, v24

    if-eqz v17, :cond_30

    or-int v1, v1, v25

    move-object/from16 v14, p20

    goto :goto_21

    :cond_30
    and-int v17, v14, v25

    if-nez v17, :cond_32

    move-object/from16 v14, p20

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_31

    const/high16 v17, 0x100000

    goto :goto_20

    :cond_31
    const/high16 v17, 0x80000

    :goto_20
    or-int v1, v1, v17

    goto :goto_21

    :cond_32
    move-object/from16 v14, p20

    :goto_21
    const v17, 0x12492493

    and-int v9, v0, v17

    const v10, 0x12492492

    if-ne v9, v10, :cond_34

    const v9, 0x92493

    and-int/2addr v9, v1

    const v10, 0x92492

    if-ne v9, v10, :cond_34

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_22

    .line 165
    :cond_33
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v27, p3

    move/from16 v28, p4

    move-object/from16 v29, p5

    move-wide/from16 v30, p6

    move-wide/from16 v32, p8

    move/from16 v34, p10

    move/from16 v35, p11

    move-object/from16 v36, p12

    move/from16 v37, p13

    move-object/from16 v38, p14

    move-object/from16 v39, p15

    move-wide/from16 v40, p16

    move-wide/from16 v42, p18

    move/from16 v44, v0

    move/from16 v45, v1

    goto/16 :goto_37

    .line 119
    :cond_34
    :goto_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v9, v15, 0x1

    const v10, -0x70001

    if-eqz v9, :cond_3c

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_35

    goto :goto_23

    .line 117
    :cond_35
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_36

    and-int/lit16 v0, v0, -0x381

    :cond_36
    and-int/lit8 v2, v13, 0x20

    if-eqz v2, :cond_37

    and-int/2addr v0, v10

    :cond_37
    and-int/lit8 v2, v13, 0x40

    if-eqz v2, :cond_38

    const v2, -0x380001

    and-int/2addr v0, v2

    :cond_38
    and-int/lit16 v2, v13, 0x80

    if-eqz v2, :cond_39

    const v2, -0x1c00001

    and-int/2addr v0, v2

    :cond_39
    and-int/lit16 v2, v13, 0x4000

    if-eqz v2, :cond_3a

    const v2, -0xe001

    and-int/2addr v1, v2

    :cond_3a
    and-int v2, v13, v18

    if-eqz v2, :cond_3b

    and-int/2addr v1, v10

    :cond_3b
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v11, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move/from16 v9, p10

    move/from16 v8, p11

    move-object/from16 v10, p12

    move/from16 v32, p13

    move-object/from16 v33, p14

    move-object/from16 v13, p15

    move-wide/from16 v34, p16

    move-wide/from16 v36, p18

    move v14, v0

    move v15, v1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_32

    .line 119
    :cond_3c
    :goto_23
    if-eqz v2, :cond_3d

    .line 103
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_24

    .line 119
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_3d
    move-object/from16 v2, p1

    .line 103
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_24
    and-int/lit8 v9, v13, 0x4

    if-eqz v9, :cond_3e

    .line 104
    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object/from16 p1, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v11, v12, v9, v10}, Landroidx/compose/material3/BottomSheetScaffoldKt;->rememberBottomSheetScaffoldState(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;

    move-result-object v2

    .end local p2    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .local v2, "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    and-int/lit16 v0, v0, -0x381

    goto :goto_25

    .line 103
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    :cond_3e
    move-object/from16 p1, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v2, p2

    .line 104
    .end local p2    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .local v2, "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    :goto_25
    if-eqz v16, :cond_3f

    .line 105
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetPeekHeight-D9Ej5fM()F

    move-result v9

    .end local p3    # "sheetPeekHeight":F
    .local v9, "sheetPeekHeight":F
    goto :goto_26

    .line 104
    .end local v9    # "sheetPeekHeight":F
    .restart local p3    # "sheetPeekHeight":F
    :cond_3f
    move/from16 v9, p3

    .line 105
    .end local p3    # "sheetPeekHeight":F
    .restart local v9    # "sheetPeekHeight":F
    :goto_26
    if-eqz v19, :cond_40

    .line 106
    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetMaxWidth-D9Ej5fM()F

    move-result v10

    .end local p4    # "sheetMaxWidth":F
    .local v10, "sheetMaxWidth":F
    goto :goto_27

    .line 105
    .end local v10    # "sheetMaxWidth":F
    .restart local p4    # "sheetMaxWidth":F
    :cond_40
    move/from16 v10, p4

    .line 106
    .end local p4    # "sheetMaxWidth":F
    .restart local v10    # "sheetMaxWidth":F
    :goto_27
    and-int/lit8 v11, v13, 0x20

    move-object/from16 p2, v2

    .end local v2    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .restart local p2    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    const/4 v2, 0x6

    if-eqz v11, :cond_41

    .line 107
    sget-object v11, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v11, v12, v2}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v11

    const v16, -0x70001

    .end local p5    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v11, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    and-int v0, v0, v16

    goto :goto_28

    .line 106
    .end local v11    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p5    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :cond_41
    move-object/from16 v11, p5

    .line 107
    .end local p5    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v11    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :goto_28
    and-int/lit8 v16, v13, 0x40

    if-eqz v16, :cond_42

    .line 108
    move/from16 p3, v9

    .end local v9    # "sheetPeekHeight":F
    .restart local p3    # "sheetPeekHeight":F
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9, v12, v2}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    .end local p6    # "sheetContainerColor":J
    .local v16, "sheetContainerColor":J
    const v9, -0x380001

    and-int/2addr v0, v9

    move v9, v3

    move-wide/from16 v2, v16

    goto :goto_29

    .line 107
    .end local v16    # "sheetContainerColor":J
    .end local p3    # "sheetPeekHeight":F
    .restart local v9    # "sheetPeekHeight":F
    .restart local p6    # "sheetContainerColor":J
    :cond_42
    move/from16 p3, v9

    .end local v9    # "sheetPeekHeight":F
    .restart local p3    # "sheetPeekHeight":F
    move v9, v3

    move-wide/from16 v2, p6

    .line 108
    .end local p6    # "sheetContainerColor":J
    .local v2, "sheetContainerColor":J
    :goto_29
    move/from16 v16, v10

    .end local v10    # "sheetMaxWidth":F
    .local v16, "sheetMaxWidth":F
    and-int/lit16 v10, v13, 0x80

    if-eqz v10, :cond_43

    .line 109
    shr-int/lit8 v10, v0, 0x12

    and-int/lit8 v10, v10, 0xe

    invoke-static {v2, v3, v12, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    .end local p8    # "sheetContentColor":J
    .local v19, "sheetContentColor":J
    const v10, -0x1c00001

    and-int/2addr v0, v10

    goto :goto_2a

    .line 108
    .end local v19    # "sheetContentColor":J
    .restart local p8    # "sheetContentColor":J
    :cond_43
    move-wide/from16 v19, p8

    .line 109
    .end local p8    # "sheetContentColor":J
    .restart local v19    # "sheetContentColor":J
    :goto_2a
    if-eqz v9, :cond_44

    .line 110
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v9

    .end local p10    # "sheetTonalElevation":F
    .local v9, "sheetTonalElevation":F
    goto :goto_2b

    .line 109
    .end local v9    # "sheetTonalElevation":F
    .restart local p10    # "sheetTonalElevation":F
    :cond_44
    move/from16 v9, p10

    .line 110
    .end local p10    # "sheetTonalElevation":F
    .restart local v9    # "sheetTonalElevation":F
    :goto_2b
    if-eqz v4, :cond_45

    .line 111
    sget-object v4, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v4

    .end local p11    # "sheetShadowElevation":F
    .local v4, "sheetShadowElevation":F
    goto :goto_2c

    .line 110
    .end local v4    # "sheetShadowElevation":F
    .restart local p11    # "sheetShadowElevation":F
    :cond_45
    move/from16 v4, p11

    .line 111
    .end local p11    # "sheetShadowElevation":F
    .restart local v4    # "sheetShadowElevation":F
    :goto_2c
    if-eqz v5, :cond_46

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v5}, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .end local p12    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .local v5, "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    goto :goto_2d

    .end local v5    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .restart local p12    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    :cond_46
    move-object/from16 v5, p12

    .end local p12    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    :goto_2d
    if-eqz v7, :cond_47

    .line 113
    const/4 v7, 0x1

    .end local p13    # "sheetSwipeEnabled":Z
    .local v7, "sheetSwipeEnabled":Z
    goto :goto_2e

    .line 111
    .end local v7    # "sheetSwipeEnabled":Z
    .restart local p13    # "sheetSwipeEnabled":Z
    :cond_47
    move/from16 v7, p13

    .line 113
    .end local p13    # "sheetSwipeEnabled":Z
    .restart local v7    # "sheetSwipeEnabled":Z
    :goto_2e
    if-eqz v6, :cond_48

    .line 114
    const/4 v6, 0x0

    .end local p14    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v6, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_2f

    .line 113
    .end local v6    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p14    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_48
    move-object/from16 v6, p14

    .line 114
    .end local p14    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v6    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_2f
    if-eqz v8, :cond_49

    sget-object v8, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v8}, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function3;

    move-result-object v8

    .end local p15    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v8, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_30

    .end local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p15    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_49
    move-object/from16 v8, p15

    .end local p15    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_30
    and-int/lit16 v10, v13, 0x4000

    if-eqz v10, :cond_4a

    .line 116
    sget-object v10, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    move/from16 p5, v0

    const/4 v0, 0x6

    .end local v0    # "$dirty":I
    .local p5, "$dirty":I
    invoke-virtual {v10, v12, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v21

    .end local p16    # "containerColor":J
    .local v21, "containerColor":J
    const v0, -0xe001

    and-int/2addr v1, v0

    move v10, v1

    move-wide/from16 v0, v21

    goto :goto_31

    .line 114
    .end local v21    # "containerColor":J
    .end local p5    # "$dirty":I
    .restart local v0    # "$dirty":I
    .restart local p16    # "containerColor":J
    :cond_4a
    move/from16 p5, v0

    .end local v0    # "$dirty":I
    .restart local p5    # "$dirty":I
    move v10, v1

    move-wide/from16 v0, p16

    .line 116
    .end local v1    # "$dirty1":I
    .end local p16    # "containerColor":J
    .local v0, "containerColor":J
    .local v10, "$dirty1":I
    :goto_31
    and-int v17, v13, v18

    if-eqz v17, :cond_4b

    .line 117
    shr-int/lit8 v17, v10, 0xc

    move-wide/from16 v21, v2

    .end local v2    # "sheetContainerColor":J
    .local v21, "sheetContainerColor":J
    and-int/lit8 v2, v17, 0xe

    invoke-static {v0, v1, v12, v2}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    const v17, -0x70001

    .end local p18    # "contentColor":J
    .local v2, "contentColor":J
    and-int v10, v10, v17

    move/from16 v14, p5

    move-wide/from16 v34, v0

    move-wide/from16 v36, v2

    move-object/from16 v33, v6

    move/from16 v32, v7

    move-object v13, v8

    move v15, v10

    move/from16 v3, v16

    move-wide/from16 v6, v19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move v8, v4

    move-object v10, v5

    move-wide/from16 v4, v21

    goto :goto_32

    .line 116
    .end local v21    # "sheetContainerColor":J
    .local v2, "sheetContainerColor":J
    .restart local p18    # "contentColor":J
    :cond_4b
    move-wide/from16 v21, v2

    .end local v2    # "sheetContainerColor":J
    .restart local v21    # "sheetContainerColor":J
    move/from16 v2, p3

    move/from16 v14, p5

    move-wide/from16 v36, p18

    move-wide/from16 v34, v0

    move-object/from16 v33, v6

    move/from16 v32, v7

    move-object v13, v8

    move v15, v10

    move/from16 v3, v16

    move-wide/from16 v6, v19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v8, v4

    move-object v10, v5

    move-wide/from16 v4, v21

    .line 117
    .end local v5    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .end local v7    # "sheetSwipeEnabled":Z
    .end local v16    # "sheetMaxWidth":F
    .end local v19    # "sheetContentColor":J
    .end local v21    # "sheetContainerColor":J
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .end local p3    # "sheetPeekHeight":F
    .end local p5    # "$dirty":I
    .end local p18    # "contentColor":J
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .local v2, "sheetPeekHeight":F
    .local v3, "sheetMaxWidth":F
    .local v4, "sheetContainerColor":J
    .local v6, "sheetContentColor":J
    .local v8, "sheetShadowElevation":F
    .local v10, "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .local v13, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v14, "$dirty":I
    .local v15, "$dirty1":I
    .local v32, "sheetSwipeEnabled":Z
    .local v33, "topBar":Lkotlin/jvm/functions/Function2;
    .local v34, "containerColor":J
    .local v36, "contentColor":J
    :goto_32
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_4c

    .line 119
    move-object/from16 p15, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .local p15, "modifier":Landroidx/compose/ui/Modifier;
    const v0, -0x5ad53ca7

    move-object/from16 p16, v13

    .end local v13    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local p16, "snackbarHost":Lkotlin/jvm/functions/Function3;
    const-string/jumbo v13, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:118)"

    invoke-static {v0, v14, v15, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_33

    .line 117
    .end local p15    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p16    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v13    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_4c
    move-object/from16 p15, v0

    move-object/from16 p16, v13

    .line 120
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v13    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p15    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p16    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_33
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v13, 0x0

    .local v13, "$changed$iv":I
    const/16 v16, 0x0

    .line 387
    .local v16, "$i$f$getCurrent":I
    move/from16 p1, v13

    .end local v13    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const v13, 0x789c5f52

    move/from16 p17, v15

    .end local v15    # "$dirty1":I
    .local p17, "$dirty1":I
    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 120
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    move-object v0, v13

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .local v0, "$this$BottomSheetScaffold_sdMYb0k_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v13, 0x0

    .line 121
    .local v13, "$i$a$-with-BottomSheetScaffoldKt$BottomSheetScaffold$peekHeightPx$1":I
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v18

    .line 120
    .end local v0    # "$this$BottomSheetScaffold_sdMYb0k_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v13    # "$i$a$-with-BottomSheetScaffoldKt$BottomSheetScaffold$peekHeightPx$1":I
    nop

    .line 132
    .local v18, "peekHeightPx":I
    invoke-virtual {v1}, Landroidx/compose/material3/BottomSheetScaffoldState;->getBottomSheetState()Landroidx/compose/material3/SheetState;

    move-result-object v0

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 135
    new-instance v13, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1;

    move-object/from16 v16, v13

    move-object/from16 v17, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v32

    move-object/from16 v22, v11

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move/from16 v27, v9

    move/from16 v28, v8

    move-object/from16 v29, v10

    move-object/from16 v30, p0

    invoke-direct/range {v16 .. v30}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;IFFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    const v15, -0x2889a628

    move/from16 p18, v3

    .end local v3    # "sheetMaxWidth":F
    .local p18, "sheetMaxWidth":F
    const/4 v3, 0x1

    invoke-static {v12, v15, v3, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    check-cast v13, Lkotlin/jvm/functions/Function3;

    .line 127
    new-instance v15, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$2;

    move-object/from16 v3, p16

    .end local p16    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v3, "snackbarHost":Lkotlin/jvm/functions/Function3;
    invoke-direct {v15, v3, v1}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/BottomSheetScaffoldState;)V

    .end local v3    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p16    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    const v3, 0x548d5be

    move-wide/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "sheetContainerColor":J
    .local v16, "sheetContainerColor":J
    invoke-static {v12, v3, v4, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 130
    const v5, -0x5d6ed43b

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v5, v14, 0x380

    xor-int/lit16 v5, v5, 0x180

    const/16 v15, 0x100

    if-le v5, v15, :cond_4d

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    :cond_4d
    and-int/lit16 v5, v14, 0x180

    const/16 v15, 0x100

    if-ne v5, v15, :cond_4f

    :cond_4e
    goto :goto_34

    :cond_4f
    const/4 v4, 0x0

    .line 131
    :goto_34
    move-object v5, v12

    .local v4, "invalid$iv":Z
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 388
    .local v15, "$i$f$cache":I
    move-wide/from16 v19, v6

    .end local v6    # "sheetContentColor":J
    .restart local v19    # "sheetContentColor":J
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 389
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_51

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v4

    .end local v4    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_50

    goto :goto_35

    .line 393
    :cond_50
    move-object v4, v6

    goto :goto_36

    .line 389
    .end local p1    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_51
    move/from16 p1, v4

    .line 390
    .end local v4    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_35
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffold$3":I
    move/from16 p2, v4

    .end local v4    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffold$3":I
    .local p2, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffold$3":I
    new-instance v4, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;

    invoke-direct {v4, v1}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 390
    .end local p2    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffold$3":I
    nop

    .line 391
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 392
    nop

    .line 389
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_36
    nop

    .line 388
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 131
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 132
    nop

    .line 133
    nop

    .line 134
    shr-int/lit8 v5, v14, 0x3

    and-int/lit8 v5, v5, 0xe

    or-int/lit16 v5, v5, 0x6c00

    shr-int/lit8 v6, p17, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    shr-int/lit8 v6, p17, 0xc

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    shl-int/lit8 v6, v14, 0x6

    const/high16 v7, 0x70000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shl-int/lit8 v6, p17, 0xc

    const/high16 v7, 0xe000000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    shl-int/lit8 v6, p17, 0xc

    const/high16 v7, 0x70000000

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 123
    move-object/from16 p1, p15

    move-object/from16 p2, v33

    move-object/from16 p3, p20

    move-object/from16 p4, v13

    move-object/from16 p5, v3

    move/from16 p6, v2

    move-object/from16 p7, v4

    move-object/from16 p8, v0

    move-wide/from16 p9, v34

    move-wide/from16 p11, v36

    move-object/from16 p13, v12

    move/from16 p14, v5

    invoke-static/range {p1 .. p14}, Landroidx/compose/material3/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 165
    .end local v18    # "peekHeightPx":I
    :cond_52
    move-object/from16 v25, p15

    move-object/from16 v39, p16

    move/from16 v45, p17

    move/from16 v28, p18

    move-object/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v29, v11

    move/from16 v44, v14

    move-wide/from16 v30, v16

    move-object/from16 v38, v33

    move-wide/from16 v40, v34

    move-wide/from16 v42, v36

    move/from16 v35, v8

    move/from16 v34, v9

    move-object/from16 v36, v10

    move/from16 v37, v32

    move-wide/from16 v32, v19

    .end local v1    # "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .end local v2    # "sheetPeekHeight":F
    .end local v8    # "sheetShadowElevation":F
    .end local v9    # "sheetTonalElevation":F
    .end local v10    # "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .end local v11    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .end local v14    # "$dirty":I
    .end local v16    # "sheetContainerColor":J
    .end local v19    # "sheetContentColor":J
    .end local v33    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local p15    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p16    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local p17    # "$dirty1":I
    .end local p18    # "sheetMaxWidth":F
    .local v25, "modifier":Landroidx/compose/ui/Modifier;
    .local v26, "scaffoldState":Landroidx/compose/material3/BottomSheetScaffoldState;
    .local v27, "sheetPeekHeight":F
    .local v28, "sheetMaxWidth":F
    .local v29, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v30, "sheetContainerColor":J
    .local v32, "sheetContentColor":J
    .local v34, "sheetTonalElevation":F
    .local v35, "sheetShadowElevation":F
    .local v36, "sheetDragHandle":Lkotlin/jvm/functions/Function2;
    .local v37, "sheetSwipeEnabled":Z
    .local v38, "topBar":Lkotlin/jvm/functions/Function2;
    .local v39, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v40, "containerColor":J
    .local v42, "contentColor":J
    .local v44, "$dirty":I
    .local v45, "$dirty1":I
    :goto_37
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_53

    new-instance v46, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$4;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v27

    move/from16 v5, v28

    move-object/from16 v6, v29

    move-wide/from16 v7, v30

    move-wide/from16 v9, v32

    move/from16 v11, v34

    move-object/from16 v47, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v47, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v12, v35

    move-object/from16 v13, v36

    move/from16 v14, v37

    move-object/from16 v48, v15

    move-object/from16 v15, v38

    move-object/from16 v16, v39

    move-wide/from16 v17, v40

    move-wide/from16 v19, v42

    move-object/from16 v21, p20

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    invoke-direct/range {v0 .. v24}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$4;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v46

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v48

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_38

    .end local v47    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_53
    move-object/from16 v47, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v47    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_38
    return-void
.end method

.method private static final BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V
    .locals 29
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .param p3, "bottomSheet"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p5, "sheetPeekHeight"    # F
    .param p6, "sheetOffset"    # Lkotlin/jvm/functions/Function0;
    .param p7, "sheetState"    # Landroidx/compose/material3/SheetState;
    .param p8, "containerColor"    # J
    .param p10, "contentColor"    # J
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
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
            ">;F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material3/SheetState;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 333
    move-object/from16 v14, p7

    move/from16 v15, p13

    const v0, -0x42ca6b10

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomSheetScaffoldLayout)P(4,9!2,8,6:c#ui.unit.Dp,5,7,2:c#ui.graphics.Color,3:c#ui.graphics.Color)334@15050L7,335@15073L44,335@15062L55,338@15139L1965,338@15122L1982:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_1

    move-object/from16 v12, p0

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v2, v15, 0x30

    if-nez v2, :cond_3

    move-object/from16 v11, p1

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p1

    :goto_3
    and-int/lit16 v2, v15, 0x180

    if-nez v2, :cond_5

    move-object/from16 v10, p2

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_4

    :cond_4
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p2

    :goto_5
    and-int/lit16 v2, v15, 0xc00

    if-nez v2, :cond_7

    move-object/from16 v9, p3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_6

    :cond_6
    const/16 v2, 0x400

    :goto_6
    or-int/2addr v1, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p3

    :goto_7
    and-int/lit16 v2, v15, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v8, p4

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_8

    :cond_8
    const/16 v2, 0x2000

    :goto_8
    or-int/2addr v1, v2

    goto :goto_9

    :cond_9
    move-object/from16 v8, p4

    :goto_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v15

    if-nez v2, :cond_b

    move/from16 v2, p5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_b
    move/from16 v2, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v15, v16

    if-nez v16, :cond_d

    move-object/from16 v7, p6

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_d
    move-object/from16 v7, p6

    :goto_d
    const/high16 v18, 0xc00000

    and-int v18, v15, v18

    if-nez v18, :cond_f

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_e
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    :cond_f
    const/high16 v18, 0x6000000

    and-int v18, v15, v18

    if-nez v18, :cond_11

    move-wide/from16 v3, p8

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x4000000

    goto :goto_f

    :cond_10
    const/high16 v22, 0x2000000

    :goto_f
    or-int v1, v1, v22

    goto :goto_10

    :cond_11
    move-wide/from16 v3, p8

    :goto_10
    const/high16 v22, 0x30000000

    and-int v22, v15, v22

    if-nez v22, :cond_13

    move-wide/from16 v6, p10

    invoke-interface {v13, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x20000000

    goto :goto_11

    :cond_12
    const/high16 v24, 0x10000000

    :goto_11
    or-int v1, v1, v24

    goto :goto_12

    :cond_13
    move-wide/from16 v6, p10

    :goto_12
    const v24, 0x12492493

    and-int v5, v1, v24

    const v0, 0x12492492

    if-ne v5, v0, :cond_15

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_13

    .line 383
    :cond_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, v1

    goto/16 :goto_23

    .line 333
    :cond_15
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    const-string/jumbo v5, "androidx.compose.material3.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:332)"

    const v2, -0x42ca6b10

    invoke-static {v2, v1, v0, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 335
    :cond_16
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v5, 0x0

    .line 433
    .local v5, "$i$f$getCurrent":I
    move/from16 v24, v2

    .end local v2    # "$changed$iv":I
    .local v24, "$changed$iv":I
    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 335
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$i$f$getCurrent":I
    .end local v24    # "$changed$iv":I
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .local v5, "density":Landroidx/compose/ui/unit/Density;
    const v0, -0x5e90850

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v2, 0x1c00000

    and-int v3, v1, v2

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_14

    :cond_17
    const/4 v3, 0x0

    :goto_14
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 336
    move-object v4, v13

    .local v3, "invalid$iv":Z
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 434
    .local v25, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 435
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_19

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v3

    .end local v3    # "invalid$iv":Z
    .local v28, "invalid$iv":Z
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_18

    goto :goto_15

    .line 439
    :cond_18
    move-object/from16 v27, v2

    goto :goto_16

    .line 435
    .end local v28    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_19
    move/from16 v28, v3

    .line 436
    .end local v3    # "invalid$iv":Z
    .restart local v28    # "invalid$iv":Z
    :goto_15
    const/4 v3, 0x0

    .line 336
    .local v3, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1":I
    move-object/from16 v27, v2

    .end local v2    # "it$iv":Ljava/lang/Object;
    .local v27, "it$iv":Ljava/lang/Object;
    new-instance v2, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;

    invoke-direct {v2, v14, v5}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/ui/unit/Density;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 436
    .end local v3    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1":I
    nop

    .line 437
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 438
    nop

    .line 435
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 434
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v27    # "it$iv":Ljava/lang/Object;
    nop

    .line 336
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$f$cache":I
    .end local v28    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const v2, -0x5e9080e

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v0, v1, 0x1c00

    const/16 v2, 0x800

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_17

    :cond_1a
    move v0, v3

    :goto_17
    and-int/lit8 v2, v1, 0x70

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1b

    const/4 v2, 0x1

    goto :goto_18

    :cond_1b
    move v2, v3

    :goto_18
    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0xe

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x1

    goto :goto_19

    :cond_1c
    move v2, v3

    :goto_19
    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v1

    const/high16 v4, 0x4000000

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x1

    goto :goto_1a

    :cond_1d
    move v2, v3

    :goto_1a
    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v2, v1

    const/high16 v4, 0x20000000

    if-ne v2, v4, :cond_1e

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1e
    move v2, v3

    :goto_1b
    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    const/16 v4, 0x100

    if-ne v2, v4, :cond_1f

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1f
    move v2, v3

    :goto_1c
    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v1

    const/high16 v4, 0x20000

    if-ne v2, v4, :cond_20

    const/4 v2, 0x1

    goto :goto_1d

    :cond_20
    move v2, v3

    :goto_1d
    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_21

    const/4 v2, 0x1

    goto :goto_1e

    :cond_21
    move v2, v3

    :goto_1e
    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v1

    const/high16 v4, 0x100000

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    goto :goto_1f

    :cond_22
    move v2, v3

    :goto_1f
    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    const/high16 v4, 0x800000

    if-ne v2, v4, :cond_23

    const/4 v2, 0x1

    goto :goto_20

    :cond_23
    move v2, v3

    :goto_20
    or-int/2addr v0, v2

    .line 339
    move-object v4, v13

    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v0

    .local v16, "invalid$iv":Z
    const/16 v17, 0x0

    .line 440
    .local v17, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 441
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v16, :cond_25

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_24

    goto :goto_21

    .line 445
    :cond_24
    move/from16 v21, v1

    move-object/from16 v22, v2

    move-object v14, v4

    move-object/from16 v23, v5

    const/4 v15, 0x1

    goto :goto_22

    .line 442
    :cond_25
    :goto_21
    const/16 v19, 0x0

    .line 339
    .local v19, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2":I
    new-instance v20, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2$1;

    move-object/from16 v0, v20

    move/from16 v21, v1

    .end local v1    # "$dirty":I
    .local v21, "$dirty":I
    move-object/from16 v1, p1

    move-object/from16 v22, v2

    .end local v2    # "it$iv":Ljava/lang/Object;
    .local v22, "it$iv":Ljava/lang/Object;
    move-object/from16 v2, p4

    move v14, v3

    move-object/from16 v3, p3

    move-object v14, v4

    const/4 v15, 0x1

    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v4, p0

    move-object/from16 v23, v5

    .end local v5    # "density":Landroidx/compose/ui/unit/Density;
    .local v23, "density":Landroidx/compose/ui/unit/Density;
    move-wide/from16 v5, p8

    move-wide/from16 v7, p10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;)V

    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 442
    .end local v19    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2":I
    move-object/from16 v2, v20

    .line 443
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    nop

    .line 441
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 440
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v22    # "it$iv":Ljava/lang/Object;
    nop

    .line 339
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v2, v13, v1, v15}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 383
    .end local v23    # "density":Landroidx/compose/ui/unit/Density;
    :cond_26
    :goto_23
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_27

    new-instance v15, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$3;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v16, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJI)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_24

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_27
    move-object/from16 v16, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_24
    return-void
.end method

.method private static final StandardBottomSheet-XcniZvE(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 34
    .param p0, "state"    # Landroidx/compose/material3/SheetState;
    .param p1, "calculateAnchors"    # Lkotlin/jvm/functions/Function1;
    .param p2, "peekHeight"    # F
    .param p3, "sheetMaxWidth"    # F
    .param p4, "sheetSwipeEnabled"    # Z
    .param p5, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p6, "containerColor"    # J
    .param p8, "contentColor"    # J
    .param p10, "tonalElevation"    # F
    .param p11, "shadowElevation"    # F
    .param p12, "dragHandle"    # Lkotlin/jvm/functions/Function2;
    .param p13, "content"    # Lkotlin/jvm/functions/Function3;
    .param p14, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p15, "$changed"    # I
    .param p16, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "+",
            "Landroidx/compose/material3/DraggableAnchors<",
            "Landroidx/compose/material3/SheetValue;",
            ">;>;FFZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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
            "II)V"
        }
    .end annotation

    .line 232
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move/from16 v11, p15

    const v0, 0x194cbd93

    move-object/from16 v1, p14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(StandardBottomSheet)P(10!1,5:c#ui.unit.Dp,8:c#ui.unit.Dp,9,7,1:c#ui.graphics.Color,3:c#ui.graphics.Color,11:c#ui.unit.Dp,6:c#ui.unit.Dp,4)232@10554L24,242@10826L326,255@11381L491,236@10628L3850:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p15

    .local v1, "$dirty":I
    move/from16 v2, p16

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x6

    if-nez v3, :cond_1

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v11, 0x30

    const/16 v6, 0x10

    if-nez v3, :cond_3

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_5

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_2

    :cond_4
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    and-int/lit16 v3, v11, 0xc00

    if-nez v3, :cond_7

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_3

    :cond_6
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v1, v3

    :cond_7
    and-int/lit16 v3, v11, 0x6000

    if-nez v3, :cond_9

    move/from16 v10, p4

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_4

    :cond_8
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v1, v3

    goto :goto_5

    :cond_9
    move/from16 v10, p4

    :goto_5
    const/high16 v3, 0x30000

    and-int/2addr v3, v11

    if-nez v3, :cond_b

    move-object/from16 v8, p5

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v3, 0x10000

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_b
    move-object/from16 v8, p5

    :goto_7
    const/high16 v3, 0x180000

    and-int/2addr v3, v11

    if-nez v3, :cond_d

    move-wide/from16 v7, p6

    invoke-interface {v9, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v3, 0x80000

    :goto_8
    or-int/2addr v1, v3

    goto :goto_9

    :cond_d
    move-wide/from16 v7, p6

    :goto_9
    const/high16 v24, 0xc00000

    and-int v3, v11, v24

    if-nez v3, :cond_f

    move-wide/from16 v4, p8

    invoke-interface {v9, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v17, 0x400000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_f
    move-wide/from16 v4, p8

    :goto_b
    const/high16 v17, 0x6000000

    and-int v17, v11, v17

    if-nez v17, :cond_11

    move/from16 v0, p10

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v18, 0x2000000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_11
    move/from16 v0, p10

    :goto_d
    const/high16 v18, 0x30000000

    and-int v18, v11, v18

    if-nez v18, :cond_13

    move/from16 v11, p11

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v18, 0x10000000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_13
    move/from16 v11, p11

    :goto_f
    and-int/lit8 v18, p16, 0x6

    if-nez v18, :cond_15

    move-object/from16 v11, p12

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v18, 0x4

    goto :goto_10

    :cond_14
    const/16 v18, 0x2

    :goto_10
    or-int v2, v2, v18

    goto :goto_11

    :cond_15
    move-object/from16 v11, p12

    :goto_11
    and-int/lit8 v18, p16, 0x30

    if-nez v18, :cond_17

    move-object/from16 v11, p13

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v6, 0x20

    :cond_16
    or-int/2addr v2, v6

    goto :goto_12

    :cond_17
    move-object/from16 v11, p13

    :goto_12
    move v6, v2

    .end local v2    # "$dirty1":I
    .local v6, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v3, 0x12492492

    if-ne v2, v3, :cond_19

    and-int/lit8 v2, v6, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_19

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_13

    .line 318
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v30, v1

    move/from16 v29, v6

    goto/16 :goto_1a

    .line 232
    :cond_19
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "androidx.compose.material3.StandardBottomSheet (BottomSheetScaffold.kt:231)"

    const v3, 0x194cbd93

    invoke-static {v3, v1, v6, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 233
    :cond_1a
    const/4 v2, 0x0

    move v3, v2

    .local v3, "$changed$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$rememberCoroutineScope":I
    const v2, 0x2e20b340

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 406
    nop

    .line 408
    move-object v2, v9

    .line 409
    .local v2, "composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    move/from16 v18, v26

    .local v18, "$changed$iv$iv":I
    const/16 v19, 0x0

    .local v19, "$i$f$remember":I
    const v0, -0x1d58f75c

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    .local v0, "invalid$iv$iv$iv":Z
    move-object/from16 v20, v9

    .local v20, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 411
    .local v21, "$i$f$cache":I
    move/from16 v22, v0

    .end local v0    # "invalid$iv$iv$iv":Z
    .local v22, "invalid$iv$iv$iv":Z
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 412
    .local v23, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v3

    .end local v3    # "$changed$iv":I
    .local v28, "$changed$iv":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1b

    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 415
    const/16 v27, 0x0

    .line 416
    .local v27, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v27, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 415
    .end local v27    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v29, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v29, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v27

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 414
    move-object/from16 v27, v2

    .end local v2    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local v27, "composer$iv":Landroidx/compose/runtime/Composer;
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 413
    .end local v3    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v2

    .line 417
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v20

    .end local v20    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 418
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_14

    .line 419
    .end local v27    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    .local v2, "composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_1b
    move-object/from16 v29, v0

    move-object/from16 v27, v2

    move-object/from16 v2, v20

    .line 412
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v27    # "composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v29    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 411
    .end local v23    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v29    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 410
    .end local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$f$cache":I
    .end local v22    # "invalid$iv$iv$iv":Z
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 409
    .end local v18    # "$changed$iv$iv":I
    .end local v19    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 420
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 233
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v17    # "$i$f$rememberCoroutineScope":I
    .end local v27    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$changed$iv":I
    move-object v3, v2

    .line 235
    .local v3, "scope":Lkotlinx/coroutines/CoroutineScope;
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 238
    .local v2, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 239
    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v29, v6

    .end local v6    # "$dirty1":I
    .local v29, "$dirty1":I
    const/4 v6, 0x0

    invoke-static {v0, v4, v12, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 240
    invoke-static {v0, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 241
    const/4 v5, 0x2

    invoke-static {v0, v13, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object v4

    const v5, 0x5f933896

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    invoke-static {v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object/from16 v17, v9

    .local v17, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 421
    .local v18, "$i$f$cache":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 422
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_1d

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v4

    .end local v4    # "invalid$iv":Z
    .local v22, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_1c

    goto :goto_15

    .line 426
    :cond_1c
    move-object/from16 v28, v3

    move-object v4, v6

    move-object/from16 v3, v17

    goto :goto_16

    .line 422
    .end local v22    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_1d
    move/from16 v22, v4

    .line 423
    .end local v4    # "invalid$iv":Z
    .restart local v22    # "invalid$iv":Z
    :goto_15
    const/4 v4, 0x0

    .line 245
    .local v4, "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$1":I
    nop

    .line 246
    nop

    .line 244
    move/from16 v21, v4

    .end local v4    # "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$1":I
    .local v21, "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$1":I
    new-instance v4, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$1$1;

    invoke-direct {v4, v3, v15}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v2, v4}, Landroidx/compose/material3/SheetDefaultsKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v4

    .line 423
    .end local v21    # "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$1":I
    nop

    .line 424
    .local v4, "value$iv":Ljava/lang/Object;
    move-object/from16 v28, v3

    move-object/from16 v3, v17

    .end local v17    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v28, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 425
    nop

    .line 422
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 421
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 243
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    .end local v22    # "invalid$iv":Z
    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 242
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v3, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object v17

    .line 253
    nop

    .line 254
    nop

    .line 251
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move/from16 v19, p4

    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/AnchoredDraggableKt;->anchoredDraggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v3, 0x5f933ac1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x1

    goto :goto_17

    :cond_1e
    move/from16 v3, v26

    :goto_17
    and-int/lit8 v4, v1, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1f

    const/16 v26, 0x1

    :cond_1f
    or-int v3, v3, v26

    .line 256
    nop

    .local v3, "invalid$iv":Z
    move-object v4, v9

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 427
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 428
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_21

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p14, v1

    .end local v1    # "$dirty":I
    .local p14, "$dirty":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_20

    goto :goto_18

    .line 432
    :cond_20
    move-object v1, v6

    goto :goto_19

    .line 428
    .end local p14    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_21
    move/from16 p14, v1

    .line 429
    .end local v1    # "$dirty":I
    .restart local p14    # "$dirty":I
    :goto_18
    const/4 v1, 0x0

    .line 256
    .local v1, "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$2":I
    move/from16 v17, v1

    .end local v1    # "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$2":I
    .local v17, "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$2":I
    new-instance v1, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$2$1;

    invoke-direct {v1, v14, v15}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$2$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 429
    .end local v17    # "$i$a$-cache-BottomSheetScaffoldKt$StandardBottomSheet$2":I
    nop

    .line 430
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 431
    nop

    .line 428
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_19
    nop

    .line 427
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 256
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

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
    new-instance v5, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;

    move-object v0, v5

    move/from16 v30, p14

    .end local p14    # "$dirty":I
    .local v30, "$dirty":I
    move-object/from16 v1, p12

    move-object/from16 v31, v2

    .end local v2    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v31, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    move-object/from16 v2, p0

    move-object/from16 v32, v28

    .end local v28    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v32, "scope":Lkotlinx/coroutines/CoroutineScope;
    move/from16 v3, p4

    move-object/from16 v4, v32

    move-object v6, v5

    const/4 v7, 0x1

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SheetState;ZLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)V

    const v0, 0x3fcf3058

    invoke-static {v9, v0, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v0, v30, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, v24

    shr-int/lit8 v1, v30, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v30, 0xc

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v30, 0xc

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    shr-int/lit8 v2, v30, 0xc

    and-int/2addr v1, v2

    or-int v27, v0, v1

    const/16 v28, 0x40

    .line 237
    move-object/from16 v17, p5

    move-wide/from16 v18, p6

    move-wide/from16 v20, p8

    move/from16 v22, p10

    move/from16 v23, p11

    const/4 v0, 0x0

    move-object/from16 v24, v0

    move-object/from16 v26, v9

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 318
    .end local v31    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .end local v32    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_22
    :goto_1a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_23

    new-instance v17, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v18, v29

    .end local v29    # "$dirty1":I
    .local v18, "$dirty1":I
    move-object/from16 v6, p5

    move-object/from16 v33, v7

    move-wide/from16 v7, p6

    move-object/from16 v19, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1b

    .end local v18    # "$dirty1":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v29    # "$dirty1":I
    :cond_23
    move-object/from16 v19, v9

    move/from16 v18, v29

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v29    # "$dirty1":I
    .restart local v18    # "$dirty1":I
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1b
    return-void
.end method

.method public static final synthetic access$BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .param p3, "bottomSheet"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p5, "sheetPeekHeight"    # F
    .param p6, "sheetOffset"    # Lkotlin/jvm/functions/Function0;
    .param p7, "sheetState"    # Landroidx/compose/material3/SheetState;
    .param p8, "containerColor"    # J
    .param p10, "contentColor"    # J
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$StandardBottomSheet-XcniZvE(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/material3/SheetState;
    .param p1, "calculateAnchors"    # Lkotlin/jvm/functions/Function1;
    .param p2, "peekHeight"    # F
    .param p3, "sheetMaxWidth"    # F
    .param p4, "sheetSwipeEnabled"    # Z
    .param p5, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p6, "containerColor"    # J
    .param p8, "contentColor"    # J
    .param p10, "tonalElevation"    # F
    .param p11, "shadowElevation"    # F
    .param p12, "dragHandle"    # Lkotlin/jvm/functions/Function2;
    .param p13, "content"    # Lkotlin/jvm/functions/Function3;
    .param p14, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p15, "$changed"    # I
    .param p16, "$changed1"    # I

    .line 1
    invoke-static/range {p0 .. p16}, Landroidx/compose/material3/BottomSheetScaffoldKt;->StandardBottomSheet-XcniZvE(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final rememberBottomSheetScaffoldState(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;
    .locals 8
    .param p0, "bottomSheetState"    # Landroidx/compose/material3/SheetState;
    .param p1, "snackbarHostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const v0, -0x57e4b436

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBottomSheetScaffoldState)189@9008L34,190@9087L32,192@9161L196:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 190
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/BottomSheetScaffoldKt;->rememberStandardBottomSheetState(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    const-string v1, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    if-eqz p4, :cond_2

    .line 191
    const p4, 0x27c69848

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 p4, 0x0

    .local p4, "invalid$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 394
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 395
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    .line 396
    const/4 v6, 0x0

    .line 191
    .local v6, "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$1":I
    new-instance v7, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v7}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    .line 396
    .end local v6    # "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$1":I
    move-object v6, v7

    .line 397
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    nop

    .end local v6    # "value$iv":Ljava/lang/Object;
    goto :goto_0

    .line 399
    :cond_1
    move-object v6, v4

    .line 395
    :goto_0
    nop

    .line 394
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 191
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    move-object p1, v6

    check-cast p1, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 192
    const/4 p4, -0x1

    const-string/jumbo v2, "androidx.compose.material3.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:191)"

    invoke-static {v0, p3, p4, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const p4, 0x27c69892

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p3, 0xe

    xor-int/lit8 p4, p4, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-le p4, v1, :cond_4

    .line 193
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    :cond_4
    and-int/lit8 p4, p3, 0x6

    if-ne p4, v1, :cond_6

    :cond_5
    move p4, v2

    goto :goto_1

    :cond_6
    move p4, v0

    :goto_1
    and-int/lit8 v1, p3, 0x70

    xor-int/lit8 v1, v1, 0x30

    const/16 v3, 0x20

    if-le v1, v3, :cond_7

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit8 v1, p3, 0x30

    if-ne v1, v3, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    or-int/2addr p4, v0

    .restart local p4    # "invalid$iv":Z
    move-object v0, p2

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    .line 400
    .local v1, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 401
    .local v3, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p4, :cond_b

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_a

    goto :goto_2

    .line 405
    :cond_a
    move-object v4, v2

    goto :goto_3

    .line 402
    :cond_b
    :goto_2
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$2":I
    new-instance v5, Landroidx/compose/material3/BottomSheetScaffoldState;

    .line 195
    nop

    .line 196
    nop

    .line 194
    invoke-direct {v5, p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldState;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;)V

    .line 402
    .end local v4    # "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$2":I
    move-object v4, v5

    .line 403
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 404
    nop

    .line 401
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 400
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 193
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v1    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v4, Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v4
.end method

.method public static final rememberStandardBottomSheetState(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 8
    .param p0, "initialValue"    # Landroidx/compose/material3/SheetValue;
    .param p1, "confirmValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "skipHiddenState"    # Z
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    const v0, 0x287143dd

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberStandardBottomSheetState)P(1)214@9987L76:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 212
    sget-object p0, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    :cond_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 213
    sget-object v1, Landroidx/compose/material3/BottomSheetScaffoldKt$rememberStandardBottomSheetState$1;->INSTANCE:Landroidx/compose/material3/BottomSheetScaffoldKt$rememberStandardBottomSheetState$1;

    move-object p1, v1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 214
    const/4 p2, 0x1

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 215
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.material3.rememberStandardBottomSheetState (BottomSheetScaffold.kt:214)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    and-int/lit8 p5, p4, 0x70

    or-int/lit8 p5, p5, 0x6

    shl-int/lit8 v0, p4, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/2addr p5, v0

    shl-int/lit8 v0, p4, 0x3

    and-int/lit16 v0, v0, 0x1c00

    or-int v6, p5, v0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SheetDefaultsKt;->rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method
