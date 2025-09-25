.class public final Landroidx/compose/material/BottomSheetScaffoldKt;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,812:1\n74#2:813\n74#2:836\n74#2:843\n25#3:814\n50#3:821\n49#3:822\n25#3:829\n25#3:849\n1116#4,6:815\n1116#4,6:823\n1116#4,6:830\n1116#4,6:837\n1116#4,3:850\n1119#4,3:856\n1116#4,6:860\n1116#4,6:866\n1#5:844\n487#6,4:845\n491#6,2:853\n495#6:859\n487#7:855\n154#8:872\n154#8:873\n154#8:874\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt\n*L\n307#1:813\n455#1:836\n460#1:843\n348#1:814\n350#1:821\n350#1:822\n388#1:829\n613#1:849\n348#1:815,6\n350#1:823,6\n388#1:830,6\n456#1:837,6\n613#1:850,3\n613#1:856,3\n621#1:860,6\n688#1:866,6\n613#1:845,4\n613#1:853,2\n613#1:859\n613#1:855\n806#1:872\n807#1:873\n808#1:874\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0093\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\'\u0010\r\u001a#\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f\u00a2\u0006\u0002\u0008 H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"\u001a\u00de\u0002\u0010#\u001a\u00020\u00082\u001c\u0010$\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010%\u001a\u00020&2\u0015\u0008\u0002\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010(\u00a2\u0006\u0002\u0008\u001f2\u0019\u0008\u0002\u0010)\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f2\u0015\u0008\u0002\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010(\u00a2\u0006\u0002\u0008\u001f2\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0002\u0010.\u001a\u00020\u00012 \u0008\u0002\u0010/\u001a\u001a\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u001f\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u00100\u001a\u00020\u000c2\u0008\u0008\u0002\u00101\u001a\u00020\u00162\u0008\u0008\u0002\u00102\u001a\u00020\u00012\u0008\u0008\u0002\u00103\u001a\u00020\u00192\u0008\u0008\u0002\u00104\u001a\u00020\u00192\u0008\u0008\u0002\u00105\u001a\u00020\u00192\u0008\u0008\u0002\u00106\u001a\u00020\u00192\u0008\u0008\u0002\u00107\u001a\u00020\u00192\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001fH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:\u001a\u0080\u0002\u0010#\u001a\u00020\u00082\u001c\u0010$\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f\u00a2\u0006\u0002\u0008 2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010%\u001a\u00020&2\u0015\u0008\u0002\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010(\u00a2\u0006\u0002\u0008\u001f2\u0019\u0008\u0002\u0010)\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f2\u0015\u0008\u0002\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010(\u00a2\u0006\u0002\u0008\u001f2\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0002\u0010.\u001a\u00020\u00012\u0008\u0008\u0002\u00106\u001a\u00020\u00192\u0008\u0008\u0002\u00107\u001a\u00020\u00192\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001fH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010<\u001a\u00c5\u0001\u0010=\u001a\u00020\u00082\u0013\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010(\u00a2\u0006\u0002\u0008\u001f2&\u0010>\u001a\"\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(?\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f2&\u0010@\u001a\"\u0012\u0013\u0012\u00110A\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(B\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u001f2\u0013\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010(\u00a2\u0006\u0002\u0008\u001f2\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00080(\u00a2\u0006\u0002\u0008\u001f2\u0006\u0010.\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D0(2\u0006\u0010E\u001a\u00020\nH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010G\u001a4\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00142\u000e\u0008\u0002\u0010J\u001a\u0008\u0012\u0004\u0012\u00020D0K2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000c0\u000eH\u0007\u001a \u0010H\u001a\u00020&2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020\n2\u0006\u0010P\u001a\u00020*H\u0007\u001a>\u0010Q\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00142\u0006\u0010R\u001a\u00020S2\u000e\u0008\u0002\u0010J\u001a\u0008\u0012\u0004\u0012\u00020D0K2\u0014\u0008\u0002\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000c0\u000eH\u0007\u001a\u001c\u0010U\u001a\u00020V2\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030W2\u0006\u0010X\u001a\u00020YH\u0002\u001a!\u0010Z\u001a\u00020&2\u0008\u0008\u0002\u0010O\u001a\u00020\n2\u0008\u0008\u0002\u0010P\u001a\u00020*H\u0007\u00a2\u0006\u0002\u0010[\u001a+\u0010Z\u001a\u00020&2\u0008\u0008\u0002\u0010M\u001a\u00020N2\u0008\u0008\u0002\u0010O\u001a\u00020\n2\u0008\u0008\u0002\u0010P\u001a\u00020*H\u0007\u00a2\u0006\u0002\u0010\\\u001a;\u0010]\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00142\u000e\u0008\u0002\u0010J\u001a\u0008\u0012\u0004\u0012\u00020D0K2\u0014\u0008\u0002\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000c0\u000eH\u0007\u00a2\u0006\u0002\u0010^\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006_"
    }
    d2 = {
        "BottomSheetScaffoldPositionalThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "BottomSheetScaffoldVelocityThreshold",
        "BottomSheetScaffoldWithDrawerDeprecated",
        "",
        "FabSpacing",
        "BottomSheet",
        "",
        "state",
        "Landroidx/compose/material/BottomSheetState;",
        "sheetGesturesEnabled",
        "",
        "calculateAnchors",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Lkotlin/ParameterName;",
        "name",
        "sheetSize",
        "Landroidx/compose/material/DraggableAnchors;",
        "Landroidx/compose/material/BottomSheetValue;",
        "sheetShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "sheetElevation",
        "sheetBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "sheetContentColor",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "BottomSheet-0cLKjW4",
        "(Landroidx/compose/material/BottomSheetState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;FJJLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "BottomSheetScaffold",
        "sheetContent",
        "scaffoldState",
        "Landroidx/compose/material/BottomSheetScaffoldState;",
        "topBar",
        "Lkotlin/Function0;",
        "snackbarHost",
        "Landroidx/compose/material/SnackbarHostState;",
        "floatingActionButton",
        "floatingActionButtonPosition",
        "Landroidx/compose/material/FabPosition;",
        "sheetPeekHeight",
        "drawerContent",
        "drawerGesturesEnabled",
        "drawerShape",
        "drawerElevation",
        "drawerBackgroundColor",
        "drawerContentColor",
        "drawerScrimColor",
        "backgroundColor",
        "contentColor",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "BottomSheetScaffold-bGncdBI",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIII)V",
        "BottomSheetScaffold-HnlDQGw",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "BottomSheetScaffoldLayout",
        "body",
        "innerPadding",
        "bottomSheet",
        "",
        "layoutHeight",
        "sheetOffset",
        "",
        "sheetState",
        "BottomSheetScaffoldLayout-KCBPh4w",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function0;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V",
        "BottomSheetScaffoldState",
        "initialValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "confirmStateChange",
        "drawerState",
        "Landroidx/compose/material/DrawerState;",
        "bottomSheetState",
        "snackbarHostState",
        "BottomSheetState",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "confirmValueChange",
        "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "rememberBottomSheetScaffoldState",
        "(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;",
        "(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;",
        "rememberBottomSheetState",
        "(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;",
        "material_release"
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
.field private static final BottomSheetScaffoldPositionalThreshold:F

.field private static final BottomSheetScaffoldVelocityThreshold:F

.field private static final BottomSheetScaffoldWithDrawerDeprecated:Ljava/lang/String; = "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."

.field private static final FabSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 806
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 872
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 806
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->FabSpacing:F

    .line 807
    const/16 v0, 0x38

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 873
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 807
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldPositionalThreshold:F

    .line 808
    const/16 v0, 0x7d

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 874
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 808
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldVelocityThreshold:F

    return-void
.end method

