.class public final Landroidx/compose/material/ScaffoldKt;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material/ScaffoldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,818:1\n25#2:819\n25#2:826\n36#2:833\n1116#3,6:820\n1116#3,6:827\n1116#3,6:834\n1116#3,6:844\n1116#3,6:850\n154#4:840\n154#4:856\n81#5:841\n107#5,2:842\n*S KotlinDebug\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material/ScaffoldKt\n*L\n76#1:819\n77#1:826\n206#1:833\n76#1:820,6\n77#1:827,6\n206#1:834,6\n451#1:844,6\n629#1:850,6\n335#1:840\n815#1:856\n383#1:841\n383#1:842,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u00a8\u0001\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0006\u0010!\u001a\u00020\"2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010%\u001a\u00a7\u0002\u0010&\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0013\u0008\u0002\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a2\u0013\u0008\u0002\u0010#\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a2\u0019\u0008\u0002\u0010+\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001a2\u0013\u0008\u0002\u0010-\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a2\u0008\u0008\u0002\u0010.\u001a\u00020\u00172\u0008\u0008\u0002\u0010/\u001a\u00020\t2 \u0008\u0002\u00100\u001a\u001a\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001d\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u000822\u0008\u0008\u0002\u00103\u001a\u00020\t2\u0008\u0008\u0002\u00104\u001a\u0002052\u0008\u0008\u0002\u00106\u001a\u00020\u00012\u0008\u0008\u0002\u00107\u001a\u0002082\u0008\u0008\u0002\u00109\u001a\u0002082\u0008\u0008\u0002\u0010:\u001a\u0002082\u0008\u0008\u0002\u0010;\u001a\u0002082\u0008\u0008\u0002\u0010<\u001a\u0002082\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>\u001a\u009f\u0002\u0010&\u001a\u00020\u00142\u0008\u0008\u0002\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0013\u0008\u0002\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a2\u0013\u0008\u0002\u0010#\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a2\u0019\u0008\u0002\u0010+\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001a2\u0013\u0008\u0002\u0010-\u001a\r\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a2\u0008\u0008\u0002\u0010.\u001a\u00020\u00172\u0008\u0008\u0002\u0010/\u001a\u00020\t2 \u0008\u0002\u00100\u001a\u001a\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001d\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u000822\u0008\u0008\u0002\u00103\u001a\u00020\t2\u0008\u0008\u0002\u00104\u001a\u0002052\u0008\u0008\u0002\u00106\u001a\u00020\u00012\u0008\u0008\u0002\u00107\u001a\u0002082\u0008\u0008\u0002\u00109\u001a\u0002082\u0008\u0008\u0002\u0010:\u001a\u0002082\u0008\u0008\u0002\u0010;\u001a\u0002082\u0008\u0008\u0002\u0010<\u001a\u0002082\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@\u001a\u00a8\u0001\u0010A\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0006\u0010!\u001a\u00020\"2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008B\u0010%\u001a\u00a8\u0001\u0010C\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0006\u0010!\u001a\u00020\"2\u0016\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0019\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010%\u001a!\u0010E\u001a\u00020*2\u0008\u0008\u0002\u0010F\u001a\u00020G2\u0008\u0008\u0002\u0010H\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0010I\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u001c\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"1\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008\u0011\u0010\u0012\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006J"
    }
    d2 = {
        "FabSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "LocalFabPlacement",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/material/FabPlacement;",
        "getLocalFabPlacement",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "<set-?>",
        "",
        "ScaffoldSubcomposeInMeasureFix",
        "getScaffoldSubcomposeInMeasureFix$annotations",
        "()V",
        "getScaffoldSubcomposeInMeasureFix",
        "()Z",
        "setScaffoldSubcomposeInMeasureFix",
        "(Z)V",
        "ScaffoldSubcomposeInMeasureFix$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "LegacyScaffoldLayout",
        "",
        "isFabDocked",
        "fabPosition",
        "Landroidx/compose/material/FabPosition;",
        "topBar",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "Landroidx/compose/ui/UiComposable;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "snackbar",
        "fab",
        "contentWindowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "bottomBar",
        "LegacyScaffoldLayout-i1QSOvI",
        "(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "Scaffold",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "scaffoldState",
        "Landroidx/compose/material/ScaffoldState;",
        "snackbarHost",
        "Landroidx/compose/material/SnackbarHostState;",
        "floatingActionButton",
        "floatingActionButtonPosition",
        "isFloatingActionButtonDocked",
        "drawerContent",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "drawerGesturesEnabled",
        "drawerShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "drawerElevation",
        "drawerBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "drawerContentColor",
        "drawerScrimColor",
        "backgroundColor",
        "contentColor",
        "Scaffold-u4IkXBM",
        "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "Scaffold-27mzLpw",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "ScaffoldLayout",
        "ScaffoldLayout-i1QSOvI",
        "ScaffoldLayoutWithMeasureFix",
        "ScaffoldLayoutWithMeasureFix-i1QSOvI",
        "rememberScaffoldState",
        "drawerState",
        "Landroidx/compose/material/DrawerState;",
        "snackbarHostState",
        "(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;",
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
.field private static final FabSpacing:F

.field private static final LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/FabPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private static final ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 383
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ScaffoldKt;->ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;

    .line 812
    sget-object v0, Landroidx/compose/material/ScaffoldKt$LocalFabPlacement$1;->INSTANCE:Landroidx/compose/material/ScaffoldKt$LocalFabPlacement$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ScaffoldKt;->LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 815
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 856
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 815
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/ScaffoldKt;->FabSpacing:F

    return-void
.end method

.method private static final LegacyScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .param p0, "isFabDocked"    # Z
    .param p1, "fabPosition"    # I
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p6, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    .line 628
    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move/from16 v7, p9

    const v0, 0x868658c

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LegacyScaffoldLayout)P(5,4:c#material.FabPosition,7,1,6,3,2)628@26997L7169:Scaffold.kt#jmzs0o"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v7, 0xe

    if-nez v2, :cond_1

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v7, 0x70

    if-nez v2, :cond_3

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_5

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v7, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_9

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_b

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_d

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_f

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v2, 0x400000

    :goto_7
    or-int/2addr v1, v2

    :cond_f
    move v5, v1

    .end local v1    # "$dirty":I
    .local v5, "$dirty":I
    const v1, 0x16db6db

    and-int/2addr v1, v5

    const v2, 0x492492

    if-ne v1, v2, :cond_11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    .line 789
    :cond_10
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v22, v5

    move-object v9, v6

    goto/16 :goto_b

    .line 628
    :cond_11
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.LegacyScaffoldLayout (Scaffold.kt:627)"

    invoke-static {v0, v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_12
    const v0, 0xb420a36

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 629
    move-object v4, v6

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v0

    .local v16, "invalid$iv":Z
    const/16 v17, 0x0

    .line 850
    .local v17, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 851
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v16, :cond_14

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_13

    goto :goto_9

    .line 855
    :cond_13
    move-object/from16 v21, v3

    move-object v9, v4

    move/from16 v22, v5

    move-object/from16 p8, v6

    goto :goto_a

    .line 852
    :cond_14
    :goto_9
    const/16 v19, 0x0

    .line 629
    .local v19, "$i$a$-cache-ScaffoldKt$LegacyScaffoldLayout$1":I
    new-instance v20, Landroidx/compose/material/ScaffoldKt$LegacyScaffoldLayout$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v21, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local v21, "it$iv":Ljava/lang/Object;
    move-object/from16 v3, p5

    move-object v9, v4

    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v4, p1

    move/from16 v22, v5

    .end local v5    # "$dirty":I
    .local v22, "$dirty":I
    move/from16 v5, p0

    move-object/from16 p8, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p8    # "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ScaffoldKt$LegacyScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 852
    .end local v19    # "$i$a$-cache-ScaffoldKt$LegacyScaffoldLayout$1":I
    move-object/from16 v3, v20

    .line 853
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 854
    nop

    .line 851
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 850
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v21    # "it$iv":Ljava/lang/Object;
    nop

    .line 629
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v9, p8

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v3, v9, v0, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 789
    :cond_15
    :goto_b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v16, Landroidx/compose/material/ScaffoldKt$LegacyScaffoldLayout$2;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v10, v8

    move-object/from16 v8, p7

    move-object/from16 v17, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ScaffoldKt$LegacyScaffoldLayout$2;-><init>(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_16
    move-object/from16 v17, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_c
    return-void
.end method

.method public static final Scaffold-27mzLpw(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 55
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "scaffoldState"    # Landroidx/compose/material/ScaffoldState;
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p5, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p6, "floatingActionButtonPosition"    # I
    .param p7, "isFloatingActionButtonDocked"    # Z
    .param p8, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p9, "drawerGesturesEnabled"    # Z
    .param p10, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p11, "drawerElevation"    # F
    .param p12, "drawerBackgroundColor"    # J
    .param p14, "drawerContentColor"    # J
    .param p16, "drawerScrimColor"    # J
    .param p18, "backgroundColor"    # J
    .param p20, "contentColor"    # J
    .param p22, "content"    # Lkotlin/jvm/functions/Function3;
    .param p23, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p24, "$changed"    # I
    .param p25, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/ScaffoldState;",
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
            "III)V"
        }
    .end annotation

    .line 333
    move/from16 v15, p24

    move/from16 v13, p25

    move/from16 v14, p26

    const v0, 0x3dd6e159

    move-object/from16 v1, p23

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(Scaffold)P(14,15,17,1,16,11,12:c#material.FabPosition,13,5,8,10,7:c#ui.unit.Dp,4:c#ui.graphics.Color,6:c#ui.graphics.Color,9:c#ui.graphics.Color,0:c#ui.graphics.Color,3:c#ui.graphics.Color)315@14928L23,324@15438L6,326@15553L6,327@15601L38,328@15686L10,329@15741L6,330@15786L32,333@15877L495:Scaffold.kt#jmzs0o"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p24

    .local v0, "$dirty":I
    move/from16 v1, p25

    .local v1, "$dirty1":I
    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v15, 0xe

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v0, v6

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    :goto_1
    and-int/lit8 v6, v15, 0x70

    if-nez v6, :cond_5

    and-int/lit8 v6, v14, 0x2

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v6, p1

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v0, v9

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v9, v14, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v15, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v16, v14, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v4, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v15, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v17

    goto :goto_6

    :cond_a
    move/from16 v20, v18

    :goto_6
    or-int v0, v0, v20

    goto :goto_7

    :cond_b
    move-object/from16 v4, p3

    :goto_7
    and-int/lit8 v20, v14, 0x10

    const v21, 0xe000

    const/16 v22, 0x4000

    const/16 v23, 0x2000

    if-eqz v20, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int v24, v15, v21

    if-nez v24, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v22

    goto :goto_8

    :cond_d
    move/from16 v25, v23

    :goto_8
    or-int v0, v0, v25

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    and-int/lit8 v25, v14, 0x20

    const/high16 v26, 0x20000

    const/high16 v27, 0x70000

    const/high16 v28, 0x10000

    if-eqz v25, :cond_f

    const/high16 v29, 0x30000

    or-int v0, v0, v29

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int v29, v15, v27

    if-nez v29, :cond_11

    move-object/from16 v8, p5

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    move/from16 v30, v26

    goto :goto_a

    :cond_10
    move/from16 v30, v28

    :goto_a
    or-int v0, v0, v30

    goto :goto_b

    :cond_11
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v30, v14, 0x40

    const/high16 v31, 0x380000

    if-eqz v30, :cond_12

    const/high16 v32, 0x180000

    or-int v0, v0, v32

    move/from16 v10, p6

    goto :goto_d

    :cond_12
    and-int v32, v15, v31

    if-nez v32, :cond_14

    move/from16 v10, p6

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v33

    if-eqz v33, :cond_13

    const/high16 v33, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v33, 0x80000

    :goto_c
    or-int v0, v0, v33

    goto :goto_d

    :cond_14
    move/from16 v10, p6

    :goto_d
    and-int/lit16 v11, v14, 0x80

    const/high16 v34, 0x1c00000

    if-eqz v11, :cond_15

    const/high16 v35, 0xc00000

    or-int v0, v0, v35

    move/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v35, v15, v34

    if-nez v35, :cond_17

    move/from16 v3, p7

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v35

    if-eqz v35, :cond_16

    const/high16 v35, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v35, 0x400000

    :goto_e
    or-int v0, v0, v35

    goto :goto_f

    :cond_17
    move/from16 v3, p7

    :goto_f
    and-int/lit16 v3, v14, 0x100

    if-eqz v3, :cond_18

    const/high16 v35, 0x6000000

    or-int v0, v0, v35

    move-object/from16 v4, p8

    goto :goto_11

    :cond_18
    const/high16 v35, 0xe000000

    and-int v35, v15, v35

    if-nez v35, :cond_1a

    move-object/from16 v4, p8

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    const/high16 v35, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v35, 0x2000000

    :goto_10
    or-int v0, v0, v35

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v14, 0x200

    if-eqz v4, :cond_1b

    const/high16 v35, 0x30000000

    or-int v0, v0, v35

    move/from16 v5, p9

    goto :goto_13

    :cond_1b
    const/high16 v35, 0x70000000

    and-int v35, v15, v35

    if-nez v35, :cond_1d

    move/from16 v5, p9

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v35

    if-eqz v35, :cond_1c

    const/high16 v35, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v35, 0x10000000

    :goto_12
    or-int v0, v0, v35

    goto :goto_13

    :cond_1d
    move/from16 v5, p9

    :goto_13
    and-int/lit8 v35, v13, 0xe

    if-nez v35, :cond_20

    and-int/lit16 v5, v14, 0x400

    if-nez v5, :cond_1e

    move-object/from16 v5, p10

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    const/16 v19, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v5, p10

    :cond_1f
    const/16 v19, 0x2

    :goto_14
    or-int v1, v1, v19

    goto :goto_15

    :cond_20
    move-object/from16 v5, p10

    :goto_15
    and-int/lit16 v5, v14, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v1, v1, 0x30

    move/from16 v6, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v19, v13, 0x70

    if-nez v19, :cond_23

    move/from16 v6, p11

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_22

    const/16 v24, 0x20

    goto :goto_16

    :cond_22
    const/16 v24, 0x10

    :goto_16
    or-int v1, v1, v24

    goto :goto_17

    :cond_23
    move/from16 v6, p11

    :goto_17
    and-int/lit16 v6, v13, 0x380

    if-nez v6, :cond_26

    and-int/lit16 v6, v14, 0x1000

    if-nez v6, :cond_24

    move-wide/from16 v6, p12

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v32, 0x100

    goto :goto_18

    :cond_24
    move-wide/from16 v6, p12

    :cond_25
    const/16 v32, 0x80

    :goto_18
    or-int v1, v1, v32

    goto :goto_19

    :cond_26
    move-wide/from16 v6, p12

    :goto_19
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_29

    and-int/lit16 v6, v14, 0x2000

    if-nez v6, :cond_27

    move-wide/from16 v6, p14

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_28

    goto :goto_1a

    :cond_27
    move-wide/from16 v6, p14

    :cond_28
    move/from16 v17, v18

    :goto_1a
    or-int v1, v1, v17

    goto :goto_1b

    :cond_29
    move-wide/from16 v6, p14

    :goto_1b
    and-int v17, v13, v21

    if-nez v17, :cond_2c

    and-int/lit16 v6, v14, 0x4000

    if-nez v6, :cond_2a

    move-wide/from16 v6, p16

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_1c

    :cond_2a
    move-wide/from16 v6, p16

    :cond_2b
    move/from16 v22, v23

    :goto_1c
    or-int v1, v1, v22

    goto :goto_1d

    :cond_2c
    move-wide/from16 v6, p16

    :goto_1d
    and-int v17, v13, v27

    if-nez v17, :cond_2f

    const v17, 0x8000

    and-int v17, v14, v17

    if-nez v17, :cond_2d

    move-wide/from16 v6, p18

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2e

    move/from16 v17, v26

    goto :goto_1e

    :cond_2d
    move-wide/from16 v6, p18

    :cond_2e
    move/from16 v17, v28

    :goto_1e
    or-int v1, v1, v17

    goto :goto_1f

    :cond_2f
    move-wide/from16 v6, p18

    :goto_1f
    and-int v17, v13, v31

    if-nez v17, :cond_32

    and-int v17, v14, v28

    if-nez v17, :cond_30

    move-wide/from16 v6, p20

    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_31

    const/high16 v17, 0x100000

    goto :goto_20

    :cond_30
    move-wide/from16 v6, p20

    :cond_31
    const/high16 v17, 0x80000

    :goto_20
    or-int v1, v1, v17

    goto :goto_21

    :cond_32
    move-wide/from16 v6, p20

    :goto_21
    and-int v17, v14, v26

    if-eqz v17, :cond_33

    const/high16 v17, 0xc00000

    or-int v1, v1, v17

    move-object/from16 v13, p22

    goto :goto_23

    :cond_33
    and-int v17, v13, v34

    if-nez v17, :cond_35

    move-object/from16 v13, p22

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_34

    const/high16 v17, 0x800000

    goto :goto_22

    :cond_34
    const/high16 v17, 0x400000

    :goto_22
    or-int v1, v1, v17

    goto :goto_23

    :cond_35
    move-object/from16 v13, p22

    :goto_23
    const v17, 0x5b6db6db

    and-int v6, v0, v17

    const v7, 0x12492492

    if-ne v6, v7, :cond_37

    const v6, 0x16db6db

    and-int/2addr v6, v1

    const v7, 0x492492

    if-ne v6, v7, :cond_37

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_24

    .line 355
    :cond_36
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v31, p4

    move/from16 v34, p7

    move-object/from16 v35, p8

    move/from16 v36, p9

    move-object/from16 v37, p10

    move/from16 v38, p11

    move-wide/from16 v44, p12

    move-wide/from16 v46, p14

    move-wide/from16 v48, p16

    move-wide/from16 v50, p18

    move-wide/from16 v52, p20

    move/from16 v39, v0

    move/from16 v40, v1

    move-object/from16 v32, v8

    move/from16 v33, v10

    move-object/from16 p23, v12

    goto/16 :goto_37

    .line 333
    :cond_37
    :goto_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v15, 0x1

    if-eqz v6, :cond_40

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_25

    .line 331
    :cond_38
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v14, 0x2

    if-eqz v2, :cond_39

    and-int/lit8 v0, v0, -0x71

    :cond_39
    and-int/lit16 v2, v14, 0x400

    if-eqz v2, :cond_3a

    and-int/lit8 v1, v1, -0xf

    :cond_3a
    and-int/lit16 v2, v14, 0x1000

    if-eqz v2, :cond_3b

    and-int/lit16 v1, v1, -0x381

    :cond_3b
    and-int/lit16 v2, v14, 0x2000

    if-eqz v2, :cond_3c

    and-int/lit16 v1, v1, -0x1c01

    :cond_3c
    and-int/lit16 v2, v14, 0x4000

    if-eqz v2, :cond_3d

    const v2, -0xe001

    and-int/2addr v1, v2

    :cond_3d
    const v2, 0x8000

    and-int/2addr v2, v14

    if-eqz v2, :cond_3e

    const v2, -0x70001

    and-int/2addr v1, v2

    :cond_3e
    and-int v2, v14, v28

    if-eqz v2, :cond_3f

    const v2, -0x380001

    and-int/2addr v1, v2

    :cond_3f
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v11, p7

    move-object/from16 v2, p8

    move/from16 v4, p9

    move-object/from16 v3, p10

    move/from16 v5, p11

    move-wide/from16 v44, p12

    move-wide/from16 v46, p14

    move-wide/from16 v48, p16

    move-wide/from16 v50, p18

    move-wide/from16 v52, p20

    move v13, v0

    move v14, v1

    move-object v9, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p4

    goto/16 :goto_35

    .line 333
    :cond_40
    :goto_25
    if-eqz v2, :cond_41

    .line 315
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_26

    .line 333
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_41
    move-object/from16 v2, p0

    .line 315
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_26
    and-int/lit8 v6, v14, 0x2

    if-eqz v6, :cond_42

    .line 316
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p0, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    const/4 v8, 0x3

    invoke-static {v2, v6, v12, v7, v8}, Landroidx/compose/material/ScaffoldKt;->rememberScaffoldState(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;

    move-result-object v2

    .end local p1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v2, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    and-int/lit8 v0, v0, -0x71

    goto :goto_27

    .line 315
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    :cond_42
    move-object/from16 p0, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v2, p1

    .line 316
    .end local p1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v2, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    :goto_27
    if-eqz v9, :cond_43

    sget-object v6, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-5$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .end local p2    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v6, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_28

    .end local v6    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p2    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_43
    move-object/from16 v6, p2

    .end local p2    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v6    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_28
    if-eqz v16, :cond_44

    sget-object v7, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-6$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .end local p3    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .local v7, "bottomBar":Lkotlin/jvm/functions/Function2;
    goto :goto_29

    .end local v7    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "bottomBar":Lkotlin/jvm/functions/Function2;
    :cond_44
    move-object/from16 v7, p3

    .end local p3    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "bottomBar":Lkotlin/jvm/functions/Function2;
    :goto_29
    if-eqz v20, :cond_45

    sget-object v8, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v8}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-7$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v8

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v8, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_2a

    .end local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_45
    move-object/from16 v8, p4

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_2a
    if-eqz v25, :cond_46

    sget-object v9, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v9}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-8$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v9, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    goto :goto_2b

    .end local v9    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :cond_46
    move-object/from16 v9, p5

    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local v9    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :goto_2b
    if-eqz v30, :cond_47

    .line 321
    sget-object v16, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material/FabPosition$Companion;->getEnd-5ygKITE()I

    move-result v10

    .end local p6    # "floatingActionButtonPosition":I
    .local v10, "floatingActionButtonPosition":I
    :cond_47
    if-eqz v11, :cond_48

    .line 322
    const/4 v11, 0x0

    .end local p7    # "isFloatingActionButtonDocked":Z
    .local v11, "isFloatingActionButtonDocked":Z
    goto :goto_2c

    .line 321
    .end local v11    # "isFloatingActionButtonDocked":Z
    .restart local p7    # "isFloatingActionButtonDocked":Z
    :cond_48
    move/from16 v11, p7

    .line 322
    .end local p7    # "isFloatingActionButtonDocked":Z
    .restart local v11    # "isFloatingActionButtonDocked":Z
    :goto_2c
    if-eqz v3, :cond_49

    .line 323
    const/4 v3, 0x0

    .end local p8    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .local v3, "drawerContent":Lkotlin/jvm/functions/Function3;
    goto :goto_2d

    .line 322
    .end local v3    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .restart local p8    # "drawerContent":Lkotlin/jvm/functions/Function3;
    :cond_49
    move-object/from16 v3, p8

    .line 323
    .end local p8    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .restart local v3    # "drawerContent":Lkotlin/jvm/functions/Function3;
    :goto_2d
    if-eqz v4, :cond_4a

    .line 324
    const/4 v4, 0x1

    .end local p9    # "drawerGesturesEnabled":Z
    .local v4, "drawerGesturesEnabled":Z
    goto :goto_2e

    .line 323
    .end local v4    # "drawerGesturesEnabled":Z
    .restart local p9    # "drawerGesturesEnabled":Z
    :cond_4a
    move/from16 v4, p9

    .line 324
    .end local p9    # "drawerGesturesEnabled":Z
    .restart local v4    # "drawerGesturesEnabled":Z
    :goto_2e
    move/from16 p1, v0

    .end local v0    # "$dirty":I
    .local p1, "$dirty":I
    and-int/lit16 v0, v14, 0x400

    move-object/from16 p23, v2

    .end local v2    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local p23, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    const/4 v2, 0x6

    if-eqz v0, :cond_4b

    .line 325
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v0, v12, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Shape;

    .end local p10    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v0, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit8 v1, v1, -0xf

    goto :goto_2f

    .line 324
    .end local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p10    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_4b
    move-object/from16 v0, p10

    .line 325
    .end local p10    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_2f
    if-eqz v5, :cond_4c

    .line 326
    sget-object v5, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v5}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v5

    .end local p11    # "drawerElevation":F
    .local v5, "drawerElevation":F
    goto :goto_30

    .line 325
    .end local v5    # "drawerElevation":F
    .restart local p11    # "drawerElevation":F
    :cond_4c
    move/from16 v5, p11

    .line 326
    .end local p11    # "drawerElevation":F
    .restart local v5    # "drawerElevation":F
    :goto_30
    and-int/lit16 v2, v14, 0x1000

    if-eqz v2, :cond_4d

    .line 327
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p3, v0

    const/4 v0, 0x6

    .end local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local p3, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    invoke-virtual {v2, v12, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v16

    .end local p12    # "drawerBackgroundColor":J
    .local v16, "drawerBackgroundColor":J
    and-int/lit16 v1, v1, -0x381

    move v2, v1

    move-wide/from16 v0, v16

    goto :goto_31

    .line 326
    .end local v16    # "drawerBackgroundColor":J
    .end local p3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p12    # "drawerBackgroundColor":J
    :cond_4d
    move-object/from16 p3, v0

    .end local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    move v2, v1

    move-wide/from16 v0, p12

    .line 327
    .end local v1    # "$dirty1":I
    .end local p12    # "drawerBackgroundColor":J
    .local v0, "drawerBackgroundColor":J
    .local v2, "$dirty1":I
    :goto_31
    move-object/from16 p4, v3

    .end local v3    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .local p4, "drawerContent":Lkotlin/jvm/functions/Function3;
    and-int/lit16 v3, v14, 0x2000

    if-eqz v3, :cond_4e

    .line 328
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0xe

    invoke-static {v0, v1, v12, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    .end local p14    # "drawerContentColor":J
    .local v16, "drawerContentColor":J
    and-int/lit16 v2, v2, -0x1c01

    goto :goto_32

    .line 327
    .end local v16    # "drawerContentColor":J
    .restart local p14    # "drawerContentColor":J
    :cond_4e
    move-wide/from16 v16, p14

    .line 328
    .end local p14    # "drawerContentColor":J
    .restart local v16    # "drawerContentColor":J
    :goto_32
    and-int/lit16 v3, v14, 0x4000

    if-eqz v3, :cond_4f

    .line 329
    sget-object v3, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    move-wide/from16 v18, v0

    const/4 v0, 0x6

    .end local v0    # "drawerBackgroundColor":J
    .local v18, "drawerBackgroundColor":J
    invoke-virtual {v3, v12, v0}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    .end local p16    # "drawerScrimColor":J
    .local v22, "drawerScrimColor":J
    const v0, -0xe001

    and-int/2addr v2, v0

    goto :goto_33

    .line 328
    .end local v18    # "drawerBackgroundColor":J
    .end local v22    # "drawerScrimColor":J
    .restart local v0    # "drawerBackgroundColor":J
    .restart local p16    # "drawerScrimColor":J
    :cond_4f
    move-wide/from16 v18, v0

    .end local v0    # "drawerBackgroundColor":J
    .restart local v18    # "drawerBackgroundColor":J
    move-wide/from16 v22, p16

    .line 329
    .end local p16    # "drawerScrimColor":J
    .restart local v22    # "drawerScrimColor":J
    :goto_33
    const v0, 0x8000

    and-int/2addr v0, v14

    if-eqz v0, :cond_50

    .line 330
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, v12, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    move-result-wide v0

    .end local p18    # "backgroundColor":J
    .local v0, "backgroundColor":J
    const v3, -0x70001

    and-int/2addr v2, v3

    goto :goto_34

    .line 329
    .end local v0    # "backgroundColor":J
    .restart local p18    # "backgroundColor":J
    :cond_50
    move-wide/from16 v0, p18

    .line 330
    .end local p18    # "backgroundColor":J
    .restart local v0    # "backgroundColor":J
    :goto_34
    and-int v3, v14, v28

    if-eqz v3, :cond_51

    .line 331
    shr-int/lit8 v3, v2, 0xf

    and-int/lit8 v3, v3, 0xe

    invoke-static {v0, v1, v12, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v24

    .end local p20    # "contentColor":J
    .local v24, "contentColor":J
    const v3, -0x380001

    and-int/2addr v2, v3

    move/from16 v13, p1

    move-object/from16 v3, p3

    move-wide/from16 v50, v0

    move v14, v2

    move-wide/from16 v46, v16

    move-wide/from16 v44, v18

    move-wide/from16 v48, v22

    move-wide/from16 v52, v24

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v1, p23

    goto :goto_35

    .line 330
    .end local v24    # "contentColor":J
    .restart local p20    # "contentColor":J
    :cond_51
    move/from16 v13, p1

    move-object/from16 v3, p3

    move-wide/from16 v52, p20

    move-wide/from16 v50, v0

    move v14, v2

    move-wide/from16 v46, v16

    move-wide/from16 v44, v18

    move-wide/from16 v48, v22

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v1, p23

    .line 331
    .end local v16    # "drawerContentColor":J
    .end local v18    # "drawerBackgroundColor":J
    .end local v22    # "drawerScrimColor":J
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "$dirty":I
    .end local p3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p4    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .end local p20    # "contentColor":J
    .end local p23    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v2, "drawerContent":Lkotlin/jvm/functions/Function3;
    .local v3, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v13, "$dirty":I
    .local v14, "$dirty1":I
    .local v44, "drawerBackgroundColor":J
    .local v46, "drawerContentColor":J
    .local v48, "drawerScrimColor":J
    .local v50, "backgroundColor":J
    .local v52, "contentColor":J
    :goto_35
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_52

    .line 333
    const v15, 0x3dd6e159

    move-object/from16 p23, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local p23, "$composer":Landroidx/compose/runtime/Composer;
    const-string/jumbo v12, "androidx.compose.material.Scaffold (Scaffold.kt:332)"

    invoke-static {v15, v13, v14, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_36

    .line 331
    .end local p23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_52
    move-object/from16 p23, v12

    .line 335
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p23    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_36
    const/4 v12, 0x0

    .local v12, "$this$dp$iv":I
    const/4 v15, 0x0

    .line 840
    .local v15, "$i$f$getDp":I
    move/from16 p0, v15

    .end local v15    # "$i$f$getDp":I
    .local p0, "$i$f$getDp":I
    int-to-float v15, v12

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    .line 335
    .end local v12    # "$this$dp$iv":I
    .end local p0    # "$i$f$getDp":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    move/from16 p1, v12

    move/from16 p2, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v18

    move-object/from16 p6, v19

    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v16

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
    nop

    .line 344
    nop

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 349
    nop

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    shl-int/lit8 v12, v13, 0x3

    and-int/lit8 v12, v12, 0x70

    shl-int/lit8 v15, v13, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    and-int/lit16 v15, v15, 0x1c00

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    and-int v15, v15, v21

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    and-int v15, v15, v27

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    and-int v15, v15, v31

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    and-int v15, v15, v34

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    const/high16 v17, 0xe000000

    and-int v15, v15, v17

    or-int/2addr v12, v15

    shl-int/lit8 v15, v13, 0x3

    const/high16 v17, 0x70000000

    and-int v15, v15, v17

    or-int v41, v12, v15

    shr-int/lit8 v12, v13, 0x1b

    and-int/lit8 v12, v12, 0xe

    shl-int/lit8 v15, v14, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    and-int/lit16 v15, v15, 0x380

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    and-int/lit16 v15, v15, 0x1c00

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    and-int v15, v15, v21

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    and-int v15, v15, v27

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    and-int v15, v15, v31

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    and-int v15, v15, v34

    or-int/2addr v12, v15

    shl-int/lit8 v15, v14, 0x3

    const/high16 v17, 0xe000000

    and-int v15, v15, v17

    or-int v42, v12, v15

    const/16 v43, 0x0

    .line 334
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move-object/from16 v25, v2

    move/from16 v26, v4

    move-object/from16 v27, v3

    move/from16 v28, v5

    move-wide/from16 v29, v44

    move-wide/from16 v31, v46

    move-wide/from16 v33, v48

    move-wide/from16 v35, v50

    move-wide/from16 v37, v52

    move-object/from16 v39, p22

    move-object/from16 v40, p23

    invoke-static/range {v16 .. v43}, Landroidx/compose/material/ScaffoldKt;->Scaffold-u4IkXBM(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 355
    :cond_53
    move-object/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v35, v2

    move-object/from16 v37, v3

    move/from16 v36, v4

    move/from16 v38, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v39, v13

    move/from16 v40, v14

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .end local v2    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .end local v3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v4    # "drawerGesturesEnabled":Z
    .end local v5    # "drawerElevation":F
    .end local v6    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local v7    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .end local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local v9    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local v10    # "floatingActionButtonPosition":I
    .end local v11    # "isFloatingActionButtonDocked":Z
    .end local v13    # "$dirty":I
    .end local v14    # "$dirty1":I
    .local v27, "modifier":Landroidx/compose/ui/Modifier;
    .local v28, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v29, "topBar":Lkotlin/jvm/functions/Function2;
    .local v30, "bottomBar":Lkotlin/jvm/functions/Function2;
    .local v31, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v32, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v33, "floatingActionButtonPosition":I
    .local v34, "isFloatingActionButtonDocked":Z
    .local v35, "drawerContent":Lkotlin/jvm/functions/Function3;
    .local v36, "drawerGesturesEnabled":Z
    .local v37, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v38, "drawerElevation":F
    .local v39, "$dirty":I
    .local v40, "$dirty1":I
    :goto_37
    invoke-interface/range {p23 .. p23}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_54

    new-instance v41, Landroidx/compose/material/ScaffoldKt$Scaffold$3;

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move/from16 v7, v33

    move/from16 v8, v34

    move-object/from16 v9, v35

    move/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v42, p23

    .end local p23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v42, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v12, v38

    move-wide/from16 v13, v44

    move-object/from16 v54, v15

    move-wide/from16 v15, v46

    move-wide/from16 v17, v48

    move-wide/from16 v19, v50

    move-wide/from16 v21, v52

    move-object/from16 v23, p22

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/ScaffoldKt$Scaffold$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v41

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v54

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_38

    .end local v42    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p23    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_54
    move-object/from16 v42, p23

    .end local p23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v42    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_38
    return-void
.end method

.method public static final Scaffold-u4IkXBM(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 55
    .param p0, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "scaffoldState"    # Landroidx/compose/material/ScaffoldState;
    .param p3, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p6, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p7, "floatingActionButtonPosition"    # I
    .param p8, "isFloatingActionButtonDocked"    # Z
    .param p9, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p10, "drawerGesturesEnabled"    # Z
    .param p11, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p12, "drawerElevation"    # F
    .param p13, "drawerBackgroundColor"    # J
    .param p15, "drawerContentColor"    # J
    .param p17, "drawerScrimColor"    # J
    .param p19, "backgroundColor"    # J
    .param p21, "contentColor"    # J
    .param p23, "content"    # Lkotlin/jvm/functions/Function3;
    .param p24, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p25, "$changed"    # I
    .param p26, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/ScaffoldState;",
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
            "III)V"
        }
    .end annotation

    .line 205
    move-object/from16 v14, p0

    move/from16 v15, p25

    move/from16 v13, p26

    move/from16 v12, p27

    const v0, -0x4ccef125

    move-object/from16 v1, p24

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p24    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(Scaffold)P(4,15,16,18,1,17,12,13:c#material.FabPosition,14,6,9,11,8:c#ui.unit.Dp,5:c#ui.graphics.Color,7:c#ui.graphics.Color,10:c#ui.graphics.Color,0:c#ui.graphics.Color,3:c#ui.graphics.Color)187@8483L23,196@8993L6,198@9108L6,199@9156L38,200@9241L10,201@9296L6,202@9341L32,205@9449L86:Scaffold.kt#jmzs0o"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p25

    .local v0, "$dirty":I
    move/from16 v1, p26

    .local v1, "$dirty1":I
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v15, 0x70

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v8, v15, 0x380

    if-nez v8, :cond_8

    and-int/lit8 v8, v12, 0x4

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v16, v12, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v3, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v15, 0x1c00

    if-nez v3, :cond_b

    move-object/from16 v3, p3

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v18

    goto :goto_6

    :cond_a
    move/from16 v19, v17

    :goto_6
    or-int v0, v0, v19

    goto :goto_7

    :cond_b
    move-object/from16 v3, p3

    :goto_7
    and-int/lit8 v19, v12, 0x10

    const v20, 0xe000

    const/16 v21, 0x4000

    const/16 v22, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v4, p4

    goto :goto_9

    :cond_c
    and-int v23, v15, v20

    if-nez v23, :cond_e

    move-object/from16 v4, p4

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v21

    goto :goto_8

    :cond_d
    move/from16 v24, v22

    :goto_8
    or-int v0, v0, v24

    goto :goto_9

    :cond_e
    move-object/from16 v4, p4

    :goto_9
    and-int/lit8 v24, v12, 0x20

    const/high16 v25, 0x70000

    const/high16 v26, 0x20000

    const/high16 v27, 0x10000

    if-eqz v24, :cond_f

    const/high16 v28, 0x30000

    or-int v0, v0, v28

    move-object/from16 v5, p5

    goto :goto_b

    :cond_f
    and-int v28, v15, v25

    if-nez v28, :cond_11

    move-object/from16 v5, p5

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    move/from16 v29, v26

    goto :goto_a

    :cond_10
    move/from16 v29, v27

    :goto_a
    or-int v0, v0, v29

    goto :goto_b

    :cond_11
    move-object/from16 v5, p5

    :goto_b
    and-int/lit8 v29, v12, 0x40

    const/high16 v30, 0x380000

    if-eqz v29, :cond_12

    const/high16 v31, 0x180000

    or-int v0, v0, v31

    move-object/from16 v6, p6

    goto :goto_d

    :cond_12
    and-int v31, v15, v30

    if-nez v31, :cond_14

    move-object/from16 v6, p6

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    const/high16 v32, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v32, 0x80000

    :goto_c
    or-int v0, v0, v32

    goto :goto_d

    :cond_14
    move-object/from16 v6, p6

    :goto_d
    and-int/lit16 v9, v12, 0x80

    const/high16 v33, 0x1c00000

    if-eqz v9, :cond_15

    const/high16 v34, 0xc00000

    or-int v0, v0, v34

    move/from16 v10, p7

    goto :goto_f

    :cond_15
    and-int v34, v15, v33

    if-nez v34, :cond_17

    move/from16 v10, p7

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v35

    if-eqz v35, :cond_16

    const/high16 v35, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v35, 0x400000

    :goto_e
    or-int v0, v0, v35

    goto :goto_f

    :cond_17
    move/from16 v10, p7

    :goto_f
    and-int/lit16 v3, v12, 0x100

    if-eqz v3, :cond_18

    const/high16 v35, 0x6000000

    or-int v0, v0, v35

    move/from16 v4, p8

    goto :goto_11

    :cond_18
    const/high16 v35, 0xe000000

    and-int v35, v15, v35

    if-nez v35, :cond_1a

    move/from16 v4, p8

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v35

    if-eqz v35, :cond_19

    const/high16 v35, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v35, 0x2000000

    :goto_10
    or-int v0, v0, v35

    goto :goto_11

    :cond_1a
    move/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v12, 0x200

    if-eqz v4, :cond_1b

    const/high16 v35, 0x30000000

    or-int v0, v0, v35

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    const/high16 v35, 0x70000000

    and-int v35, v15, v35

    if-nez v35, :cond_1d

    move-object/from16 v5, p9

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1c

    const/high16 v35, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v35, 0x10000000

    :goto_12
    or-int v0, v0, v35

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p9

    :goto_13
    and-int/lit16 v5, v12, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move/from16 v6, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v35, v13, 0xe

    if-nez v35, :cond_20

    move/from16 v6, p10

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v35

    if-eqz v35, :cond_1f

    const/16 v23, 0x4

    goto :goto_14

    :cond_1f
    const/16 v23, 0x2

    :goto_14
    or-int v1, v1, v23

    goto :goto_15

    :cond_20
    move/from16 v6, p10

    :goto_15
    and-int/lit8 v23, v13, 0x70

    if-nez v23, :cond_23

    and-int/lit16 v6, v12, 0x800

    if-nez v6, :cond_21

    move-object/from16 v6, p11

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v28, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v6, p11

    :cond_22
    const/16 v28, 0x10

    :goto_16
    or-int v1, v1, v28

    goto :goto_17

    :cond_23
    move-object/from16 v6, p11

    :goto_17
    and-int/lit16 v6, v12, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v1, v1, 0x180

    move/from16 v7, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v7, v13, 0x380

    if-nez v7, :cond_26

    move/from16 v7, p12

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v32, 0x100

    goto :goto_18

    :cond_25
    const/16 v32, 0x80

    :goto_18
    or-int v1, v1, v32

    goto :goto_19

    :cond_26
    move/from16 v7, p12

    :goto_19
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_29

    and-int/lit16 v7, v12, 0x2000

    if-nez v7, :cond_27

    move-wide/from16 v7, p13

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_28

    move/from16 v17, v18

    goto :goto_1a

    :cond_27
    move-wide/from16 v7, p13

    :cond_28
    :goto_1a
    or-int v1, v1, v17

    goto :goto_1b

    :cond_29
    move-wide/from16 v7, p13

    :goto_1b
    and-int v17, v13, v20

    if-nez v17, :cond_2c

    and-int/lit16 v7, v12, 0x4000

    if-nez v7, :cond_2a

    move-wide/from16 v7, p15

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_1c

    :cond_2a
    move-wide/from16 v7, p15

    :cond_2b
    move/from16 v21, v22

    :goto_1c
    or-int v1, v1, v21

    goto :goto_1d

    :cond_2c
    move-wide/from16 v7, p15

    :goto_1d
    and-int v17, v13, v25

    if-nez v17, :cond_2f

    const v17, 0x8000

    and-int v17, v12, v17

    if-nez v17, :cond_2d

    move-wide/from16 v7, p17

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2e

    move/from16 v17, v26

    goto :goto_1e

    :cond_2d
    move-wide/from16 v7, p17

    :cond_2e
    move/from16 v17, v27

    :goto_1e
    or-int v1, v1, v17

    goto :goto_1f

    :cond_2f
    move-wide/from16 v7, p17

    :goto_1f
    and-int v17, v13, v30

    if-nez v17, :cond_32

    and-int v17, v12, v27

    if-nez v17, :cond_30

    move-wide/from16 v7, p19

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_31

    const/high16 v17, 0x100000

    goto :goto_20

    :cond_30
    move-wide/from16 v7, p19

    :cond_31
    const/high16 v17, 0x80000

    :goto_20
    or-int v1, v1, v17

    goto :goto_21

    :cond_32
    move-wide/from16 v7, p19

    :goto_21
    and-int v17, v13, v33

    if-nez v17, :cond_35

    and-int v17, v12, v26

    if-nez v17, :cond_33

    move-wide/from16 v7, p21

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_34

    const/high16 v17, 0x800000

    goto :goto_22

    :cond_33
    move-wide/from16 v7, p21

    :cond_34
    const/high16 v17, 0x400000

    :goto_22
    or-int v1, v1, v17

    goto :goto_23

    :cond_35
    move-wide/from16 v7, p21

    :goto_23
    const/high16 v17, 0x40000

    and-int v17, v12, v17

    if-eqz v17, :cond_36

    const/high16 v17, 0x6000000

    or-int v1, v1, v17

    move-object/from16 v13, p23

    goto :goto_25

    :cond_36
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    if-nez v17, :cond_38

    move-object/from16 v13, p23

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_37

    const/high16 v17, 0x4000000

    goto :goto_24

    :cond_37
    const/high16 v17, 0x2000000

    :goto_24
    or-int v1, v1, v17

    goto :goto_25

    :cond_38
    move-object/from16 v13, p23

    :goto_25
    const v17, 0x5b6db6db

    and-int v7, v0, v17

    const v8, 0x12492492

    if-ne v7, v8, :cond_3a

    const v7, 0xb6db6db

    and-int/2addr v7, v1

    const v8, 0x2492492

    if-ne v7, v8, :cond_3a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_39

    goto :goto_26

    .line 250
    :cond_39
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v28, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v31, p4

    move-object/from16 v32, p5

    move-object/from16 v33, p6

    move/from16 v35, p8

    move-object/from16 v36, p9

    move/from16 v37, p10

    move-object/from16 v38, p11

    move/from16 v39, p12

    move-wide/from16 v40, p13

    move-wide/from16 v42, p15

    move-wide/from16 v44, p17

    move-wide/from16 v46, p19

    move-wide/from16 v48, p21

    move/from16 v50, v0

    move/from16 v51, v1

    move/from16 v34, v10

    goto/16 :goto_3d

    .line 205
    :cond_3a
    :goto_26
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v7, v15, 0x1

    if-eqz v7, :cond_43

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_27

    .line 203
    :cond_3b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_3c

    and-int/lit16 v0, v0, -0x381

    :cond_3c
    and-int/lit16 v2, v12, 0x800

    if-eqz v2, :cond_3d

    and-int/lit8 v1, v1, -0x71

    :cond_3d
    and-int/lit16 v2, v12, 0x2000

    if-eqz v2, :cond_3e

    and-int/lit16 v1, v1, -0x1c01

    :cond_3e
    and-int/lit16 v2, v12, 0x4000

    if-eqz v2, :cond_3f

    const v2, -0xe001

    and-int/2addr v1, v2

    :cond_3f
    const v2, 0x8000

    and-int/2addr v2, v12

    if-eqz v2, :cond_40

    const v2, -0x70001

    and-int/2addr v1, v2

    :cond_40
    and-int v2, v12, v27

    if-eqz v2, :cond_41

    const v2, -0x380001

    and-int/2addr v1, v2

    :cond_41
    and-int v2, v12, v26

    if-eqz v2, :cond_42

    const v2, -0x1c00001

    and-int/2addr v1, v2

    :cond_42
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v16, p6

    move/from16 v2, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v3, p11

    move/from16 v6, p12

    move-wide/from16 v21, p13

    move-wide/from16 v17, p15

    move-wide/from16 v23, p17

    move-wide/from16 v26, p19

    move-wide/from16 v28, p21

    move v12, v0

    move v13, v1

    move v9, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p5

    goto/16 :goto_38

    .line 205
    :cond_43
    :goto_27
    if-eqz v2, :cond_44

    .line 187
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_28

    .line 205
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_44
    move-object/from16 v2, p1

    .line 187
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_28
    and-int/lit8 v7, v12, 0x4

    if-eqz v7, :cond_45

    .line 188
    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object/from16 p1, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v10, v11, v7, v8}, Landroidx/compose/material/ScaffoldKt;->rememberScaffoldState(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;

    move-result-object v2

    .end local p2    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v2, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    and-int/lit16 v0, v0, -0x381

    goto :goto_29

    .line 187
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    :cond_45
    move-object/from16 p1, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v2, p2

    .line 188
    .end local p2    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v2, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    :goto_29
    if-eqz v16, :cond_46

    sget-object v7, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v7, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_2a

    .end local v7    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_46
    move-object/from16 v7, p3

    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v7    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_2a
    if-eqz v19, :cond_47

    sget-object v8, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v8}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-2$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .end local p4    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .local v8, "bottomBar":Lkotlin/jvm/functions/Function2;
    goto :goto_2b

    .end local v8    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .restart local p4    # "bottomBar":Lkotlin/jvm/functions/Function2;
    :cond_47
    move-object/from16 v8, p4

    .end local p4    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .restart local v8    # "bottomBar":Lkotlin/jvm/functions/Function2;
    :goto_2b
    if-eqz v24, :cond_48

    sget-object v10, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v10}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-3$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .end local p5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v10, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_2c

    .end local v10    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_48
    move-object/from16 v10, p5

    .end local p5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v10    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_2c
    if-eqz v29, :cond_49

    sget-object v16, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->getLambda-4$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v16

    .end local p6    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v16, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    goto :goto_2d

    .end local v16    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local p6    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :cond_49
    move-object/from16 v16, p6

    .end local p6    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local v16    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :goto_2d
    if-eqz v9, :cond_4a

    .line 193
    sget-object v9, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v9}, Landroidx/compose/material/FabPosition$Companion;->getEnd-5ygKITE()I

    move-result v9

    .end local p7    # "floatingActionButtonPosition":I
    .local v9, "floatingActionButtonPosition":I
    goto :goto_2e

    .line 188
    .end local v9    # "floatingActionButtonPosition":I
    .restart local p7    # "floatingActionButtonPosition":I
    :cond_4a
    move/from16 v9, p7

    .line 193
    .end local p7    # "floatingActionButtonPosition":I
    .restart local v9    # "floatingActionButtonPosition":I
    :goto_2e
    if-eqz v3, :cond_4b

    .line 194
    const/4 v3, 0x0

    .end local p8    # "isFloatingActionButtonDocked":Z
    .local v3, "isFloatingActionButtonDocked":Z
    goto :goto_2f

    .line 193
    .end local v3    # "isFloatingActionButtonDocked":Z
    .restart local p8    # "isFloatingActionButtonDocked":Z
    :cond_4b
    move/from16 v3, p8

    .line 194
    .end local p8    # "isFloatingActionButtonDocked":Z
    .restart local v3    # "isFloatingActionButtonDocked":Z
    :goto_2f
    if-eqz v4, :cond_4c

    .line 195
    const/4 v4, 0x0

    .end local p9    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .local v4, "drawerContent":Lkotlin/jvm/functions/Function3;
    goto :goto_30

    .line 194
    .end local v4    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .restart local p9    # "drawerContent":Lkotlin/jvm/functions/Function3;
    :cond_4c
    move-object/from16 v4, p9

    .line 195
    .end local p9    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .restart local v4    # "drawerContent":Lkotlin/jvm/functions/Function3;
    :goto_30
    if-eqz v5, :cond_4d

    .line 196
    const/4 v5, 0x1

    .end local p10    # "drawerGesturesEnabled":Z
    .local v5, "drawerGesturesEnabled":Z
    goto :goto_31

    .line 195
    .end local v5    # "drawerGesturesEnabled":Z
    .restart local p10    # "drawerGesturesEnabled":Z
    :cond_4d
    move/from16 v5, p10

    .line 196
    .end local p10    # "drawerGesturesEnabled":Z
    .restart local v5    # "drawerGesturesEnabled":Z
    :goto_31
    move/from16 p2, v0

    .end local v0    # "$dirty":I
    .local p2, "$dirty":I
    and-int/lit16 v0, v12, 0x800

    move-object/from16 p24, v2

    .end local v2    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local p24, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    const/4 v2, 0x6

    if-eqz v0, :cond_4e

    .line 197
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v0, v11, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Shape;

    .end local p11    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v0, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit8 v1, v1, -0x71

    goto :goto_32

    .line 196
    .end local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p11    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_4e
    move-object/from16 v0, p11

    .line 197
    .end local p11    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_32
    if-eqz v6, :cond_4f

    .line 198
    sget-object v6, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v6}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v6

    .end local p12    # "drawerElevation":F
    .local v6, "drawerElevation":F
    goto :goto_33

    .line 197
    .end local v6    # "drawerElevation":F
    .restart local p12    # "drawerElevation":F
    :cond_4f
    move/from16 v6, p12

    .line 198
    .end local p12    # "drawerElevation":F
    .restart local v6    # "drawerElevation":F
    :goto_33
    and-int/lit16 v2, v12, 0x2000

    if-eqz v2, :cond_50

    .line 199
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p4, v0

    const/4 v0, 0x6

    .end local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local p4, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    invoke-virtual {v2, v11, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v17

    .end local p13    # "drawerBackgroundColor":J
    .local v17, "drawerBackgroundColor":J
    and-int/lit16 v1, v1, -0x1c01

    move v2, v1

    move-wide/from16 v0, v17

    goto :goto_34

    .line 198
    .end local v17    # "drawerBackgroundColor":J
    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p13    # "drawerBackgroundColor":J
    :cond_50
    move-object/from16 p4, v0

    .end local v0    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    move v2, v1

    move-wide/from16 v0, p13

    .line 199
    .end local v1    # "$dirty1":I
    .end local p13    # "drawerBackgroundColor":J
    .local v0, "drawerBackgroundColor":J
    .local v2, "$dirty1":I
    :goto_34
    move/from16 p5, v3

    .end local v3    # "isFloatingActionButtonDocked":Z
    .local p5, "isFloatingActionButtonDocked":Z
    and-int/lit16 v3, v12, 0x4000

    if-eqz v3, :cond_51

    .line 200
    shr-int/lit8 v3, v2, 0x9

    and-int/lit8 v3, v3, 0xe

    invoke-static {v0, v1, v11, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    .end local p15    # "drawerContentColor":J
    .local v17, "drawerContentColor":J
    const v3, -0xe001

    and-int/2addr v2, v3

    goto :goto_35

    .line 199
    .end local v17    # "drawerContentColor":J
    .restart local p15    # "drawerContentColor":J
    :cond_51
    move-wide/from16 v17, p15

    .line 200
    .end local p15    # "drawerContentColor":J
    .restart local v17    # "drawerContentColor":J
    :goto_35
    const v3, 0x8000

    and-int/2addr v3, v12

    if-eqz v3, :cond_52

    .line 201
    sget-object v3, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    move-wide/from16 v21, v0

    const/4 v0, 0x6

    .end local v0    # "drawerBackgroundColor":J
    .local v21, "drawerBackgroundColor":J
    invoke-virtual {v3, v11, v0}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    .end local p17    # "drawerScrimColor":J
    .local v23, "drawerScrimColor":J
    const v1, -0x70001

    and-int/2addr v2, v1

    goto :goto_36

    .line 200
    .end local v21    # "drawerBackgroundColor":J
    .end local v23    # "drawerScrimColor":J
    .restart local v0    # "drawerBackgroundColor":J
    .restart local p17    # "drawerScrimColor":J
    :cond_52
    move-wide/from16 v21, v0

    const/4 v0, 0x6

    .end local v0    # "drawerBackgroundColor":J
    .restart local v21    # "drawerBackgroundColor":J
    move-wide/from16 v23, p17

    .line 201
    .end local p17    # "drawerScrimColor":J
    .restart local v23    # "drawerScrimColor":J
    :goto_36
    and-int v1, v12, v27

    if-eqz v1, :cond_53

    .line 202
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v1, v11, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    move-result-wide v0

    .end local p19    # "backgroundColor":J
    .local v0, "backgroundColor":J
    const v3, -0x380001

    and-int/2addr v2, v3

    goto :goto_37

    .line 201
    .end local v0    # "backgroundColor":J
    .restart local p19    # "backgroundColor":J
    :cond_53
    move-wide/from16 v0, p19

    .line 202
    .end local p19    # "backgroundColor":J
    .restart local v0    # "backgroundColor":J
    :goto_37
    and-int v3, v12, v26

    if-eqz v3, :cond_54

    .line 203
    shr-int/lit8 v3, v2, 0x12

    and-int/lit8 v3, v3, 0xe

    invoke-static {v0, v1, v11, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v26

    .end local p21    # "contentColor":J
    .local v26, "contentColor":J
    const v3, -0x1c00001

    and-int/2addr v2, v3

    move/from16 v12, p2

    move-object/from16 v3, p4

    move v13, v2

    move-wide/from16 v28, v26

    move/from16 v2, p5

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p24

    goto :goto_38

    .line 202
    .end local v26    # "contentColor":J
    .restart local p21    # "contentColor":J
    :cond_54
    move/from16 v12, p2

    move-object/from16 v3, p4

    move-wide/from16 v28, p21

    move-wide/from16 v26, v0

    move v13, v2

    move-object/from16 v0, p1

    move/from16 v2, p5

    move-object/from16 v1, p24

    .line 203
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "$dirty":I
    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p5    # "isFloatingActionButtonDocked":Z
    .end local p21    # "contentColor":J
    .end local p24    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v2, "isFloatingActionButtonDocked":Z
    .local v3, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v12, "$dirty":I
    .local v13, "$dirty1":I
    .local v26, "backgroundColor":J
    .local v28, "contentColor":J
    :goto_38
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v19

    if-eqz v19, :cond_55

    .line 205
    const v15, -0x4ccef125

    move/from16 p17, v6

    .end local v6    # "drawerElevation":F
    .local p17, "drawerElevation":F
    const-string/jumbo v6, "androidx.compose.material.Scaffold (Scaffold.kt:204)"

    invoke-static {v15, v12, v13, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_39

    .line 203
    .end local p17    # "drawerElevation":F
    .restart local v6    # "drawerElevation":F
    :cond_55
    move/from16 p17, v6

    .line 205
    .end local v6    # "drawerElevation":F
    .restart local p17    # "drawerElevation":F
    :goto_39
    and-int/lit8 v6, v12, 0xe

    .line 206
    nop

    .local v6, "$changed$iv":I
    const/4 v15, 0x0

    move/from16 p1, v6

    .end local v6    # "$changed$iv":I
    .local v15, "$i$f$remember":I
    .local p1, "$changed$iv":I
    const v6, 0x44faf204

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 833
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object/from16 p2, v11

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 834
    .local v19, "$i$f$cache":I
    move/from16 p3, v15

    .end local v15    # "$i$f$remember":I
    .local p3, "$i$f$remember":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 835
    .local v31, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_57

    sget-object v32, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v6

    .end local v6    # "invalid$iv$iv":Z
    .local p4, "invalid$iv$iv":Z
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v15, v6, :cond_56

    goto :goto_3a

    .line 839
    :cond_56
    move-object/from16 v14, p2

    move-object v6, v15

    goto :goto_3b

    .line 835
    .end local p4    # "invalid$iv$iv":Z
    .restart local v6    # "invalid$iv$iv":Z
    :cond_57
    move/from16 p4, v6

    .line 836
    .end local v6    # "invalid$iv$iv":Z
    .restart local p4    # "invalid$iv$iv":Z
    :goto_3a
    const/4 v6, 0x0

    .line 207
    .local v6, "$i$a$-remember-ScaffoldKt$Scaffold$safeInsets$1":I
    move/from16 p5, v6

    .end local v6    # "$i$a$-remember-ScaffoldKt$Scaffold$safeInsets$1":I
    .local p5, "$i$a$-remember-ScaffoldKt$Scaffold$safeInsets$1":I
    new-instance v6, Landroidx/compose/material/MutableWindowInsets;

    invoke-direct {v6, v14}, Landroidx/compose/material/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 836
    .end local p5    # "$i$a$-remember-ScaffoldKt$Scaffold$safeInsets$1":I
    nop

    .line 837
    .local v6, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v14, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 838
    nop

    .line 835
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_3b
    nop

    .line 834
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v31    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 833
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local p4    # "invalid$iv$iv":Z
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 206
    .end local p1    # "$changed$iv":I
    .end local p3    # "$i$f$remember":I
    check-cast v6, Landroidx/compose/material/MutableWindowInsets;

    .line 209
    .local v6, "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    new-instance v14, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;

    move-object/from16 p1, v14

    move-object/from16 p2, v6

    move-object/from16 p3, p0

    move-wide/from16 p4, v26

    move-wide/from16 p6, v28

    move/from16 p8, v2

    move/from16 p9, v9

    move-object/from16 p10, v7

    move-object/from16 p11, p23

    move-object/from16 p12, v16

    move-object/from16 p13, v8

    move-object/from16 p14, v10

    move-object/from16 p15, v1

    invoke-direct/range {p1 .. p15}, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;-><init>(Landroidx/compose/material/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;JJZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/material/ScaffoldState;)V

    const v15, -0xd1a6358

    move/from16 p18, v2

    .end local v2    # "isFloatingActionButtonDocked":Z
    .local p18, "isFloatingActionButtonDocked":Z
    const/4 v2, 0x1

    invoke-static {v11, v15, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    check-cast v14, Lkotlin/jvm/functions/Function3;

    .line 234
    .local v14, "child":Lkotlin/jvm/functions/Function3;
    if-eqz v4, :cond_58

    const v15, -0x3c6e112b

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "234@10555L487"

    invoke-static {v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Landroidx/compose/material/ScaffoldState;->getDrawerState()Landroidx/compose/material/DrawerState;

    move-result-object v15

    .line 239
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    new-instance v2, Landroidx/compose/material/ScaffoldKt$Scaffold$1;

    invoke-direct {v2, v14}, Landroidx/compose/material/ScaffoldKt$Scaffold$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    move-object/from16 p19, v1

    .end local v1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local p19, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    const v1, -0x53fea1a0

    move-object/from16 p20, v6

    const/4 v6, 0x1

    .end local v6    # "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    .local p20, "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    invoke-static {v11, v1, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v12, 0x1b

    and-int/lit8 v2, v2, 0xe

    const/high16 v6, 0x30000000

    or-int/2addr v2, v6

    and-int/lit8 v6, v12, 0x70

    or-int/2addr v2, v6

    shl-int/lit8 v6, v13, 0x9

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v2, v6

    shl-int/lit8 v6, v13, 0x9

    and-int v6, v6, v20

    or-int/2addr v2, v6

    shl-int/lit8 v6, v13, 0x9

    and-int v6, v6, v25

    or-int/2addr v2, v6

    shl-int/lit8 v6, v13, 0x9

    and-int v6, v6, v30

    or-int/2addr v2, v6

    shl-int/lit8 v6, v13, 0x9

    and-int v6, v6, v33

    or-int/2addr v2, v6

    shl-int/lit8 v6, v13, 0x9

    const/high16 v19, 0xe000000

    and-int v6, v6, v19

    or-int/2addr v2, v6

    const/4 v6, 0x0

    .line 235
    move-object/from16 p1, v4

    move-object/from16 p2, v0

    move-object/from16 p3, v15

    move/from16 p4, v5

    move-object/from16 p5, v3

    move/from16 p6, p17

    move-wide/from16 p7, v21

    move-wide/from16 p9, v17

    move-wide/from16 p11, v23

    move-object/from16 p13, v1

    move-object/from16 p14, v11

    move/from16 p15, v2

    move/from16 p16, v6

    invoke-static/range {p1 .. p16}, Landroidx/compose/material/DrawerKt;->ModalDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 234
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3c

    .line 247
    .end local p19    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .end local p20    # "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    .restart local v1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .restart local v6    # "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    :cond_58
    move-object/from16 p19, v1

    move-object/from16 p20, v6

    .end local v1    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .end local v6    # "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    .restart local p19    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .restart local p20    # "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    const v1, -0x3c6e0f2e

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "247@11064L15"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 248
    shr-int/lit8 v1, v12, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit8 v1, v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v0, v11, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_3c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 250
    .end local v14    # "child":Lkotlin/jvm/functions/Function3;
    .end local p20    # "safeInsets":Landroidx/compose/material/MutableWindowInsets;
    :cond_59
    move/from16 v39, p17

    move/from16 v35, p18

    move-object/from16 v38, v3

    move-object/from16 v36, v4

    move/from16 v37, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v34, v9

    move-object/from16 v32, v10

    move/from16 v50, v12

    move/from16 v51, v13

    move-object/from16 v33, v16

    move-wide/from16 v42, v17

    move-wide/from16 v40, v21

    move-wide/from16 v44, v23

    move-wide/from16 v46, v26

    move-wide/from16 v48, v28

    move-object/from16 v29, p19

    move-object/from16 v28, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v4    # "drawerContent":Lkotlin/jvm/functions/Function3;
    .end local v5    # "drawerGesturesEnabled":Z
    .end local v7    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local v8    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .end local v9    # "floatingActionButtonPosition":I
    .end local v10    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local v12    # "$dirty":I
    .end local v13    # "$dirty1":I
    .end local v16    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local v17    # "drawerContentColor":J
    .end local v21    # "drawerBackgroundColor":J
    .end local v23    # "drawerScrimColor":J
    .end local v26    # "backgroundColor":J
    .end local p17    # "drawerElevation":F
    .end local p18    # "isFloatingActionButtonDocked":Z
    .end local p19    # "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v28, "modifier":Landroidx/compose/ui/Modifier;
    .local v29, "scaffoldState":Landroidx/compose/material/ScaffoldState;
    .local v30, "topBar":Lkotlin/jvm/functions/Function2;
    .local v31, "bottomBar":Lkotlin/jvm/functions/Function2;
    .local v32, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v33, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v34, "floatingActionButtonPosition":I
    .local v35, "isFloatingActionButtonDocked":Z
    .local v36, "drawerContent":Lkotlin/jvm/functions/Function3;
    .local v37, "drawerGesturesEnabled":Z
    .local v38, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v39, "drawerElevation":F
    .local v40, "drawerBackgroundColor":J
    .local v42, "drawerContentColor":J
    .local v44, "drawerScrimColor":J
    .local v46, "backgroundColor":J
    .local v48, "contentColor":J
    .local v50, "$dirty":I
    .local v51, "$dirty1":I
    :goto_3d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_5a

    new-instance v52, Landroidx/compose/material/ScaffoldKt$Scaffold$2;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move/from16 v8, v34

    move/from16 v9, v35

    move-object/from16 v10, v36

    move-object/from16 v53, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v53, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, v37

    move-object/from16 v12, v38

    move/from16 v13, v39

    move-object/from16 v54, v14

    move-wide/from16 v14, v40

    move-wide/from16 v16, v42

    move-wide/from16 v18, v44

    move-wide/from16 v20, v46

    move-wide/from16 v22, v48

    move-object/from16 v24, p23

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    invoke-direct/range {v0 .. v27}, Landroidx/compose/material/ScaffoldKt$Scaffold$2;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v52

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v54

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_3e

    .end local v53    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_5a
    move-object/from16 v53, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v53    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_3e
    return-void
.end method

.method private static final ScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 21
    .param p0, "isFabDocked"    # Z
    .param p1, "fabPosition"    # I
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p6, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    .line 410
    move/from16 v10, p9

    const v0, -0x1beb98ab

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ScaffoldLayout)P(5,4:c#material.FabPosition,7,1,6,3,2):Scaffold.kt#jmzs0o"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_1

    move/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_3

    move/from16 v7, p1

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v7, p1

    :goto_3
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_5

    move-object/from16 v6, p2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v2, v10, 0x1c00

    if-nez v2, :cond_7

    move-object/from16 v5, p3

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p3

    :goto_7
    const v2, 0xe000

    and-int v3, v10, v2

    if-nez v3, :cond_9

    move-object/from16 v4, p4

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_8

    :cond_8
    const/16 v3, 0x2000

    :goto_8
    or-int/2addr v1, v3

    goto :goto_9

    :cond_9
    move-object/from16 v4, p4

    :goto_9
    const/high16 v3, 0x70000

    and-int v11, v10, v3

    if-nez v11, :cond_b

    move-object/from16 v15, p5

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v1, v11

    goto :goto_b

    :cond_b
    move-object/from16 v15, p5

    :goto_b
    const/high16 v11, 0x380000

    and-int v12, v10, v11

    if-nez v12, :cond_d

    move-object/from16 v14, p6

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v12, 0x80000

    :goto_c
    or-int/2addr v1, v12

    goto :goto_d

    :cond_d
    move-object/from16 v14, p6

    :goto_d
    const/high16 v12, 0x1c00000

    and-int v13, v10, v12

    if-nez v13, :cond_f

    move-object/from16 v13, p7

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_e
    const/high16 v16, 0x400000

    :goto_e
    or-int v1, v1, v16

    goto :goto_f

    :cond_f
    move-object/from16 v13, p7

    :goto_f
    const v16, 0x16db6db

    and-int v12, v1, v16

    const v11, 0x492492

    if-ne v12, v11, :cond_11

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_10

    .line 434
    :cond_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_12

    .line 410
    :cond_11
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, -0x1

    const-string/jumbo v12, "androidx.compose.material.ScaffoldLayout (Scaffold.kt:409)"

    invoke-static {v0, v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 411
    :cond_12
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->getScaffoldSubcomposeInMeasureFix()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, -0x7d5abae0

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "411@18576L322"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 413
    nop

    .line 414
    nop

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
    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v11, v1, 0x70

    or-int/2addr v0, v11

    and-int/lit16 v11, v1, 0x380

    or-int/2addr v0, v11

    and-int/lit16 v11, v1, 0x1c00

    or-int/2addr v0, v11

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v2, v1, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int v20, v0, v2

    .line 412
    move/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, v9

    invoke-static/range {v11 .. v20}, Landroidx/compose/material/ScaffoldKt;->ScaffoldLayoutWithMeasureFix-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 411
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_11

    .line 422
    :cond_13
    const v0, -0x7d5ab988

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "422@18920L314"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 424
    nop

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 428
    nop

    .line 429
    nop

    .line 430
    nop

    .line 431
    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v11, v1, 0x70

    or-int/2addr v0, v11

    and-int/lit16 v11, v1, 0x380

    or-int/2addr v0, v11

    and-int/lit16 v11, v1, 0x1c00

    or-int/2addr v0, v11

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v2, v1, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int v20, v0, v2

    .line 423
    move/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, v9

    invoke-static/range {v11 .. v20}, Landroidx/compose/material/ScaffoldKt;->LegacyScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 422
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 434
    :cond_14
    :goto_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_15

    new-instance v12, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1;

    move-object v0, v12

    move v13, v1

    .end local v1    # "$dirty":I
    .local v13, "$dirty":I
    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v14, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1;-><init>(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    .end local v13    # "$dirty":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_15
    move v13, v1

    move-object v14, v9

    .end local v1    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$dirty":I
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_13
    return-void
.end method

.method private static final ScaffoldLayoutWithMeasureFix-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 23
    .param p0, "isFabDocked"    # Z
    .param p1, "fabPosition"    # I
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p6, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    .line 450
    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move/from16 v7, p9

    const v0, 0x4ca549d8    # 8.6658752E7f

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ScaffoldLayoutWithMeasureFix)P(5,4:c#material.FabPosition,7,1,6,3,2)450@19773L6694:Scaffold.kt#jmzs0o"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v7, 0xe

    if-nez v2, :cond_1

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v7, 0x70

    if-nez v2, :cond_3

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_5

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v7, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_9

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_b

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_d

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    and-int/2addr v2, v7

    if-nez v2, :cond_f

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v2, 0x400000

    :goto_7
    or-int/2addr v1, v2

    :cond_f
    move v5, v1

    .end local v1    # "$dirty":I
    .local v5, "$dirty":I
    const v1, 0x16db6db

    and-int/2addr v1, v5

    const v2, 0x492492

    if-ne v1, v2, :cond_11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    .line 612
    :cond_10
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v22, v5

    move-object v9, v6

    goto/16 :goto_b

    .line 450
    :cond_11
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.ScaffoldLayoutWithMeasureFix (Scaffold.kt:449)"

    invoke-static {v0, v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_12
    const v0, 0xb41edfe

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 451
    move-object v4, v6

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v0

    .local v16, "invalid$iv":Z
    const/16 v17, 0x0

    .line 844
    .local v17, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 845
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v16, :cond_14

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_13

    goto :goto_9

    .line 849
    :cond_13
    move-object/from16 v21, v3

    move-object v9, v4

    move/from16 v22, v5

    move-object/from16 p8, v6

    goto :goto_a

    .line 846
    :cond_14
    :goto_9
    const/16 v19, 0x0

    .line 451
    .local v19, "$i$a$-cache-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1":I
    new-instance v20, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v21, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local v21, "it$iv":Ljava/lang/Object;
    move-object/from16 v3, p5

    move-object v9, v4

    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v4, p1

    move/from16 v22, v5

    .end local v5    # "$dirty":I
    .local v22, "$dirty":I
    move/from16 v5, p0

    move-object/from16 p8, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p8    # "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 846
    .end local v19    # "$i$a$-cache-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1":I
    move-object/from16 v3, v20

    .line 847
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 848
    nop

    .line 845
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 844
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v21    # "it$iv":Ljava/lang/Object;
    nop

    .line 451
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v9, p8

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v3, v9, v0, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 612
    :cond_15
    :goto_b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v16, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$2;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v10, v8

    move-object/from16 v8, p7

    move-object/from16 v17, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayoutWithMeasureFix$2;-><init>(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_c

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_16
    move-object/from16 v17, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_c
    return-void
.end method

.method public static final synthetic access$LegacyScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "isFabDocked"    # Z
    .param p1, "fabPosition"    # I
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p6, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/ScaffoldKt;->LegacyScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "isFabDocked"    # Z
    .param p1, "fabPosition"    # I
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p6, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/ScaffoldKt;->ScaffoldLayout-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ScaffoldLayoutWithMeasureFix-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "isFabDocked"    # Z
    .param p1, "fabPosition"    # I
    .param p2, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p5, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p6, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p7, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/ScaffoldKt;->ScaffoldLayoutWithMeasureFix-i1QSOvI(ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getFabSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ScaffoldKt;->FabSpacing:F

    return v0
.end method

.method public static final getLocalFabPlacement()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/FabPlacement;",
            ">;"
        }
    .end annotation

    .line 812
    sget-object v0, Landroidx/compose/material/ScaffoldKt;->LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getScaffoldSubcomposeInMeasureFix()Z
    .locals 4

    .line 383
    sget-object v0, Landroidx/compose/material/ScaffoldKt;->ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 841
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 383
    return v0
.end method

.method public static synthetic getScaffoldSubcomposeInMeasureFix$annotations()V
    .locals 0

    return-void
.end method

.method public static final rememberScaffoldState(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;
    .locals 11
    .param p0, "drawerState"    # Landroidx/compose/material/DrawerState;
    .param p1, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const v0, 0x5d8ed5c5

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberScaffoldState)74@2854L39,75@2938L32,76@2990L62:Scaffold.kt#jmzs0o"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v3, p2, v4, v2}, Landroidx/compose/material/DrawerKt;->rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    move-result-object p0

    :cond_0
    and-int/2addr p4, v2

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    const v2, -0x1d58f75c

    if-eqz p4, :cond_2

    .line 76
    const/4 p4, 0x0

    .local p4, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$remember":I
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 819
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    move-object v5, p2

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 820
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 821
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_1

    .line 822
    const/4 v9, 0x0

    .line 76
    .local v9, "$i$a$-remember-ScaffoldKt$rememberScaffoldState$1":I
    new-instance v10, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {v10}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 822
    .end local v9    # "$i$a$-remember-ScaffoldKt$rememberScaffoldState$1":I
    move-object v9, v10

    .line 823
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 824
    nop

    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 825
    :cond_1
    move-object v9, v7

    .line 821
    :goto_0
    nop

    .line 820
    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 819
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    move-object p1, v9

    check-cast p1, Landroidx/compose/material/SnackbarHostState;

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 77
    const/4 p4, -0x1

    const-string/jumbo v3, "androidx.compose.material.rememberScaffoldState (Scaffold.kt:76)"

    invoke-static {v0, p3, p4, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const/4 p4, 0x0

    .restart local p4    # "$changed$iv":I
    const/4 v0, 0x0

    .local v0, "$i$f$remember":I
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x0

    .local v1, "invalid$iv$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 827
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 828
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_4

    .line 829
    const/4 v6, 0x0

    .line 78
    .local v6, "$i$a$-remember-ScaffoldKt$rememberScaffoldState$2":I
    new-instance v7, Landroidx/compose/material/ScaffoldState;

    invoke-direct {v7, p0, p1}, Landroidx/compose/material/ScaffoldState;-><init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;)V

    .line 829
    .end local v6    # "$i$a$-remember-ScaffoldKt$rememberScaffoldState$2":I
    move-object v6, v7

    .line 830
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 831
    nop

    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 832
    :cond_4
    move-object v6, v4

    .line 828
    :goto_1
    nop

    .line 827
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 826
    .end local v1    # "invalid$iv$iv":Z
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    .end local v0    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    check-cast v6, Landroidx/compose/material/ScaffoldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v6
.end method

.method public static final setScaffoldSubcomposeInMeasureFix(Z)V
    .locals 5
    .param p0, "<set-?>"    # Z

    .line 383
    sget-object v0, Landroidx/compose/material/ScaffoldKt;->ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 842
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 843
    nop

    .line 383
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method