.method private static final BottomSheet-0cLKjW4(Landroidx/compose/material/BottomSheetState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;FJJLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0, "state"    # Landroidx/compose/material/BottomSheetState;
    .param p1, "sheetGesturesEnabled"    # Z
    .param p2, "calculateAnchors"    # Lkotlin/jvm/functions/Function1;
    .param p3, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "sheetElevation"    # F
    .param p5, "sheetBackgroundColor"    # J
    .param p7, "sheetContentColor"    # J
    .param p9, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p10, "content"    # Lkotlin/jvm/functions/Function3;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetState;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "+",
            "Landroidx/compose/material/DraggableAnchors<",
            "Landroidx/compose/material/BottomSheetValue;",
            ">;>;",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJ",
            "Landroidx/compose/ui/Modifier;",
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

    .line 612
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p10

    move/from16 v12, p12

    move/from16 v11, p13

    const v0, 0x53ddd12d

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomSheet)P(8,6!1,7,5:c#ui.unit.Dp,3:c#ui.graphics.Color,4:c#ui.graphics.Color,2)612@26116L24,613@26145L1780:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    move/from16 v8, p1

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move/from16 v8, p1

    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_8

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    :goto_5
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v9, p3

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x800

    goto :goto_6

    :cond_a
    const/16 v2, 0x400

    :goto_6
    or-int/2addr v1, v2

    goto :goto_7

    :cond_b
    move-object/from16 v9, p3

    :goto_7
    and-int/lit8 v2, v11, 0x10

    if-eqz v2, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p4

    goto :goto_9

    :cond_c
    const v2, 0xe000

    and-int/2addr v2, v12

    if-nez v2, :cond_e

    move/from16 v6, p4

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x4000

    goto :goto_8

    :cond_d
    const/16 v2, 0x2000

    :goto_8
    or-int/2addr v1, v2

    goto :goto_9

    :cond_e
    move/from16 v6, p4

    :goto_9
    and-int/lit8 v2, v11, 0x20

    const/high16 v3, 0x70000

    if-eqz v2, :cond_f

    const/high16 v2, 0x30000

    or-int/2addr v1, v2

    move-wide/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v2, v12, v3

    if-nez v2, :cond_11

    move-wide/from16 v4, p5

    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v2, 0x10000

    :goto_a
    or-int/2addr v1, v2

    goto :goto_b

    :cond_11
    move-wide/from16 v4, p5

    :goto_b
    and-int/lit8 v2, v11, 0x40

    const/high16 v7, 0x180000

    if-eqz v2, :cond_12

    or-int/2addr v1, v7

    move-wide/from16 v3, p7

    goto :goto_d

    :cond_12
    const/high16 v2, 0x380000

    and-int/2addr v2, v12

    if-nez v2, :cond_14

    move-wide/from16 v3, p7

    invoke-interface {v10, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_13

    const/high16 v2, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v2, 0x80000

    :goto_c
    or-int/2addr v1, v2

    goto :goto_d

    :cond_14
    move-wide/from16 v3, p7

    :goto_d
    and-int/lit16 v2, v11, 0x80

    if-eqz v2, :cond_15

    const/high16 v5, 0xc00000

    or-int/2addr v1, v5

    move-object/from16 v5, p9

    goto :goto_f

    :cond_15
    const/high16 v5, 0x1c00000

    and-int/2addr v5, v12

    if-nez v5, :cond_17

    move-object/from16 v5, p9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p9

    :goto_f
    and-int/lit16 v7, v11, 0x100

    if-eqz v7, :cond_18

    const/high16 v7, 0x6000000

    :goto_10
    or-int/2addr v1, v7

    goto :goto_11

    :cond_18
    const/high16 v7, 0xe000000

    and-int/2addr v7, v12

    if-nez v7, :cond_1a

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/high16 v7, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v7, 0x2000000

    goto :goto_10

    :cond_1a
    :goto_11
    move v7, v1

    .end local v1    # "$dirty":I
    .local v7, "$dirty":I
    const v1, 0xb6db6db

    and-int/2addr v1, v7

    const v0, 0x2492492

    if-ne v1, v0, :cond_1c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    .line 656
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v5

    goto/16 :goto_16

    .line 612
    :cond_1c
    :goto_12
    if-eqz v2, :cond_1d

    .line 610
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v5, v0

    .end local p9    # "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 612
    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.material.BottomSheet (BottomSheetScaffold.kt:611)"

    const v2, 0x53ddd12d

    invoke-static {v2, v7, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1e
    nop

    .line 613
    const/4 v0, 0x0

    move v1, v0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v0, 0x2e20b340

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 845
    nop

    .line 847
    move-object v0, v10

    .line 848
    .local v0, "composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    move/from16 v17, v16

    .local v17, "$changed$iv$iv":I
    const/16 v16, 0x0

    move/from16 v18, v1

    .end local v1    # "$changed$iv":I
    .local v16, "$i$f$remember":I
    .local v18, "$changed$iv":I
    const v1, -0x1d58f75c

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 849
    const/4 v1, 0x0

    .local v1, "invalid$iv$iv$iv":Z
    move-object/from16 v19, v10

    .local v19, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 850
    .local v20, "$i$f$cache":I
    move/from16 v21, v1

    .end local v1    # "invalid$iv$iv$iv":Z
    .local v21, "invalid$iv$iv$iv":Z
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 851
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v2

    .end local v2    # "$i$f$rememberCoroutineScope":I
    .local v24, "$i$f$rememberCoroutineScope":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    .line 852
    const/4 v2, 0x0

    .line 853
    .local v2, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 854
    const/16 v23, 0x0

    .line 855
    .local v23, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v23, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 854
    .end local v23    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v26, v1

    .end local v1    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v26, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v23

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 853
    move-object/from16 v23, v0

    .end local v0    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local v23, "composer$iv":Landroidx/compose/runtime/Composer;
    new-instance v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 852
    .end local v2    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 856
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v19

    .end local v19    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 857
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_13

    .line 858
    .end local v23    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "composer$iv":Landroidx/compose/runtime/Composer;
    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_1f
    move-object/from16 v23, v0

    move-object/from16 v26, v1

    move-object/from16 v1, v19

    .end local v0    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v23    # "composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v26    # "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v26

    .line 851
    :goto_13
    nop

    .line 850
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v26    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 849
    .end local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache":I
    .end local v21    # "invalid$iv$iv$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 848
    .end local v16    # "$i$f$remember":I
    .end local v17    # "$changed$iv$iv":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 859
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 613
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v18    # "$changed$iv":I
    .end local v23    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$f$rememberCoroutineScope":I
    move-object v0, v1

    .line 615
    .local v0, "scope":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/BottomSheetState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v17

    .line 618
    sget-object v18, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 619
    nop

    .line 616
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x38

    const/16 v24, 0x0

    move-object/from16 v16, v5

    move/from16 v19, p1

    invoke-static/range {v16 .. v24}, Landroidx/compose/material/AnchoredDraggableKt;->anchoredDraggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x2cc0f6e0

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v2, v2, v16

    .line 621
    move-object/from16 v16, v10

    .local v2, "invalid$iv":Z
    .local v16, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 860
    .local v17, "$i$f$cache":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 861
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_21

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v2

    .end local v2    # "invalid$iv":Z
    .local v19, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_20

    goto :goto_14

    .line 865
    :cond_20
    move-object v2, v3

    move-object/from16 v18, v2

    move-object/from16 v3, v16

    goto :goto_15

    .line 861
    .end local v19    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_21
    move/from16 v19, v2

    .line 862
    .end local v2    # "invalid$iv":Z
    .restart local v19    # "invalid$iv":Z
    :goto_14
    const/4 v2, 0x0

    .line 621
    .local v2, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$1":I
    move/from16 v18, v2

    .end local v2    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$1":I
    .local v18, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$1":I
    new-instance v2, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$1$1;

    invoke-direct {v2, v15, v14}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/material/BottomSheetState;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 862
    .end local v18    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$1":I
    nop

    .line 863
    .local v2, "value$iv":Ljava/lang/Object;
    move-object/from16 v18, v3

    move-object/from16 v3, v16

    .end local v16    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v18, "it$iv":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 864
    nop

    .line 861
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_15
    nop

    .line 860
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v18    # "it$iv":Ljava/lang/Object;
    nop

    .line 621
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local v19    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 629
    new-instance v2, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$2;

    invoke-direct {v2, v14, v0}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$2;-><init>(Landroidx/compose/material/BottomSheetState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v28, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v1, v0, v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 650
    nop

    .line 652
    nop

    .line 653
    const/16 v22, 0x0

    .line 651
    nop

    .line 654
    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$3;

    invoke-direct {v0, v13}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v1, 0x73ee4169

    invoke-static {v10, v1, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v0, v7, 0x6

    and-int/lit8 v0, v0, 0x70

    const/high16 v1, 0x180000

    or-int/2addr v0, v1

    shr-int/lit8 v1, v7, 0x9

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v7, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x3

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v26, v0, v1

    const/16 v27, 0x10

    .line 614
    move-object/from16 v17, p3

    move-wide/from16 v18, p5

    move-wide/from16 v20, p7

    move/from16 v23, p4

    move-object/from16 v25, v10

    invoke-static/range {v16 .. v27}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 656
    .end local v28    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_22
    move-object/from16 v16, v5

    .end local v5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v5

    if-eqz v5, :cond_23

    new-instance v17, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move/from16 v5, p4

    move/from16 v18, v7

    .end local v7    # "$dirty":I
    .local v18, "$dirty":I
    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v19, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v16

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$4;-><init>(Landroidx/compose/material/BottomSheetState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;FJJLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_17

    .end local v18    # "$dirty":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$dirty":I
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_23
    move/from16 v18, v7

    move-object/from16 v19, v10

    .end local v7    # "$dirty":I
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$dirty":I
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_17
    return-void
.end method

.method public static final BottomSheetScaffold-HnlDQGw(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 47
    .param p0, "sheetContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "scaffoldState"    # Landroidx/compose/material/BottomSheetScaffoldState;
    .param p3, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p5, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p6, "floatingActionButtonPosition"    # I
    .param p7, "sheetGesturesEnabled"    # Z
    .param p8, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p9, "sheetElevation"    # F
    .param p10, "sheetBackgroundColor"    # J
    .param p12, "sheetContentColor"    # J
    .param p14, "sheetPeekHeight"    # F
    .param p15, "backgroundColor"    # J
    .param p17, "contentColor"    # J
    .param p19, "content"    # Lkotlin/jvm/functions/Function3;
    .param p20, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p21, "$changed"    # I
    .param p22, "$changed1"    # I
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
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
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
            ">;IZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJFJJ",
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

    .line 453
    move/from16 v15, p21

    move/from16 v13, p22

    move/from16 v14, p23

    const v0, -0x19385210

    move-object/from16 v1, p20

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p20    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomSheetScaffold)P(8,5,6,15,14,3,4:c#material.FabPosition,11,13,10:c#ui.unit.Dp,7:c#ui.graphics.Color,9:c#ui.graphics.Color,12:c#ui.unit.Dp,0:c#ui.graphics.Color,2:c#ui.graphics.Color)438@17024L34,444@17393L6,446@17524L6,447@17571L37,449@17724L6,450@17769L32,454@17970L7,455@17982L75,*459@18100L7,460@18140L2377:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p21

    .local v1, "$dirty":I
    move/from16 v2, p22

    .local v2, "$dirty1":I
    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    move-object/from16 v12, p0

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v15, 0x70

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
    and-int/lit16 v9, v15, 0x380

    const/16 v16, 0x100

    if-nez v9, :cond_8

    and-int/lit8 v9, v14, 0x4

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v16

    goto :goto_4

    :cond_6
    move-object/from16 v9, p2

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v1, v1, v17

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v17, v14, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v15, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v18

    goto :goto_6

    :cond_a
    move/from16 v20, v19

    :goto_6
    or-int v1, v1, v20

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v20, v14, 0x10

    const v21, 0xe000

    const/16 v22, 0x4000

    const/16 v23, 0x2000

    if-eqz v20, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v5, p4

    goto :goto_9

    :cond_c
    and-int v24, v15, v21

    if-nez v24, :cond_e

    move-object/from16 v5, p4

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v22

    goto :goto_8

    :cond_d
    move/from16 v25, v23

    :goto_8
    or-int v1, v1, v25

    goto :goto_9

    :cond_e
    move-object/from16 v5, p4

    :goto_9
    and-int/lit8 v25, v14, 0x20

    const/high16 v26, 0x30000

    const/high16 v27, 0x70000

    if-eqz v25, :cond_f

    or-int v1, v1, v26

    move-object/from16 v6, p5

    goto :goto_b

    :cond_f
    and-int v28, v15, v27

    if-nez v28, :cond_11

    move-object/from16 v6, p5

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/high16 v29, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v29, 0x10000

    :goto_a
    or-int v1, v1, v29

    goto :goto_b

    :cond_11
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v29, v14, 0x40

    if-eqz v29, :cond_12

    const/high16 v30, 0x180000

    or-int v1, v1, v30

    move/from16 v7, p6

    goto :goto_d

    :cond_12
    const/high16 v30, 0x380000

    and-int v30, v15, v30

    if-nez v30, :cond_14

    move/from16 v7, p6

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v31

    if-eqz v31, :cond_13

    const/high16 v31, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v31, 0x80000

    :goto_c
    or-int v1, v1, v31

    goto :goto_d

    :cond_14
    move/from16 v7, p6

    :goto_d
    and-int/lit16 v10, v14, 0x80

    if-eqz v10, :cond_15

    const/high16 v32, 0xc00000

    or-int v1, v1, v32

    move/from16 v0, p7

    goto :goto_f

    :cond_15
    const/high16 v32, 0x1c00000

    and-int v32, v15, v32

    if-nez v32, :cond_17

    move/from16 v0, p7

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v33

    if-eqz v33, :cond_16

    const/high16 v33, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v33, 0x400000

    :goto_e
    or-int v1, v1, v33

    goto :goto_f

    :cond_17
    move/from16 v0, p7

    :goto_f
    const/high16 v33, 0xe000000

    and-int v33, v15, v33

    if-nez v33, :cond_1a

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_19

    const/high16 v33, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v33, 0x2000000

    :goto_10
    or-int v1, v1, v33

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p8

    :goto_11
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_1b

    const/high16 v33, 0x30000000

    or-int v1, v1, v33

    move/from16 v4, p9

    goto :goto_13

    :cond_1b
    const/high16 v33, 0x70000000

    and-int v33, v15, v33

    if-nez v33, :cond_1d

    move/from16 v4, p9

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v33

    if-eqz v33, :cond_1c

    const/high16 v33, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v33, 0x10000000

    :goto_12
    or-int v1, v1, v33

    goto :goto_13

    :cond_1d
    move/from16 v4, p9

    :goto_13
    and-int/lit8 v33, v13, 0xe

    if-nez v33, :cond_20

    and-int/lit16 v4, v14, 0x400

    if-nez v4, :cond_1e

    move-wide/from16 v4, p10

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v33

    if-eqz v33, :cond_1f

    const/16 v24, 0x4

    goto :goto_14

    :cond_1e
    move-wide/from16 v4, p10

    :cond_1f
    const/16 v24, 0x2

    :goto_14
    or-int v2, v2, v24

    goto :goto_15

    :cond_20
    move-wide/from16 v4, p10

    :goto_15
    and-int/lit8 v24, v13, 0x70

    if-nez v24, :cond_23

    and-int/lit16 v4, v14, 0x800

    if-nez v4, :cond_21

    move-wide/from16 v4, p12

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_22

    const/16 v28, 0x20

    goto :goto_16

    :cond_21
    move-wide/from16 v4, p12

    :cond_22
    const/16 v28, 0x10

    :goto_16
    or-int v2, v2, v28

    goto :goto_17

    :cond_23
    move-wide/from16 v4, p12

    :goto_17
    and-int/lit16 v4, v14, 0x1000

    if-eqz v4, :cond_24

    or-int/lit16 v2, v2, 0x180

    move/from16 v5, p14

    goto :goto_19

    :cond_24
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_26

    move/from16 v5, p14

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_25

    move/from16 v31, v16

    goto :goto_18

    :cond_25
    const/16 v31, 0x80

    :goto_18
    or-int v2, v2, v31

    goto :goto_19

    :cond_26
    move/from16 v5, p14

    :goto_19
    and-int/lit16 v5, v13, 0x1c00

    if-nez v5, :cond_29

    and-int/lit16 v5, v14, 0x2000

    if-nez v5, :cond_27

    move-wide/from16 v5, p15

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_1a

    :cond_27
    move-wide/from16 v5, p15

    :cond_28
    move/from16 v18, v19

    :goto_1a
    or-int v2, v2, v18

    goto :goto_1b

    :cond_29
    move-wide/from16 v5, p15

    :goto_1b
    and-int v16, v13, v21

    if-nez v16, :cond_2c

    and-int/lit16 v5, v14, 0x4000

    if-nez v5, :cond_2a

    move-wide/from16 v5, p17

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_2b

    goto :goto_1c

    :cond_2a
    move-wide/from16 v5, p17

    :cond_2b
    move/from16 v22, v23

    :goto_1c
    or-int v2, v2, v22

    goto :goto_1d

    :cond_2c
    move-wide/from16 v5, p17

    :goto_1d
    const v16, 0x8000

    and-int v16, v14, v16

    if-eqz v16, :cond_2d

    or-int v2, v2, v26

    move-object/from16 v13, p19

    goto :goto_1f

    :cond_2d
    and-int v16, v13, v27

    if-nez v16, :cond_2f

    move-object/from16 v13, p19

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    const/high16 v16, 0x20000

    goto :goto_1e

    :cond_2e
    const/high16 v16, 0x10000

    :goto_1e
    or-int v2, v2, v16

    goto :goto_1f

    :cond_2f
    move-object/from16 v13, p19

    :goto_1f
    const v16, 0x5b6db6db

    and-int v5, v1, v16

    const v6, 0x12492492

    if-ne v5, v6, :cond_31

    const v5, 0x5b6db

    and-int/2addr v5, v2

    const v6, 0x12492

    if-ne v5, v6, :cond_31

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_20

    .line 514
    :cond_30
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v26, p3

    move-object/from16 v27, p4

    move-object/from16 v28, p5

    move/from16 v30, p7

    move-object/from16 v31, p8

    move/from16 v32, p9

    move-wide/from16 v33, p10

    move-wide/from16 v35, p12

    move/from16 v37, p14

    move-wide/from16 v38, p15

    move-wide/from16 v40, p17

    move/from16 v42, v1

    move/from16 v43, v2

    move/from16 v29, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    goto/16 :goto_2f

    .line 453
    :cond_31
    :goto_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v15, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_39

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_32

    goto/16 :goto_21

    .line 451
    :cond_32
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_33

    and-int/lit16 v1, v1, -0x381

    :cond_33
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_34

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_34
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_35

    and-int/lit8 v2, v2, -0xf

    :cond_35
    and-int/lit16 v0, v14, 0x800

    if-eqz v0, :cond_36

    and-int/lit8 v2, v2, -0x71

    :cond_36
    and-int/lit16 v0, v14, 0x2000

    if-eqz v0, :cond_37

    and-int/lit16 v2, v2, -0x1c01

    :cond_37
    and-int/lit16 v0, v14, 0x4000

    if-eqz v0, :cond_38

    const v0, -0xe001

    and-int/2addr v0, v2

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    move/from16 v10, p7

    move-object/from16 v6, p8

    move-wide/from16 v19, p10

    move-wide/from16 v17, p12

    move/from16 v2, p14

    move-wide/from16 v3, p15

    move-wide/from16 v21, p17

    move v13, v0

    move v12, v1

    move-object/from16 v0, p3

    move/from16 v1, p9

    .end local v2    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_2c

    .end local v0    # "$dirty1":I
    .restart local v2    # "$dirty1":I
    :cond_38
    move-object/from16 v0, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    move/from16 v10, p7

    move-object/from16 v6, p8

    move-wide/from16 v19, p10

    move-wide/from16 v17, p12

    move-wide/from16 v3, p15

    move-wide/from16 v21, p17

    move v12, v1

    move v13, v2

    move/from16 v1, p9

    move/from16 v2, p14

    goto/16 :goto_2c

    .line 453
    :cond_39
    :goto_21
    if-eqz v3, :cond_3a

    .line 438
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v8, v3

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    :cond_3a
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_3b

    .line 439
    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static {v6, v6, v11, v3, v5}, Landroidx/compose/material/BottomSheetScaffoldKt;->rememberBottomSheetScaffoldState(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;

    move-result-object v3

    .end local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v3, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    and-int/lit16 v1, v1, -0x381

    move-object v9, v3

    .end local v3    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v9, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    :cond_3b
    if-eqz v17, :cond_3c

    .line 440
    const/4 v3, 0x0

    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v3, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_22

    .line 439
    .end local v3    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_3c
    move-object/from16 v3, p3

    .line 440
    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v3    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_22
    if-eqz v20, :cond_3d

    sget-object v5, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v5}, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v5, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_23

    .end local v5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_3d
    move-object/from16 v5, p4

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_23
    if-eqz v25, :cond_3e

    .line 442
    const/16 v16, 0x0

    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v16, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    goto :goto_24

    .line 440
    .end local v16    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :cond_3e
    move-object/from16 v16, p5

    .line 442
    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local v16    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :goto_24
    if-eqz v29, :cond_3f

    .line 443
    sget-object v17, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material/FabPosition$Companion;->getEnd-5ygKITE()I

    move-result v7

    .end local p6    # "floatingActionButtonPosition":I
    .local v7, "floatingActionButtonPosition":I
    :cond_3f
    if-eqz v10, :cond_40

    .line 444
    const/4 v10, 0x1

    .end local p7    # "sheetGesturesEnabled":Z
    .local v10, "sheetGesturesEnabled":Z
    goto :goto_25

    .line 443
    .end local v10    # "sheetGesturesEnabled":Z
    .restart local p7    # "sheetGesturesEnabled":Z
    :cond_40
    move/from16 v10, p7

    .line 444
    .end local p7    # "sheetGesturesEnabled":Z
    .restart local v10    # "sheetGesturesEnabled":Z
    :goto_25
    and-int/lit16 v6, v14, 0x100

    move-object/from16 p1, v3

    .end local v3    # "topBar":Lkotlin/jvm/functions/Function2;
    .local p1, "topBar":Lkotlin/jvm/functions/Function2;
    const/4 v3, 0x6

    if-eqz v6, :cond_41

    .line 445
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v6, v11, v3}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/graphics/Shape;

    .end local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v6, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    const v17, -0xe000001

    and-int v1, v1, v17

    goto :goto_26

    .line 444
    .end local v6    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :cond_41
    move-object/from16 v6, p8

    .line 445
    .end local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v6    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :goto_26
    if-eqz v0, :cond_42

    .line 446
    sget-object v0, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getSheetElevation-D9Ej5fM()F

    move-result v0

    .end local p9    # "sheetElevation":F
    .local v0, "sheetElevation":F
    goto :goto_27

    .line 445
    .end local v0    # "sheetElevation":F
    .restart local p9    # "sheetElevation":F
    :cond_42
    move/from16 v0, p9

    .line 446
    .end local p9    # "sheetElevation":F
    .restart local v0    # "sheetElevation":F
    :goto_27
    and-int/lit16 v3, v14, 0x400

    if-eqz v3, :cond_43

    .line 447
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p3, v0

    const/4 v0, 0x6

    .end local v0    # "sheetElevation":F
    .local p3, "sheetElevation":F
    invoke-virtual {v3, v11, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v17

    .end local p10    # "sheetBackgroundColor":J
    .local v17, "sheetBackgroundColor":J
    and-int/lit8 v2, v2, -0xf

    move v0, v2

    move-wide/from16 v2, v17

    goto :goto_28

    .line 446
    .end local v17    # "sheetBackgroundColor":J
    .end local p3    # "sheetElevation":F
    .restart local v0    # "sheetElevation":F
    .restart local p10    # "sheetBackgroundColor":J
    :cond_43
    move/from16 p3, v0

    .end local v0    # "sheetElevation":F
    .restart local p3    # "sheetElevation":F
    move v0, v2

    move-wide/from16 v2, p10

    .line 447
    .end local p10    # "sheetBackgroundColor":J
    .local v0, "$dirty1":I
    .local v2, "sheetBackgroundColor":J
    :goto_28
    move/from16 p4, v1

    .end local v1    # "$dirty":I
    .local p4, "$dirty":I
    and-int/lit16 v1, v14, 0x800

    if-eqz v1, :cond_44

    .line 448
    and-int/lit8 v1, v0, 0xe

    invoke-static {v2, v3, v11, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    .end local p12    # "sheetContentColor":J
    .local v17, "sheetContentColor":J
    and-int/lit8 v0, v0, -0x71

    goto :goto_29

    .line 447
    .end local v17    # "sheetContentColor":J
    .restart local p12    # "sheetContentColor":J
    :cond_44
    move-wide/from16 v17, p12

    .line 448
    .end local p12    # "sheetContentColor":J
    .restart local v17    # "sheetContentColor":J
    :goto_29
    if-eqz v4, :cond_45

    .line 449
    sget-object v1, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getSheetPeekHeight-D9Ej5fM()F

    move-result v1

    .end local p14    # "sheetPeekHeight":F
    .local v1, "sheetPeekHeight":F
    goto :goto_2a

    .line 448
    .end local v1    # "sheetPeekHeight":F
    .restart local p14    # "sheetPeekHeight":F
    :cond_45
    move/from16 v1, p14

    .line 449
    .end local p14    # "sheetPeekHeight":F
    .restart local v1    # "sheetPeekHeight":F
    :goto_2a
    and-int/lit16 v4, v14, 0x2000

    if-eqz v4, :cond_46

    .line 450
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p5, v1

    const/4 v1, 0x6

    .end local v1    # "sheetPeekHeight":F
    .local p5, "sheetPeekHeight":F
    invoke-virtual {v4, v11, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    move-result-wide v19

    .end local p15    # "backgroundColor":J
    .local v19, "backgroundColor":J
    and-int/lit16 v0, v0, -0x1c01

    move v4, v0

    move-wide/from16 v0, v19

    goto :goto_2b

    .line 449
    .end local v19    # "backgroundColor":J
    .end local p5    # "sheetPeekHeight":F
    .restart local v1    # "sheetPeekHeight":F
    .restart local p15    # "backgroundColor":J
    :cond_46
    move/from16 p5, v1

    .end local v1    # "sheetPeekHeight":F
    .restart local p5    # "sheetPeekHeight":F
    move v4, v0

    move-wide/from16 v0, p15

    .line 450
    .end local p15    # "backgroundColor":J
    .local v0, "backgroundColor":J
    .local v4, "$dirty1":I
    :goto_2b
    move-wide/from16 v19, v2

    .end local v2    # "sheetBackgroundColor":J
    .local v19, "sheetBackgroundColor":J
    and-int/lit16 v2, v14, 0x4000

    if-eqz v2, :cond_47

    .line 451
    shr-int/lit8 v2, v4, 0x9

    and-int/lit8 v2, v2, 0xe

    invoke-static {v0, v1, v11, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    .end local p17    # "contentColor":J
    .local v2, "contentColor":J
    const v21, -0xe001

    and-int v4, v4, v21

    move/from16 v12, p4

    move-wide/from16 v21, v2

    move v13, v4

    move/from16 v2, p5

    move-wide v3, v0

    move-object/from16 v0, p1

    move/from16 v1, p3

    goto :goto_2c

    .line 450
    .end local v2    # "contentColor":J
    .restart local p17    # "contentColor":J
    :cond_47
    move/from16 v12, p4

    move/from16 v2, p5

    move-wide/from16 v21, p17

    move v13, v4

    move-wide v3, v0

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 451
    .end local v4    # "$dirty1":I
    .end local p1    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local p3    # "sheetElevation":F
    .end local p4    # "$dirty":I
    .end local p5    # "sheetPeekHeight":F
    .end local p17    # "contentColor":J
    .local v0, "topBar":Lkotlin/jvm/functions/Function2;
    .local v1, "sheetElevation":F
    .local v2, "sheetPeekHeight":F
    .local v3, "backgroundColor":J
    .local v12, "$dirty":I
    .local v13, "$dirty1":I
    .local v21, "contentColor":J
    :goto_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v23

    if-eqz v23, :cond_48

    .line 453
    const-string/jumbo v14, "androidx.compose.material.BottomSheetScaffold (BottomSheetScaffold.kt:452)"

    const v15, -0x19385210

    invoke-static {v15, v12, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 455
    :cond_48
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .local v14, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v15, 0x0

    .local v15, "$changed$iv":I
    const/16 v23, 0x0

    .line 836
    .local v23, "$i$f$getCurrent":I
    move/from16 v24, v12

    .end local v12    # "$dirty":I
    .local v24, "$dirty":I
    const v12, 0x789c5f52

    move/from16 p1, v15

    .end local v15    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v12, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 455
    .end local v14    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v23    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    check-cast v12, Landroidx/compose/ui/unit/Density;

    .local v12, "density":Landroidx/compose/ui/unit/Density;
    const v14, 0x2cc0d60b

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    .line 456
    nop

    .local v14, "invalid$iv":Z
    move-object v15, v11

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 837
    .local v23, "$i$f$cache":I
    move-wide/from16 v25, v3

    .end local v3    # "backgroundColor":J
    .local v25, "backgroundColor":J
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 838
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_4a

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v4

    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .local p1, "$i$a$-let-ComposerKt$cache$1$iv":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_49

    goto :goto_2d

    .line 842
    :cond_49
    move-object/from16 p2, v3

    goto :goto_2e

    .line 838
    .end local p1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .restart local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :cond_4a
    move/from16 p1, v4

    .line 839
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .restart local p1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2d
    const/4 v4, 0x0

    .line 456
    .local v4, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffold$1":I
    move-object/from16 p2, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local p2, "it$iv":Ljava/lang/Object;
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;

    invoke-direct {v3, v9, v12}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;-><init>(Landroidx/compose/material/BottomSheetScaffoldState;Landroidx/compose/ui/unit/Density;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 839
    .end local v4    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffold$1":I
    nop

    .line 840
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 841
    nop

    .line 838
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_2e
    nop

    .line 837
    .end local p1    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p2    # "it$iv":Ljava/lang/Object;
    nop

    .line 456
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$f$cache":I
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x0

    invoke-static {v3, v11, v4}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 460
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v14, 0x0

    .line 843
    .local v14, "$i$f$getCurrent":I
    const v15, 0x789c5f52

    move/from16 p1, v4

    .end local v4    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 460
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    move-object v3, v4

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 844
    .local v3, "$this$BottomSheetScaffold_HnlDQGw_u24lambda_u245":Landroidx/compose/ui/unit/Density;
    const/4 v4, 0x0

    .line 460
    .local v4, "$i$a$-with-BottomSheetScaffoldKt$BottomSheetScaffold$peekHeightPx$1":I
    invoke-interface {v3, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    .end local v4    # "$i$a$-with-BottomSheetScaffoldKt$BottomSheetScaffold$peekHeightPx$1":I
    .local v3, "peekHeightPx":F
    move/from16 p9, v3

    .line 462
    nop

    .line 463
    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v8, v4, v14, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 464
    nop

    .line 465
    const/16 v23, 0x0

    const/16 v27, 0x0

    .line 466
    new-instance v15, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2;

    move-object/from16 p1, v15

    move-object/from16 p2, v9

    move-object/from16 p3, v0

    move-object/from16 p4, p19

    move-object/from16 p5, v16

    move/from16 p6, v2

    move/from16 p7, v7

    move/from16 p8, v10

    move-object/from16 p10, v6

    move/from16 p11, v1

    move-wide/from16 p12, v19

    move-wide/from16 p14, v17

    move-object/from16 p16, p0

    move-object/from16 p17, v5

    invoke-direct/range {p1 .. p17}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2;-><init>(Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FIZFLandroidx/compose/ui/graphics/Shape;FJJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 p13, v0

    .end local v0    # "topBar":Lkotlin/jvm/functions/Function2;
    .local p13, "topBar":Lkotlin/jvm/functions/Function2;
    const v0, -0x7d05ecc

    invoke-static {v11, v0, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v14, v13, 0x3

    and-int/lit16 v14, v14, 0x380

    const/high16 v15, 0x180000

    or-int/2addr v14, v15

    shr-int/lit8 v15, v13, 0x3

    and-int/lit16 v15, v15, 0x1c00

    or-int/2addr v14, v15

    const/16 v15, 0x32

    .line 461
    move-object/from16 p1, v4

    const/4 v4, 0x0

    move-object/from16 p2, v4

    move-wide/from16 p3, v25

    move-wide/from16 p5, v21

    move-object/from16 p7, v23

    move/from16 p8, v27

    move-object/from16 p9, v0

    move-object/from16 p10, v11

    move/from16 p11, v14

    move/from16 p12, v15

    invoke-static/range {p1 .. p12}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 514
    .end local v3    # "peekHeightPx":F
    .end local v12    # "density":Landroidx/compose/ui/unit/Density;
    :cond_4b
    move/from16 v32, v1

    move/from16 v37, v2

    move-object/from16 v27, v5

    move-object/from16 v31, v6

    move/from16 v29, v7

    move/from16 v30, v10

    move/from16 v43, v13

    move-object/from16 v28, v16

    move-wide/from16 v35, v17

    move-wide/from16 v33, v19

    move-wide/from16 v40, v21

    move/from16 v42, v24

    move-wide/from16 v38, v25

    move-object/from16 v26, p13

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    .end local v1    # "sheetElevation":F
    .end local v2    # "sheetPeekHeight":F
    .end local v5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local v6    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .end local v7    # "floatingActionButtonPosition":I
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v9    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .end local v10    # "sheetGesturesEnabled":Z
    .end local v13    # "$dirty1":I
    .end local v16    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local v17    # "sheetContentColor":J
    .end local v19    # "sheetBackgroundColor":J
    .end local v21    # "contentColor":J
    .end local p13    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v24, "modifier":Landroidx/compose/ui/Modifier;
    .local v25, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v26, "topBar":Lkotlin/jvm/functions/Function2;
    .local v27, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v28, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v29, "floatingActionButtonPosition":I
    .local v30, "sheetGesturesEnabled":Z
    .local v31, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v32, "sheetElevation":F
    .local v33, "sheetBackgroundColor":J
    .local v35, "sheetContentColor":J
    .local v37, "sheetPeekHeight":F
    .local v38, "backgroundColor":J
    .local v40, "contentColor":J
    .local v42, "$dirty":I
    .local v43, "$dirty1":I
    :goto_2f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_4c

    new-instance v44, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$3;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move-object/from16 v9, v31

    move/from16 v10, v32

    move-object/from16 v45, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v45, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v11, v33

    move-wide/from16 v13, v35

    move-object/from16 v46, v15

    move/from16 v15, v37

    move-wide/from16 v16, v38

    move-wide/from16 v18, v40

    move-object/from16 v20, p19

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    invoke-direct/range {v0 .. v23}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$3;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v44

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v46

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_30

    .end local v45    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_4c
    move-object/from16 v45, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v45    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_30
    return-void
.end method

.method public static final BottomSheetScaffold-bGncdBI(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIII)V
    .locals 40
    .param p0, "sheetContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "scaffoldState"    # Landroidx/compose/material/BottomSheetScaffoldState;
    .param p3, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p5, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p6, "floatingActionButtonPosition"    # I
    .param p7, "sheetGesturesEnabled"    # Z
    .param p8, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p9, "sheetElevation"    # F
    .param p10, "sheetBackgroundColor"    # J
    .param p12, "sheetContentColor"    # J
    .param p14, "sheetPeekHeight"    # F
    .param p15, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p16, "drawerGesturesEnabled"    # Z
    .param p17, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p18, "drawerElevation"    # F
    .param p19, "drawerBackgroundColor"    # J
    .param p21, "drawerContentColor"    # J
    .param p23, "drawerScrimColor"    # J
    .param p25, "backgroundColor"    # J
    .param p27, "contentColor"    # J
    .param p29, "content"    # Lkotlin/jvm/functions/Function3;
    .param p30, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p31, "$changed"    # I
    .param p32, "$changed1"    # I
    .param p33, "$changed2"    # I
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
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
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
            ">;IZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJJJ",
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
            "IIII)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."
    .end annotation

    .line 596
    move/from16 v15, p34

    const v0, 0x2c45ae3

    move-object/from16 v1, p30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p30    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomSheetScaffold)P(15,12,13,22,21,10,11:c#material.FabPosition,18,20,17:c#ui.unit.Dp,14:c#ui.graphics.Color,16:c#ui.graphics.Color,19:c#ui.unit.Dp,4,7,9,6:c#ui.unit.Dp,3:c#ui.graphics.Color,5:c#ui.graphics.Color,8:c#ui.graphics.Color,0:c#ui.graphics.Color,2:c#ui.graphics.Color)574@24388L34,580@24757L6,582@24888L6,583@24935L37,587@25192L6,589@25307L6,590@25355L38,591@25440L10,592@25495L6,593@25540L32:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v14, p31

    .local v14, "$dirty":I
    move/from16 v1, p32

    .local v1, "$dirty1":I
    move/from16 v2, p33

    .local v2, "$dirty2":I
    and-int/lit8 v3, p32, 0xe

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v3, :cond_2

    and-int/lit16 v3, v15, 0x400

    if-nez v3, :cond_0

    move-wide/from16 v11, p10

    invoke-interface {v13, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p10

    :cond_1
    move v3, v5

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move-wide/from16 v11, p10

    :goto_1
    const/high16 v3, 0x1c00000

    and-int v3, p32, v3

    const/high16 v6, 0x20000

    if-nez v3, :cond_5

    and-int v3, v15, v6

    if-nez v3, :cond_3

    move-wide/from16 v9, p19

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x800000

    goto :goto_2

    :cond_3
    move-wide/from16 v9, p19

    :cond_4
    const/high16 v3, 0x400000

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_5
    move-wide/from16 v9, p19

    :goto_3
    move/from16 v35, v1

    .end local v1    # "$dirty1":I
    .local v35, "$dirty1":I
    and-int/lit8 v1, p33, 0xe

    const/high16 v3, 0x100000

    if-nez v1, :cond_8

    and-int v1, v15, v3

    if-nez v1, :cond_6

    move-wide/from16 v7, p25

    invoke-interface {v13, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p25

    :cond_7
    move v4, v5

    :goto_4
    or-int/2addr v2, v4

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p25

    :goto_5
    move/from16 v36, v2

    .end local v2    # "$dirty2":I
    .local v36, "$dirty2":I
    and-int/lit8 v1, v14, 0x1

    if-nez v1, :cond_b

    const v1, 0x140000b

    and-int v1, v35, v1

    const v2, 0x400002

    if-ne v1, v2, :cond_b

    and-int/lit8 v1, v36, 0xb

    if-ne v1, v5, :cond_b

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 p30, v13

    move/from16 v39, v14

    goto/16 :goto_7

    .line 598
    :cond_9
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v37, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$4;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v38, v6

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 p30, v13

    move/from16 v39, v14

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$dirty":I
    .local v39, "$dirty":I
    .restart local p30    # "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-object/from16 v30, p29

    move/from16 v31, p31

    move/from16 v32, p32

    move/from16 v33, p33

    move/from16 v34, p34

    invoke-direct/range {v0 .. v34}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$4;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;IIII)V

    move-object/from16 v0, v37

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_6

    .end local v39    # "$dirty":I
    .end local p30    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$dirty":I
    :cond_a
    move-object/from16 p30, v13

    move/from16 v39, v14

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$dirty":I
    .restart local v39    # "$dirty":I
    .restart local p30    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_6
    return-void

    .line 596
    .end local v39    # "$dirty":I
    .end local p30    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$dirty":I
    :cond_b
    move-object/from16 p30, v13

    move/from16 v39, v14

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$dirty":I
    .restart local v39    # "$dirty":I
    .restart local p30    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_7
    invoke-interface/range {p30 .. p30}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p31, 0x1

    const v2, -0x70000001

    const/high16 v4, 0x80000

    const v5, -0x1c00001

    const/high16 v7, 0x40000

    const v8, -0x70001

    const v9, 0x8000

    const v10, -0xe000001

    if-eqz v1, :cond_17

    invoke-interface/range {p30 .. p30}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, p34

    move/from16 v11, v39

    goto/16 :goto_9

    .line 594
    :cond_c
    invoke-interface/range {p30 .. p30}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v1, p34

    and-int/lit8 v11, v1, 0x4

    if-eqz v11, :cond_d

    move/from16 v11, v39

    .end local v39    # "$dirty":I
    .local v11, "$dirty":I
    and-int/lit16 v14, v11, -0x381

    .end local v11    # "$dirty":I
    .restart local v14    # "$dirty":I
    goto :goto_8

    .end local v14    # "$dirty":I
    .restart local v39    # "$dirty":I
    :cond_d
    move/from16 v11, v39

    .end local v39    # "$dirty":I
    .restart local v11    # "$dirty":I
    move v14, v11

    .end local v11    # "$dirty":I
    .restart local v14    # "$dirty":I
    :goto_8
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_e

    and-int/2addr v14, v10

    :cond_e
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_f

    and-int/lit8 v35, v35, -0xf

    :cond_f
    and-int/lit16 v11, v1, 0x800

    if-eqz v11, :cond_10

    and-int/lit8 v35, v35, -0x71

    :cond_10
    and-int/2addr v9, v1

    if-eqz v9, :cond_11

    and-int v35, v35, v8

    :cond_11
    and-int/2addr v6, v1

    if-eqz v6, :cond_12

    and-int v35, v35, v5

    :cond_12
    and-int v5, v1, v7

    if-eqz v5, :cond_13

    and-int v35, v35, v10

    :cond_13
    and-int/2addr v4, v1

    if-eqz v4, :cond_14

    and-int v35, v35, v2

    :cond_14
    and-int v2, v1, v3

    if-eqz v2, :cond_15

    and-int/lit8 v36, v36, -0xf

    :cond_15
    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    and-int/lit8 v36, v36, -0x71

    :cond_16
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 p1, p7

    move-object/from16 v2, p8

    move/from16 v10, p9

    move-wide/from16 v5, p10

    move-wide/from16 v24, p12

    move/from16 v7, p14

    move-object/from16 v8, p15

    move/from16 v3, p16

    move-object/from16 v4, p17

    move/from16 v9, p18

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v26, p23

    move-wide/from16 v28, p25

    move-wide/from16 v30, p27

    move-object/from16 v0, p30

    move/from16 v1, v35

    goto/16 :goto_1e

    .line 596
    .end local v14    # "$dirty":I
    .restart local v39    # "$dirty":I
    :cond_17
    move/from16 v1, p34

    move/from16 v11, v39

    .end local v39    # "$dirty":I
    .restart local v11    # "$dirty":I
    :goto_9
    and-int/lit8 v12, v1, 0x2

    if-eqz v12, :cond_18

    .line 574
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_a

    .line 596
    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object/from16 v12, p1

    .line 574
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v12    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_a
    and-int/lit8 v13, v1, 0x4

    if-eqz v13, :cond_19

    .line 575
    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v0, p30

    .end local p30    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v15, v15, v0, v13, v14}, Landroidx/compose/material/BottomSheetScaffoldKt;->rememberBottomSheetScaffoldState(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;

    move-result-object v13

    .end local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v13, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    and-int/lit16 v14, v11, -0x381

    .end local v11    # "$dirty":I
    .restart local v14    # "$dirty":I
    goto :goto_b

    .line 574
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .end local v14    # "$dirty":I
    .restart local v11    # "$dirty":I
    .restart local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .restart local p30    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_19
    move-object/from16 v0, p30

    .end local p30    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v13, p2

    move v14, v11

    .line 575
    .end local v11    # "$dirty":I
    .end local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .restart local v13    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .restart local v14    # "$dirty":I
    :goto_b
    and-int/lit8 v11, v1, 0x8

    if-eqz v11, :cond_1a

    .line 576
    const/4 v11, 0x0

    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v11, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_c

    .line 575
    .end local v11    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_1a
    move-object/from16 v11, p3

    .line 576
    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v11    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_c
    and-int/lit8 v15, v1, 0x10

    if-eqz v15, :cond_1b

    sget-object v15, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v15}, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-2$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v15

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v15, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_d

    .end local v15    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_1b
    move-object/from16 v15, p4

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v15    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_d
    and-int/lit8 v17, v1, 0x20

    if-eqz v17, :cond_1c

    .line 578
    const/16 v17, 0x0

    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v17, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    goto :goto_e

    .line 576
    .end local v17    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :cond_1c
    move-object/from16 v17, p5

    .line 578
    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local v17    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :goto_e
    and-int/lit8 v18, v1, 0x40

    if-eqz v18, :cond_1d

    .line 579
    sget-object v18, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/material/FabPosition$Companion;->getEnd-5ygKITE()I

    move-result v18

    .end local p6    # "floatingActionButtonPosition":I
    .local v18, "floatingActionButtonPosition":I
    goto :goto_f

    .line 578
    .end local v18    # "floatingActionButtonPosition":I
    .restart local p6    # "floatingActionButtonPosition":I
    :cond_1d
    move/from16 v18, p6

    .line 579
    .end local p6    # "floatingActionButtonPosition":I
    .restart local v18    # "floatingActionButtonPosition":I
    :goto_f
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1e

    .line 580
    const/4 v3, 0x1

    .end local p7    # "sheetGesturesEnabled":Z
    .local v3, "sheetGesturesEnabled":Z
    goto :goto_10

    .line 579
    .end local v3    # "sheetGesturesEnabled":Z
    .restart local p7    # "sheetGesturesEnabled":Z
    :cond_1e
    move/from16 v3, p7

    .line 580
    .end local p7    # "sheetGesturesEnabled":Z
    .restart local v3    # "sheetGesturesEnabled":Z
    :goto_10
    and-int/lit16 v2, v1, 0x100

    const/4 v4, 0x6

    if-eqz v2, :cond_1f

    .line 581
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    .end local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    and-int/2addr v14, v10

    goto :goto_11

    .line 580
    .end local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :cond_1f
    move-object/from16 v2, p8

    .line 581
    .end local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :goto_11
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_20

    .line 582
    sget-object v10, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v10}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getSheetElevation-D9Ej5fM()F

    move-result v10

    .end local p9    # "sheetElevation":F
    .local v10, "sheetElevation":F
    goto :goto_12

    .line 581
    .end local v10    # "sheetElevation":F
    .restart local p9    # "sheetElevation":F
    :cond_20
    move/from16 v10, p9

    .line 582
    .end local p9    # "sheetElevation":F
    .restart local v10    # "sheetElevation":F
    :goto_12
    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_21

    .line 583
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v7, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v23

    .end local p10    # "sheetBackgroundColor":J
    .local v23, "sheetBackgroundColor":J
    and-int/lit8 v35, v35, -0xf

    move-wide/from16 v5, v23

    goto :goto_13

    .line 582
    .end local v23    # "sheetBackgroundColor":J
    .restart local p10    # "sheetBackgroundColor":J
    :cond_21
    move-wide/from16 v5, p10

    .line 583
    .end local p10    # "sheetBackgroundColor":J
    .local v5, "sheetBackgroundColor":J
    :goto_13
    and-int/lit16 v7, v1, 0x800

    if-eqz v7, :cond_22

    .line 584
    and-int/lit8 v7, v35, 0xe

    invoke-static {v5, v6, v0, v7}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v24

    .end local p12    # "sheetContentColor":J
    .local v24, "sheetContentColor":J
    and-int/lit8 v35, v35, -0x71

    goto :goto_14

    .line 583
    .end local v24    # "sheetContentColor":J
    .restart local p12    # "sheetContentColor":J
    :cond_22
    move-wide/from16 v24, p12

    .line 584
    .end local p12    # "sheetContentColor":J
    .restart local v24    # "sheetContentColor":J
    :goto_14
    and-int/lit16 v7, v1, 0x1000

    if-eqz v7, :cond_23

    .line 585
    sget-object v7, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v7}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getSheetPeekHeight-D9Ej5fM()F

    move-result v7

    .end local p14    # "sheetPeekHeight":F
    .local v7, "sheetPeekHeight":F
    goto :goto_15

    .line 584
    .end local v7    # "sheetPeekHeight":F
    .restart local p14    # "sheetPeekHeight":F
    :cond_23
    move/from16 v7, p14

    .line 585
    .end local p14    # "sheetPeekHeight":F
    .restart local v7    # "sheetPeekHeight":F
    :goto_15
    and-int/lit16 v8, v1, 0x2000

    if-eqz v8, :cond_24

    .line 586
    const/4 v8, 0x0

    .end local p15    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .local v8, "drawerContent":Lkotlin/jvm/functions/Function3;
    goto :goto_16

    .line 585
    .end local v8    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .restart local p15    # "drawerContent":Lkotlin/jvm/functions/Function3;
    :cond_24
    move-object/from16 v8, p15

    .line 586
    .end local p15    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .restart local v8    # "drawerContent":Lkotlin/jvm/functions/Function3;
    :goto_16
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_25

    .line 587
    const/4 v4, 0x1

    .end local p16    # "drawerGesturesEnabled":Z
    .local v4, "drawerGesturesEnabled":Z
    goto :goto_17

    .line 586
    .end local v4    # "drawerGesturesEnabled":Z
    .restart local p16    # "drawerGesturesEnabled":Z
    :cond_25
    move/from16 v4, p16

    .line 587
    .end local p16    # "drawerGesturesEnabled":Z
    .restart local v4    # "drawerGesturesEnabled":Z
    :goto_17
    and-int/2addr v9, v1

    if-eqz v9, :cond_26

    .line 588
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p3, v2

    const/4 v2, 0x6

    .end local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local p3, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    invoke-virtual {v9, v0, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    const v9, -0x70001

    .end local p17    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int v35, v35, v9

    goto :goto_18

    .line 587
    .end local p3    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p17    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_26
    move-object/from16 p3, v2

    .end local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p3    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    move-object/from16 v2, p17

    .line 588
    .end local p17    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_18
    const/high16 v9, 0x10000

    and-int/2addr v9, v1

    if-eqz v9, :cond_27

    .line 589
    sget-object v9, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v9}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v9

    .end local p18    # "drawerElevation":F
    .local v9, "drawerElevation":F
    goto :goto_19

    .line 588
    .end local v9    # "drawerElevation":F
    .restart local p18    # "drawerElevation":F
    :cond_27
    move/from16 v9, p18

    .line 589
    .end local p18    # "drawerElevation":F
    .restart local v9    # "drawerElevation":F
    :goto_19
    const/high16 v26, 0x20000

    and-int v26, v1, v26

    if-eqz v26, :cond_28

    .line 590
    move-object/from16 p1, v2

    .end local v2    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local p1, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p4, v3

    const/4 v3, 0x6

    .end local v3    # "sheetGesturesEnabled":Z
    .local p4, "sheetGesturesEnabled":Z
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v2

    const v23, -0x1c00001

    .end local p19    # "drawerBackgroundColor":J
    .local v2, "drawerBackgroundColor":J
    and-int v35, v35, v23

    goto :goto_1a

    .line 589
    .end local p1    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p4    # "sheetGesturesEnabled":Z
    .local v2, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v3    # "sheetGesturesEnabled":Z
    .restart local p19    # "drawerBackgroundColor":J
    :cond_28
    move-object/from16 p1, v2

    move/from16 p4, v3

    .end local v2    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v3    # "sheetGesturesEnabled":Z
    .restart local p1    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "sheetGesturesEnabled":Z
    move-wide/from16 v2, p19

    .line 590
    .end local p19    # "drawerBackgroundColor":J
    .local v2, "drawerBackgroundColor":J
    :goto_1a
    const/high16 v22, 0x40000

    and-int v22, v1, v22

    if-eqz v22, :cond_29

    .line 591
    shr-int/lit8 v22, v35, 0x15

    move/from16 p5, v4

    .end local v4    # "drawerGesturesEnabled":Z
    .local p5, "drawerGesturesEnabled":Z
    and-int/lit8 v4, v22, 0xe

    invoke-static {v2, v3, v0, v4}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    const v4, -0xe000001

    .end local p21    # "drawerContentColor":J
    .local v22, "drawerContentColor":J
    and-int v35, v35, v4

    goto :goto_1b

    .line 590
    .end local v22    # "drawerContentColor":J
    .end local p5    # "drawerGesturesEnabled":Z
    .restart local v4    # "drawerGesturesEnabled":Z
    .restart local p21    # "drawerContentColor":J
    :cond_29
    move/from16 p5, v4

    .end local v4    # "drawerGesturesEnabled":Z
    .restart local p5    # "drawerGesturesEnabled":Z
    move-wide/from16 v22, p21

    .line 591
    .end local p21    # "drawerContentColor":J
    .restart local v22    # "drawerContentColor":J
    :goto_1b
    const/high16 v4, 0x80000

    and-int/2addr v4, v1

    if-eqz v4, :cond_2a

    .line 592
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    move-wide/from16 v20, v2

    const/4 v2, 0x6

    .end local v2    # "drawerBackgroundColor":J
    .local v20, "drawerBackgroundColor":J
    invoke-virtual {v4, v0, v2}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    const v19, -0x70000001

    .end local p23    # "drawerScrimColor":J
    .local v3, "drawerScrimColor":J
    and-int v19, v35, v19

    move/from16 v35, v19

    .end local v35    # "$dirty1":I
    .local v19, "$dirty1":I
    goto :goto_1c

    .line 591
    .end local v3    # "drawerScrimColor":J
    .end local v19    # "$dirty1":I
    .end local v20    # "drawerBackgroundColor":J
    .restart local v2    # "drawerBackgroundColor":J
    .restart local v35    # "$dirty1":I
    .restart local p23    # "drawerScrimColor":J
    :cond_2a
    move-wide/from16 v20, v2

    const/4 v2, 0x6

    .end local v2    # "drawerBackgroundColor":J
    .restart local v20    # "drawerBackgroundColor":J
    move-wide/from16 v3, p23

    .line 592
    .end local p23    # "drawerScrimColor":J
    .restart local v3    # "drawerScrimColor":J
    :goto_1c
    const/high16 v19, 0x100000

    and-int v19, v1, v19

    if-eqz v19, :cond_2b

    .line 593
    move-wide/from16 p6, v3

    .end local v3    # "drawerScrimColor":J
    .local p6, "drawerScrimColor":J
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    move-result-wide v2

    .end local p25    # "backgroundColor":J
    .local v2, "backgroundColor":J
    and-int/lit8 v36, v36, -0xf

    goto :goto_1d

    .line 592
    .end local v2    # "backgroundColor":J
    .end local p6    # "drawerScrimColor":J
    .restart local v3    # "drawerScrimColor":J
    .restart local p25    # "backgroundColor":J
    :cond_2b
    move-wide/from16 p6, v3

    .end local v3    # "drawerScrimColor":J
    .restart local p6    # "drawerScrimColor":J
    move-wide/from16 v2, p25

    .line 593
    .end local p25    # "backgroundColor":J
    .restart local v2    # "backgroundColor":J
    :goto_1d
    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-eqz v1, :cond_2c

    .line 594
    and-int/lit8 v1, v36, 0xe

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v26

    .end local p27    # "contentColor":J
    .local v26, "contentColor":J
    and-int/lit8 v36, v36, -0x71

    move-object/from16 v4, p1

    move/from16 p1, p4

    move-wide/from16 v28, v2

    move-wide/from16 v30, v26

    move/from16 v1, v35

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v26, p6

    goto :goto_1e

    .line 593
    .end local v26    # "contentColor":J
    .restart local p27    # "contentColor":J
    :cond_2c
    move-object/from16 v4, p1

    move/from16 p1, p4

    move-wide/from16 v26, p6

    move-wide/from16 v30, p27

    move-wide/from16 v28, v2

    move/from16 v1, v35

    move-object/from16 v2, p3

    move/from16 v3, p5

    .line 594
    .end local v35    # "$dirty1":I
    .end local p3    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .end local p4    # "sheetGesturesEnabled":Z
    .end local p5    # "drawerGesturesEnabled":Z
    .end local p6    # "drawerScrimColor":J
    .end local p27    # "contentColor":J
    .restart local v1    # "$dirty1":I
    .local v2, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v3, "drawerGesturesEnabled":Z
    .local v4, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v26, "drawerScrimColor":J
    .local v28, "backgroundColor":J
    .local v30, "contentColor":J
    .local p1, "sheetGesturesEnabled":Z
    :goto_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 596
    move-object/from16 p30, v0

    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p30    # "$composer":Landroidx/compose/runtime/Composer;
    const-string/jumbo v0, "androidx.compose.material.BottomSheetScaffold (BottomSheetScaffold.kt:595)"

    move-object/from16 p2, v2

    const v2, 0x2c45ae3

    .end local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local p2, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    invoke-static {v2, v14, v1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1f

    .line 594
    .end local p2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .end local p30    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :cond_2d
    move-object/from16 p30, v0

    move-object/from16 p2, v2

    .line 596
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p2    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p30    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 597
    const-string v2, "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final BottomSheetScaffoldLayout-KCBPh4w(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function0;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .param p0, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .param p2, "bottomSheet"    # Lkotlin/jvm/functions/Function3;
    .param p3, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p5, "sheetPeekHeight"    # F
    .param p6, "floatingActionButtonPosition"    # I
    .param p7, "sheetOffset"    # Lkotlin/jvm/functions/Function0;
    .param p8, "sheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
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
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;FI",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/BottomSheetState;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 687
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v10, p5

    move/from16 v9, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    move/from16 v6, p10

    const v0, 0x60a97dcb

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomSheetScaffoldLayout)P(8!3,7,5:c#ui.unit.Dp,3:c#material.FabPosition)687@28825L3007:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v6, 0xe

    if-nez v2, :cond_1

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v6, 0x70

    if-nez v2, :cond_3

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v6, 0x380

    if-nez v2, :cond_5

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v6, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    const v2, 0xe000

    and-int/2addr v2, v6

    if-nez v2, :cond_9

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x70000

    and-int/2addr v2, v6

    if-nez v2, :cond_b

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    :cond_b
    const/high16 v2, 0x380000

    and-int/2addr v2, v6

    if-nez v2, :cond_d

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_c
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v1, v2

    :cond_d
    const/high16 v2, 0x1c00000

    and-int/2addr v2, v6

    if-nez v2, :cond_f

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v2, 0x400000

    :goto_7
    or-int/2addr v1, v2

    :cond_f
    const/high16 v2, 0xe000000

    and-int/2addr v2, v6

    if-nez v2, :cond_11

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x4000000

    goto :goto_8

    :cond_10
    const/high16 v2, 0x2000000

    :goto_8
    or-int/2addr v1, v2

    :cond_11
    move v4, v1

    .end local v1    # "$dirty":I
    .local v4, "$dirty":I
    const v1, 0xb6db6db

    and-int/2addr v1, v4

    const v2, 0x2492492

    if-ne v1, v2, :cond_13

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    .line 749
    :cond_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v22, v4

    move-object v10, v5

    goto/16 :goto_c

    .line 687
    :cond_13
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:686)"

    invoke-static {v0, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_14
    const v0, 0x2cc1006c

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 688
    move/from16 v16, v0

    .local v16, "invalid$iv":Z
    move-object v3, v5

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 866
    .local v17, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 867
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v16, :cond_16

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_15

    goto :goto_a

    .line 871
    :cond_15
    move-object/from16 v21, v2

    move-object v10, v3

    move/from16 v22, v4

    move-object/from16 p9, v5

    goto :goto_b

    .line 868
    :cond_16
    :goto_a
    const/16 v19, 0x0

    .line 688
    .local v19, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1":I
    new-instance v20, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    .end local v2    # "it$iv":Ljava/lang/Object;
    .local v21, "it$iv":Ljava/lang/Object;
    move-object/from16 v2, p3

    move-object v10, v3

    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v3, p4

    move/from16 v22, v4

    .end local v4    # "$dirty":I
    .local v22, "$dirty":I
    move-object/from16 v4, p2

    move-object/from16 p9, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p9    # "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v5, p1

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;)V

    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 868
    .end local v19    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1":I
    move-object/from16 v2, v20

    .line 869
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 870
    nop

    .line 867
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 866
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v21    # "it$iv":Ljava/lang/Object;
    nop

    .line 688
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v10, p9

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v2, v10, v0, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 749
    :cond_17
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v16, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v11, v9

    move-object/from16 v9, p8

    move-object/from16 v17, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function0;Landroidx/compose/material/BottomSheetState;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_d

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_18
    move-object/from16 v17, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_d
    return-void
.end method

.method public static final BottomSheetScaffoldState(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;)Landroidx/compose/material/BottomSheetScaffoldState;
    .locals 2
    .param p0, "drawerState"    # Landroidx/compose/material/DrawerState;
    .param p1, "bottomSheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p2, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 372
    const-string v1, "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final BottomSheetScaffoldState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/BottomSheetState;
    .locals 1
    .param p0, "initialValue"    # Landroidx/compose/material/BottomSheetValue;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/material/BottomSheetState;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This constructor is deprecated. confirmStateChange has been renamed to confirmValueChange."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "BottomSheetScaffoldState(initialValue, animationSpec, confirmStateChange)"
            imports = {}
        .end subannotation
    .end annotation

    .line 91
    new-instance v0, Landroidx/compose/material/BottomSheetState;

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 91
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/material/BottomSheetState;-><init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    .line 95
    return-object v0
.end method

.method public static synthetic BottomSheetScaffoldState$default(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/material/BottomSheetState;
    .locals 0

    .line 87
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 89
    sget-object p1, Landroidx/compose/material/AnchoredDraggableDefaults;->INSTANCE:Landroidx/compose/material/AnchoredDraggableDefaults;

    invoke-virtual {p1}, Landroidx/compose/material/AnchoredDraggableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    .line 87
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/BottomSheetState;

    move-result-object p0

    return-object p0
.end method

.method public static final BottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/BottomSheetState;
    .locals 3
    .param p0, "initialValue"    # Landroidx/compose/material/BottomSheetValue;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "confirmValueChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/material/BottomSheetState;"
        }
    .end annotation

    .line 113
    new-instance v0, Landroidx/compose/material/BottomSheetState;

    invoke-direct {v0, p0, p2, p3}, Landroidx/compose/material/BottomSheetState;-><init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    move-object v1, v0

    .local v1, "it":Landroidx/compose/material/BottomSheetState;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-also-BottomSheetScaffoldKt$BottomSheetState$2":I
    invoke-virtual {v1, p1}, Landroidx/compose/material/BottomSheetState;->setDensity$material_release(Landroidx/compose/ui/unit/Density;)V

    .line 115
    nop

    .line 113
    .end local v1    # "it":Landroidx/compose/material/BottomSheetState;
    .end local v2    # "$i$a$-also-BottomSheetScaffoldKt$BottomSheetState$2":I
    nop

    .line 115
    return-object v0
.end method

.method public static synthetic BottomSheetState$default(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/material/BottomSheetState;
    .locals 0

    .line 108
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_0

    .line 111
    sget-object p2, Landroidx/compose/material/AnchoredDraggableDefaults;->INSTANCE:Landroidx/compose/material/AnchoredDraggableDefaults;

    invoke-virtual {p2}, Landroidx/compose/material/AnchoredDraggableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    .line 108
    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    .line 112
    sget-object p3, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetState$1;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetState$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 108
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/BottomSheetState;

    move-result-object p0

    return-object p0
.end method

.method private static final ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "*>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 755
    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material/BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 804
    return-object v0
.end method

.method public static final synthetic access$BottomSheet-0cLKjW4(Landroidx/compose/material/BottomSheetState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;FJJLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/material/BottomSheetState;
    .param p1, "sheetGesturesEnabled"    # Z
    .param p2, "calculateAnchors"    # Lkotlin/jvm/functions/Function1;
    .param p3, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "sheetElevation"    # F
    .param p5, "sheetBackgroundColor"    # J
    .param p7, "sheetContentColor"    # J
    .param p9, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p10, "content"    # Lkotlin/jvm/functions/Function3;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheet-0cLKjW4(Landroidx/compose/material/BottomSheetState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;FJJLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$BottomSheetScaffoldLayout-KCBPh4w(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function0;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .param p2, "bottomSheet"    # Lkotlin/jvm/functions/Function3;
    .param p3, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p5, "sheetPeekHeight"    # F
    .param p6, "floatingActionButtonPosition"    # I
    .param p7, "sheetOffset"    # Lkotlin/jvm/functions/Function0;
    .param p8, "sheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-KCBPh4w(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function0;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/BottomSheetScaffoldKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBottomSheetScaffoldPositionalThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldPositionalThreshold:F

    return v0
.end method

.method public static final synthetic access$getBottomSheetScaffoldVelocityThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldVelocityThreshold:F

    return v0
.end method

.method public static final synthetic access$getFabSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->FabSpacing:F

    return v0
.end method

.method public static final rememberBottomSheetScaffoldState(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;
    .locals 9
    .param p0, "bottomSheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p1, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const v0, -0x3ceed8a4

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBottomSheetScaffoldState)346@12196L35,347@12276L32,349@12350L196:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 347
    sget-object v2, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x6

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/material/BottomSheetScaffoldKt;->rememberBottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;

    move-result-object p0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_2

    .line 348
    const/4 p4, 0x0

    .local p4, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x1d58f75c

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 814
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v3, p2

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 815
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 816
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1

    .line 817
    const/4 v7, 0x0

    .line 348
    .local v7, "$i$a$-remember-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$1":I
    new-instance v8, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {v8}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 817
    .end local v7    # "$i$a$-remember-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$1":I
    move-object v7, v8

    .line 818
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 819
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 820
    :cond_1
    move-object v7, v5

    .line 816
    :goto_0
    nop

    .line 815
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 814
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    move-object p1, v7

    check-cast p1, Landroidx/compose/material/SnackbarHostState;

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 349
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:348)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    and-int/lit8 p4, p3, 0xe

    and-int/lit8 v0, p3, 0x70

    or-int/2addr p4, v0

    .line 350
    nop

    .restart local p4    # "$changed$iv":I
    const/4 v0, 0x0

    .local v0, "$i$f$remember":I
    const v1, 0x1e7b2b64

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 821
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 822
    move-object v2, p2

    .local v1, "invalid$iv$iv":Z
    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 823
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 824
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v1, :cond_5

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_4

    goto :goto_1

    .line 828
    :cond_4
    move-object v6, v4

    goto :goto_2

    .line 825
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 351
    .local v6, "$i$a$-remember-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$2":I
    new-instance v7, Landroidx/compose/material/BottomSheetScaffoldState;

    .line 352
    nop

    .line 353
    nop

    .line 351
    invoke-direct {v7, p0, p1}, Landroidx/compose/material/BottomSheetScaffoldState;-><init>(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;)V

    .line 825
    .end local v6    # "$i$a$-remember-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$2":I
    move-object v6, v7

    .line 826
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 827
    nop

    .line 824
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 823
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 822
    .end local v1    # "invalid$iv$iv":Z
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 350
    .end local v0    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    check-cast v6, Landroidx/compose/material/BottomSheetScaffoldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v6
.end method

.method public static final rememberBottomSheetScaffoldState(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;
    .locals 9
    .param p0, "drawerState"    # Landroidx/compose/material/DrawerState;
    .param p1, "bottomSheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p2, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."
    .end annotation

    const v0, -0x50a54a50

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBottomSheetScaffoldState)P(1)385@13723L39,386@13805L35,387@13885L32:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 386
    sget-object v1, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x2

    invoke-static {v1, v2, p3, v3, v4}, Landroidx/compose/material/DrawerKt;->rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    move-result-object p0

    :cond_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 387
    sget-object v2, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x6

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Landroidx/compose/material/BottomSheetScaffoldKt;->rememberBottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;

    move-result-object p1

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_3

    .line 388
    const/4 p5, 0x0

    .local p5, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x1d58f75c

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 829
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v3, p3

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 830
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 831
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2

    .line 832
    const/4 v7, 0x0

    .line 388
    .local v7, "$i$a$-remember-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$3":I
    new-instance v8, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {v8}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 832
    .end local v7    # "$i$a$-remember-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$3":I
    move-object v7, v8

    .line 833
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 834
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 835
    :cond_2
    move-object v7, v5

    .line 831
    :goto_0
    nop

    .line 830
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 829
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    move-object p2, v7

    check-cast p2, Landroidx/compose/material/SnackbarHostState;

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 389
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:388)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v0, "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p5
.end method

.method public static final rememberBottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;
    .locals 7
    .param p0, "initialValue"    # Landroidx/compose/material/BottomSheetValue;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomSheetState;"
        }
    .end annotation

    const v0, 0x6bc63b00

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBottomSheetState)P(2)306@11010L7,307@11029L433:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 304
    sget-object v1, Landroidx/compose/material/AnchoredDraggableDefaults;->INSTANCE:Landroidx/compose/material/AnchoredDraggableDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/AnchoredDraggableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 305
    sget-object p5, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$1;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$1;

    move-object p2, p5

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 306
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberBottomSheetState (BottomSheetScaffold.kt:305)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 307
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p5

    check-cast p5, Landroidx/compose/runtime/CompositionLocal;

    .local p5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .line 813
    .local v1, "$i$f$getCurrent":I
    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 307
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$getCurrent":I
    .end local p5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    move-object p5, v2

    check-cast p5, Landroidx/compose/ui/unit/Density;

    .line 309
    .local p5, "density":Landroidx/compose/ui/unit/Density;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 310
    sget-object v1, Landroidx/compose/material/BottomSheetState;->Companion:Landroidx/compose/material/BottomSheetState$Companion;

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 310
    invoke-virtual {v1, p1, p2, p5}, Landroidx/compose/material/BottomSheetState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const/4 v2, 0x0

    .line 308
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$2;

    invoke-direct {v3, p0, p5, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$2;-><init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x48

    const/4 v6, 0x4

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/BottomSheetState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
