.class public final Landroidx/compose/material/DrawerKt;
.super Ljava/lang/Object;
.source "Drawer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,915:1\n1116#2,6:916\n1116#2,6:923\n1116#2,3:934\n1119#2,3:940\n1116#2,3:950\n1119#2,3:956\n1116#2,6:961\n1116#2,6:967\n1116#2,6:973\n1116#2,6:979\n1116#2,6:985\n1116#2,6:991\n74#3:922\n74#3:944\n487#4,4:929\n491#4,2:937\n495#4:943\n487#4,4:945\n491#4,2:953\n495#4:959\n25#5:933\n25#5:949\n487#6:939\n487#6:955\n646#7:960\n81#8:997\n154#9:998\n154#9:999\n154#9:1000\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt\n*L\n450#1:916,6\n468#1:923,6\n516#1:934,3\n516#1:940,3\n655#1:950,3\n655#1:956,3\n801#1:961,6\n804#1:967,6\n816#1:973,6\n832#1:979,6\n833#1:985,6\n845#1:991,6\n467#1:922\n651#1:944\n516#1:929,4\n516#1:937,2\n516#1:943\n655#1:945,4\n655#1:953,2\n655#1:959\n516#1:933\n655#1:949\n516#1:939\n655#1:955\n793#1:960\n794#1:997\n850#1:998\n851#1:999\n852#1:1000\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0093\u0001\u0010\t\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0008\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001a2\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\n0\u001e\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a0\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001a2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001e2\u0006\u0010$\u001a\u00020\u0015H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001a.\u0010\'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0014\u0008\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00150\u000cH\u0007\u001a\u0014\u0010-\u001a\u00020.2\n\u0010/\u001a\u0006\u0012\u0002\u0008\u000300H\u0002\u001a\u0093\u0001\u00101\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0008\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u0002022\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001a2\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\n0\u001e\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00104\u001a>\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\u00152\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001e2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001aH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:\u001a \u0010;\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0002H\u0002\u001a+\u0010?\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)2\u0014\u0008\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00150\u000cH\u0007\u00a2\u0006\u0002\u0010@\u001a+\u0010A\u001a\u0002022\u0006\u0010(\u001a\u00020B2\u0014\u0008\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020\u00150\u000cH\u0007\u00a2\u0006\u0002\u0010C\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006D\u00b2\u0006\n\u0010E\u001a\u00020\u0002X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "BottomDrawerOpenFraction",
        "DrawerPositionalThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DrawerVelocityThreshold",
        "EndDrawerPadding",
        "BottomDrawer",
        "",
        "drawerContent",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "drawerState",
        "Landroidx/compose/material/BottomDrawerState;",
        "gesturesEnabled",
        "",
        "drawerShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "drawerElevation",
        "drawerBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "drawerContentColor",
        "scrimColor",
        "content",
        "Lkotlin/Function0;",
        "BottomDrawer-Gs3lGvM",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "BottomDrawerScrim",
        "color",
        "onDismiss",
        "visible",
        "BottomDrawerScrim-3J-VO9M",
        "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V",
        "BottomDrawerState",
        "initialValue",
        "Landroidx/compose/material/BottomDrawerValue;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "confirmStateChange",
        "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "state",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "ModalDrawer",
        "Landroidx/compose/material/DrawerState;",
        "ModalDrawer-Gs3lGvM",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "Scrim",
        "open",
        "onClose",
        "fraction",
        "Scrim-Bx497Mc",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V",
        "calculateFraction",
        "a",
        "b",
        "pos",
        "rememberBottomDrawerState",
        "(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;",
        "rememberDrawerState",
        "Landroidx/compose/material/DrawerValue;",
        "(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;",
        "material_release",
        "alpha"
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
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final BottomDrawerOpenFraction:F = 0.5f

.field private static final DrawerPositionalThreshold:F

.field private static final DrawerVelocityThreshold:F

.field private static final EndDrawerPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 850
    const/16 v0, 0x38

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 998
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 850
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    .line 851
    const/16 v0, 0x38

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 999
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 851
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/DrawerKt;->DrawerPositionalThreshold:F

    .line 852
    const/16 v0, 0x190

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1000
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 852
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    .line 856
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final BottomDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 35
    .param p0, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "drawerState"    # Landroidx/compose/material/BottomDrawerState;
    .param p3, "gesturesEnabled"    # Z
    .param p4, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "drawerElevation"    # F
    .param p6, "drawerBackgroundColor"    # J
    .param p8, "drawerContentColor"    # J
    .param p10, "scrimColor"    # J
    .param p12, "content"    # Lkotlin/jvm/functions/Function2;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
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
            "Landroidx/compose/material/BottomDrawerState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 649
    move/from16 v15, p14

    move/from16 v14, p15

    const v0, 0x254aa686

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomDrawer)P(2,8,6,7,5,4:c#ui.unit.Dp,1:c#ui.graphics.Color,3:c#ui.graphics.Color,9:c#ui.graphics.Color)640@23904L33,642@24015L6,644@24130L6,645@24178L38,646@24257L10,650@24423L7,651@24435L56,654@24508L24,656@24538L4673:Drawer.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p14

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0xe

    if-nez v2, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v2, v14, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v14, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    and-int/lit8 v7, v14, 0x8

    if-eqz v7, :cond_7

    or-int/lit16 v1, v1, 0xc00

    move/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v1, v9

    goto :goto_5

    :cond_9
    move/from16 v8, p3

    :goto_5
    const v9, 0xe000

    and-int/2addr v9, v15

    if-nez v9, :cond_c

    and-int/lit8 v9, v14, 0x10

    if-nez v9, :cond_a

    move-object/from16 v9, p4

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x4000

    goto :goto_6

    :cond_a
    move-object/from16 v9, p4

    :cond_b
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v1, v10

    goto :goto_7

    :cond_c
    move-object/from16 v9, p4

    :goto_7
    and-int/lit8 v10, v14, 0x20

    if-eqz v10, :cond_d

    const/high16 v12, 0x30000

    or-int/2addr v1, v12

    move/from16 v12, p5

    goto :goto_9

    :cond_d
    const/high16 v12, 0x70000

    and-int/2addr v12, v15

    if-nez v12, :cond_f

    move/from16 v12, p5

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v16, 0x10000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_f
    move/from16 v12, p5

    :goto_9
    const/high16 v16, 0x380000

    and-int v16, v15, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v14, 0x40

    if-nez v16, :cond_10

    move-wide/from16 v4, p6

    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    move-wide/from16 v4, p6

    :cond_11
    const/high16 v16, 0x80000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_12
    move-wide/from16 v4, p6

    :goto_b
    const/high16 v16, 0x1c00000

    and-int v16, v15, v16

    if-nez v16, :cond_15

    and-int/lit16 v0, v14, 0x80

    if-nez v0, :cond_13

    move-wide/from16 v3, p8

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_14

    const/high16 v5, 0x800000

    goto :goto_c

    :cond_13
    move-wide/from16 v3, p8

    :cond_14
    const/high16 v5, 0x400000

    :goto_c
    or-int/2addr v1, v5

    goto :goto_d

    :cond_15
    move-wide/from16 v3, p8

    :goto_d
    const/high16 v5, 0xe000000

    and-int/2addr v5, v15

    if-nez v5, :cond_18

    and-int/lit16 v5, v14, 0x100

    if-nez v5, :cond_16

    move/from16 v17, v1

    move-wide/from16 v0, p10

    .end local v1    # "$dirty":I
    .local v17, "$dirty":I
    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x4000000

    goto :goto_e

    .end local v17    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_16
    move/from16 v17, v1

    move-wide/from16 v0, p10

    .end local v1    # "$dirty":I
    .restart local v17    # "$dirty":I
    :cond_17
    const/high16 v18, 0x2000000

    :goto_e
    or-int v17, v17, v18

    goto :goto_f

    .end local v17    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_18
    move/from16 v17, v1

    move-wide/from16 v0, p10

    .end local v1    # "$dirty":I
    .restart local v17    # "$dirty":I
    :goto_f
    and-int/lit16 v5, v14, 0x200

    if-eqz v5, :cond_19

    const/high16 v5, 0x30000000

    or-int v17, v17, v5

    move-object/from16 v5, p12

    goto :goto_11

    :cond_19
    const/high16 v5, 0x70000000

    and-int/2addr v5, v15

    if-nez v5, :cond_1b

    move-object/from16 v5, p12

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/high16 v19, 0x20000000

    goto :goto_10

    :cond_1a
    const/high16 v19, 0x10000000

    :goto_10
    or-int v17, v17, v19

    goto :goto_11

    :cond_1b
    move-object/from16 v5, p12

    :goto_11
    move/from16 v0, v17

    .end local v17    # "$dirty":I
    .local v0, "$dirty":I
    const/4 v1, 0x4

    if-ne v6, v1, :cond_1d

    const v1, 0x5b6db6db

    and-int/2addr v1, v0

    const v3, 0x12492492

    if-ne v1, v3, :cond_1d

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_12

    .line 762
    :cond_1c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-wide/from16 v21, p6

    move-wide/from16 v30, p8

    move-wide/from16 v32, p10

    move/from16 v23, v0

    move/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v12

    goto/16 :goto_1d

    .line 649
    :cond_1d
    :goto_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v15, 0x1

    const v4, -0x1c00001

    const v17, -0x380001

    const v18, -0xe001

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_13

    .line 647
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v6, :cond_1f

    and-int/lit16 v0, v0, -0x381

    :cond_1f
    and-int/lit8 v1, v14, 0x10

    if-eqz v1, :cond_20

    and-int v0, v0, v18

    :cond_20
    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_21

    and-int v0, v0, v17

    :cond_21
    and-int/lit16 v1, v14, 0x80

    if-eqz v1, :cond_22

    and-int/2addr v0, v4

    :cond_22
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_23

    const v1, -0xe000001

    and-int/2addr v0, v1

    :cond_23
    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-wide/from16 v30, p8

    move-wide/from16 v32, p10

    move v6, v8

    move-object v7, v9

    move v8, v12

    move-wide/from16 v9, p6

    goto/16 :goto_1b

    .line 649
    :cond_24
    :goto_13
    if-eqz v2, :cond_25

    .line 640
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 649
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_25
    move-object/from16 v1, p1

    .line 640
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    const/4 v2, 0x6

    if-eqz v6, :cond_26

    .line 641
    sget-object v6, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    const/4 v4, 0x2

    invoke-static {v6, v3, v13, v2, v4}, Landroidx/compose/material/DrawerKt;->rememberBottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;

    move-result-object v4

    .end local p2    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .local v4, "drawerState":Landroidx/compose/material/BottomDrawerState;
    and-int/lit16 v0, v0, -0x381

    goto :goto_15

    .line 640
    .end local v4    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .restart local p2    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    :cond_26
    move-object/from16 v4, p2

    .line 641
    .end local p2    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .restart local v4    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    :goto_15
    if-eqz v7, :cond_27

    .line 642
    const/4 v6, 0x1

    .end local p3    # "gesturesEnabled":Z
    .local v6, "gesturesEnabled":Z
    goto :goto_16

    .line 641
    .end local v6    # "gesturesEnabled":Z
    .restart local p3    # "gesturesEnabled":Z
    :cond_27
    move v6, v8

    .line 642
    .end local p3    # "gesturesEnabled":Z
    .restart local v6    # "gesturesEnabled":Z
    :goto_16
    and-int/lit8 v7, v14, 0x10

    if-eqz v7, :cond_28

    .line 643
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v7, v13, v2}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int v0, v0, v18

    goto :goto_17

    .line 642
    .end local v7    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_28
    move-object v7, v9

    .line 643
    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v7    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_17
    if-eqz v10, :cond_29

    .line 644
    sget-object v8, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v8}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v8

    .end local p5    # "drawerElevation":F
    .local v8, "drawerElevation":F
    goto :goto_18

    .line 643
    .end local v8    # "drawerElevation":F
    .restart local p5    # "drawerElevation":F
    :cond_29
    move v8, v12

    .line 644
    .end local p5    # "drawerElevation":F
    .restart local v8    # "drawerElevation":F
    :goto_18
    and-int/lit8 v9, v14, 0x40

    if-eqz v9, :cond_2a

    .line 645
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v9, v13, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v9

    .end local p6    # "drawerBackgroundColor":J
    .local v9, "drawerBackgroundColor":J
    and-int v0, v0, v17

    goto :goto_19

    .line 644
    .end local v9    # "drawerBackgroundColor":J
    .restart local p6    # "drawerBackgroundColor":J
    :cond_2a
    move-wide/from16 v9, p6

    .line 645
    .end local p6    # "drawerBackgroundColor":J
    .restart local v9    # "drawerBackgroundColor":J
    :goto_19
    and-int/lit16 v12, v14, 0x80

    if-eqz v12, :cond_2b

    .line 646
    shr-int/lit8 v12, v0, 0x12

    and-int/lit8 v12, v12, 0xe

    invoke-static {v9, v10, v13, v12}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    const v12, -0x1c00001

    .end local p8    # "drawerContentColor":J
    .local v17, "drawerContentColor":J
    and-int/2addr v0, v12

    goto :goto_1a

    .line 645
    .end local v17    # "drawerContentColor":J
    .restart local p8    # "drawerContentColor":J
    :cond_2b
    move-wide/from16 v17, p8

    .line 646
    .end local p8    # "drawerContentColor":J
    .restart local v17    # "drawerContentColor":J
    :goto_1a
    and-int/lit16 v12, v14, 0x100

    if-eqz v12, :cond_2c

    .line 647
    sget-object v12, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v12, v13, v2}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    const v2, -0xe000001

    .end local p10    # "scrimColor":J
    .local v20, "scrimColor":J
    and-int/2addr v0, v2

    move-wide/from16 v30, v17

    move-wide/from16 v32, v20

    goto :goto_1b

    .line 646
    .end local v20    # "scrimColor":J
    .restart local p10    # "scrimColor":J
    :cond_2c
    move-wide/from16 v32, p10

    move-wide/from16 v30, v17

    .line 647
    .end local v17    # "drawerContentColor":J
    .end local p10    # "scrimColor":J
    .local v30, "drawerContentColor":J
    .local v32, "scrimColor":J
    :goto_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 649
    const/4 v2, -0x1

    const-string/jumbo v12, "androidx.compose.material.BottomDrawer (Drawer.kt:648)"

    const v3, 0x254aa686

    invoke-static {v3, v0, v2, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 651
    :cond_2d
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v12, 0x0

    .line 944
    .local v12, "$i$f$getCurrent":I
    move/from16 p8, v0

    .end local v0    # "$dirty":I
    .local p8, "$dirty":I
    const v0, 0x789c5f52

    move/from16 p1, v3

    .end local v3    # "$changed$iv":I
    .local p1, "$changed$iv":I
    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 651
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v12    # "$i$f$getCurrent":I
    .end local p1    # "$changed$iv":I
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 652
    .local v0, "density":Landroidx/compose/ui/unit/Density;
    new-instance v2, Landroidx/compose/material/DrawerKt$BottomDrawer$1;

    invoke-direct {v2, v4, v0}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;-><init>(Landroidx/compose/material/BottomDrawerState;Landroidx/compose/ui/unit/Density;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 655
    move v2, v3

    .local v2, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$rememberCoroutineScope":I
    const v3, 0x2e20b340

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 945
    nop

    .line 947
    move-object v3, v13

    .line 948
    .local v3, "composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    move-object/from16 p9, v0

    .end local v0    # "density":Landroidx/compose/ui/unit/Density;
    .local v17, "$i$f$remember":I
    .local p9, "density":Landroidx/compose/ui/unit/Density;
    const v0, -0x1d58f75c

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 949
    const/4 v0, 0x0

    .local v0, "invalid$iv$iv$iv":Z
    move-object/from16 p1, v13

    .local p1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 950
    .local v18, "$i$f$cache":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv$iv$iv":Z
    .local p2, "invalid$iv$iv$iv":Z
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 951
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v2

    .end local v2    # "$changed$iv":I
    .local p3, "$changed$iv":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2e

    .line 952
    const/4 v2, 0x0

    .line 953
    .local v2, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 954
    const/16 v20, 0x0

    .line 955
    .local v20, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v20, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 954
    .end local v20    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p4, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v20

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 953
    move/from16 p5, v2

    .end local v2    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local p5, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 952
    .end local p5    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v2

    .line 956
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, p1

    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 957
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1c

    .line 958
    .end local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_2e
    move-object/from16 v2, p1

    move-object/from16 p4, v0

    .line 951
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_1c
    nop

    .line 950
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 949
    .end local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    .end local p2    # "invalid$iv$iv$iv":Z
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 948
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 959
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v28

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 655
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v3    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$rememberCoroutineScope":I
    .end local p3    # "$changed$iv":I
    nop

    .line 657
    .local v28, "scope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v12, Landroidx/compose/material/DrawerKt$BottomDrawer$2;

    move-object/from16 v16, v12

    move/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, p12

    move-wide/from16 v20, v32

    move-object/from16 v22, v7

    move-wide/from16 v23, v9

    move-wide/from16 v25, v30

    move/from16 v27, v8

    move-object/from16 v29, p0

    invoke-direct/range {v16 .. v29}, Landroidx/compose/material/DrawerKt$BottomDrawer$2;-><init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlin/jvm/functions/Function2;JLandroidx/compose/ui/graphics/Shape;JJFLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)V

    const v3, 0x48b94970    # 379467.5f

    invoke-static {v13, v3, v2, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const/16 v3, 0xc00

    const/4 v12, 0x6

    move-object/from16 p1, v0

    const/4 v0, 0x0

    move-object/from16 p2, v0

    const/4 v0, 0x0

    move/from16 p3, v0

    move-object/from16 p4, v2

    move-object/from16 p5, v13

    move/from16 p6, v3

    move/from16 p7, v12

    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 762
    .end local v28    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local p9    # "density":Landroidx/compose/ui/unit/Density;
    :cond_2f
    move/from16 v23, p8

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v21, v9

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .end local v6    # "gesturesEnabled":Z
    .end local v7    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "drawerElevation":F
    .end local v9    # "drawerBackgroundColor":J
    .end local p8    # "$dirty":I
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "drawerState":Landroidx/compose/material/BottomDrawerState;
    .local v18, "gesturesEnabled":Z
    .local v19, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v20, "drawerElevation":F
    .local v21, "drawerBackgroundColor":J
    .local v23, "$dirty":I
    :goto_1d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_30

    new-instance v24, Landroidx/compose/material/DrawerKt$BottomDrawer$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-wide/from16 v7, v21

    move-wide/from16 v9, v30

    move-object/from16 v34, v12

    move-wide/from16 v11, v32

    move-object/from16 v25, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v13, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$BottomDrawer$3;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v24

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1e

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_30
    move-object/from16 v25, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1e
    return-void
.end method

.method private static final BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 792
    move-wide/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    const v0, -0x1e94c902

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomDrawerScrim)P(0:c#ui.graphics.Color)793@29917L121,797@30065L30,811@30509L171:Drawer.kt#jmzs0o"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_1

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_3

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_5

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    move v4, v1

    .end local v1    # "$dirty":I
    .local v4, "$dirty":I
    and-int/lit16 v1, v4, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 820
    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_d

    .line 792
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.BottomDrawerScrim (Drawer.kt:791)"

    invoke-static {v0, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 793
    :cond_8
    move-wide/from16 v0, p0

    .local v0, "$this$isSpecified$iv":J
    const/4 v2, 0x0

    .line 960
    .local v2, "$i$f$isSpecified-8_81llA":I
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v11

    cmp-long v3, v0, v11

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v3, :cond_9

    move v0, v14

    goto :goto_4

    :cond_9
    move v0, v15

    .line 793
    .end local v0    # "$this$isSpecified$iv":J
    .end local v2    # "$i$f$isSpecified-8_81llA":I
    :goto_4
    if-eqz v0, :cond_12

    .line 795
    if-eqz v9, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    move v11, v1

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    .line 796
    :goto_5
    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v1

    check-cast v12, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x1c

    .line 794
    move v3, v14

    move-object v14, v1

    move v1, v15

    move-object v15, v2

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 798
    .local v2, "alpha$delegate":Landroidx/compose/runtime/State;
    sget-object v11, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v11}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

    move-result v11

    const/4 v12, 0x6

    invoke-static {v11, v5, v12}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    .line 799
    .local v11, "closeDrawer":Ljava/lang/String;
    const/4 v12, 0x0

    if-eqz v9, :cond_f

    .line 800
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 801
    const v14, 0x7176a526

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    .local v14, "invalid$iv":Z
    move-object v15, v5

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 961
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 962
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_c

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_b

    goto :goto_6

    .line 966
    :cond_b
    move-object v0, v1

    goto :goto_7

    .line 963
    :cond_c
    :goto_6
    const/4 v0, 0x0

    .line 801
    .local v0, "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$1":I
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;

    invoke-direct {v3, v8, v12}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 963
    .end local v0    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$1":I
    move-object v0, v3

    .line 964
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 965
    nop

    .line 962
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 961
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 801
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v13, v8, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 804
    const v1, 0x7176a5a4

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .local v1, "invalid$iv":Z
    move-object v3, v5

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 967
    .local v13, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 968
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_e

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v14, v12, :cond_d

    goto :goto_8

    .line 972
    :cond_d
    move/from16 v16, v1

    move-object v1, v14

    goto :goto_9

    .line 969
    :cond_e
    :goto_8
    const/4 v12, 0x0

    .line 804
    .local v12, "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$2":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;

    invoke-direct {v1, v11, v8}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 969
    .end local v12    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$2":I
    nop

    .line 970
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 971
    nop

    .line 968
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 967
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 804
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_a

    .line 809
    :cond_f
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 799
    :goto_a
    nop

    .line 813
    .local v0, "dismissModifier":Landroidx/compose/ui/Modifier;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 814
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v12, v13, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 815
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v3, 0x7176a6c5

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    .line 816
    nop

    .local v3, "invalid$iv":Z
    move-object v12, v5

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 973
    .restart local v13    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 974
    .restart local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_11

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p4, v0

    .end local v0    # "dismissModifier":Landroidx/compose/ui/Modifier;
    .local p4, "dismissModifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_10

    goto :goto_b

    .line 978
    :cond_10
    move-object v0, v14

    goto :goto_c

    .line 974
    .end local p4    # "dismissModifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "dismissModifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move-object/from16 p4, v0

    .line 975
    .end local v0    # "dismissModifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "dismissModifier":Landroidx/compose/ui/Modifier;
    :goto_b
    const/4 v0, 0x0

    .line 816
    .local v0, "$i$a$-cache-DrawerKt$BottomDrawerScrim$1":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$1":I
    .local v16, "$i$a$-cache-DrawerKt$BottomDrawerScrim$1":I
    new-instance v0, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;

    invoke-direct {v0, v6, v7, v2}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 975
    .end local v16    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$1":I
    nop

    .line 976
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 977
    nop

    .line 974
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 973
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 816
    .end local v3    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 812
    const/4 v3, 0x0

    invoke-static {v1, v0, v5, v3}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .end local v2    # "alpha$delegate":Landroidx/compose/runtime/State;
    .end local v11    # "closeDrawer":Ljava/lang/String;
    .end local p4    # "dismissModifier":Landroidx/compose/ui/Modifier;
    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 820
    :cond_13
    :goto_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_14

    new-instance v12, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;

    move-object v0, v12

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move v13, v4

    .end local v4    # "$dirty":I
    .local v13, "$dirty":I
    move/from16 v4, p3

    move-object v14, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_e

    .end local v13    # "$dirty":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$dirty":I
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_14
    move v13, v4

    move-object v14, v5

    .end local v4    # "$dirty":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$dirty":I
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_e
    return-void
.end method

.method private static final BottomDrawerScrim_3J_VO9M$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 794
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 997
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 794
    return v0
.end method

.method public static final BottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/BottomDrawerState;
    .locals 3
    .param p0, "initialValue"    # Landroidx/compose/material/BottomDrawerValue;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/material/BottomDrawerState;"
        }
    .end annotation

    .line 266
    new-instance v0, Landroidx/compose/material/BottomDrawerState;

    .line 267
    nop

    .line 268
    nop

    .line 266
    invoke-direct {v0, p0, p2}, Landroidx/compose/material/BottomDrawerState;-><init>(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;)V

    .line 269
    move-object v1, v0

    .local v1, "it":Landroidx/compose/material/BottomDrawerState;
    const/4 v2, 0x0

    .line 270
    .local v2, "$i$a$-also-DrawerKt$BottomDrawerState$2":I
    invoke-virtual {v1, p1}, Landroidx/compose/material/BottomDrawerState;->setDensity$material_release(Landroidx/compose/ui/unit/Density;)V

    .line 271
    nop

    .line 269
    .end local v1    # "it":Landroidx/compose/material/BottomDrawerState;
    .end local v2    # "$i$a$-also-DrawerKt$BottomDrawerState$2":I
    nop

    .line 271
    return-object v0
.end method

.method public static synthetic BottomDrawerState$default(Landroidx/compose/material/BottomDrawerValue;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/material/BottomDrawerState;
    .locals 0

    .line 262
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 265
    sget-object p2, Landroidx/compose/material/DrawerKt$BottomDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$BottomDrawerState$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 262
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/material/DrawerKt;->BottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/BottomDrawerState;

    move-result-object p0

    return-object p0
.end method

.method private static final ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "*>;)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 863
    new-instance v0, Landroidx/compose/material/DrawerKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/DrawerKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 914
    return-object v0
.end method

.method public static final ModalDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "drawerState"    # Landroidx/compose/material/DrawerState;
    .param p3, "gesturesEnabled"    # Z
    .param p4, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "drawerElevation"    # F
    .param p6, "drawerBackgroundColor"    # J
    .param p8, "drawerContentColor"    # J
    .param p10, "scrimColor"    # J
    .param p12, "content"    # Lkotlin/jvm/functions/Function2;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
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
            "Landroidx/compose/material/DrawerState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 515
    move/from16 v15, p14

    move/from16 v14, p15

    const v0, 0x4dd50861    # 4.46762016E8f

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ModalDrawer)P(2,8,6,7,5,4:c#ui.unit.Dp,1:c#ui.graphics.Color,3:c#ui.graphics.Color,9:c#ui.graphics.Color)506@18077L39,508@18194L6,510@18309L6,511@18357L38,512@18436L10,515@18504L24,516@18533L3492:Drawer.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p14

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0xe

    if-nez v2, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v2, v14, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v15, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v5, v15, 0x380

    if-nez v5, :cond_8

    and-int/lit8 v5, v14, 0x4

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v5, p2

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, v14, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v15, 0x1c00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move/from16 v7, p3

    :goto_7
    const v8, 0xe000

    and-int/2addr v8, v15

    if-nez v8, :cond_e

    and-int/lit8 v8, v14, 0x10

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v8, p4

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v9, v14, 0x20

    if-eqz v9, :cond_f

    const/high16 v10, 0x30000

    or-int/2addr v1, v10

    move/from16 v10, p5

    goto :goto_b

    :cond_f
    const/high16 v10, 0x70000

    and-int/2addr v10, v15

    if-nez v10, :cond_11

    move/from16 v10, p5

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v12, 0x10000

    :goto_a
    or-int/2addr v1, v12

    goto :goto_b

    :cond_11
    move/from16 v10, p5

    :goto_b
    const/high16 v12, 0x380000

    and-int/2addr v12, v15

    if-nez v12, :cond_14

    and-int/lit8 v12, v14, 0x40

    if-nez v12, :cond_12

    move-wide/from16 v3, p6

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_13

    const/high16 v12, 0x100000

    goto :goto_c

    :cond_12
    move-wide/from16 v3, p6

    :cond_13
    const/high16 v12, 0x80000

    :goto_c
    or-int/2addr v1, v12

    goto :goto_d

    :cond_14
    move-wide/from16 v3, p6

    :goto_d
    const/high16 v12, 0x1c00000

    and-int/2addr v12, v15

    if-nez v12, :cond_17

    and-int/lit16 v12, v14, 0x80

    if-nez v12, :cond_15

    move/from16 v16, v1

    move-wide/from16 v0, p8

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    .end local v16    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_15
    move/from16 v16, v1

    move-wide/from16 v0, p8

    .end local v1    # "$dirty":I
    .restart local v16    # "$dirty":I
    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v16, v16, v17

    goto :goto_f

    .end local v16    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_17
    move/from16 v16, v1

    move-wide/from16 v0, p8

    .end local v1    # "$dirty":I
    .restart local v16    # "$dirty":I
    :goto_f
    const/high16 v17, 0xe000000

    and-int v17, v15, v17

    if-nez v17, :cond_1a

    and-int/lit16 v12, v14, 0x100

    if-nez v12, :cond_18

    move-wide/from16 v0, p10

    invoke-interface {v13, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_19

    const/high16 v12, 0x4000000

    goto :goto_10

    :cond_18
    move-wide/from16 v0, p10

    :cond_19
    const/high16 v12, 0x2000000

    :goto_10
    or-int v16, v16, v12

    goto :goto_11

    :cond_1a
    move-wide/from16 v0, p10

    :goto_11
    and-int/lit16 v12, v14, 0x200

    if-eqz v12, :cond_1b

    const/high16 v12, 0x30000000

    or-int v16, v16, v12

    move-object/from16 v12, p12

    goto :goto_13

    :cond_1b
    const/high16 v12, 0x70000000

    and-int/2addr v12, v15

    if-nez v12, :cond_1d

    move-object/from16 v12, p12

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v18, 0x10000000

    :goto_12
    or-int v16, v16, v18

    goto :goto_13

    :cond_1d
    move-object/from16 v12, p12

    :goto_13
    move/from16 v0, v16

    .end local v16    # "$dirty":I
    .local v0, "$dirty":I
    const v1, 0x5b6db6db

    and-int/2addr v1, v0

    const v3, 0x12492492

    if-ne v1, v3, :cond_1f

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_14

    .line 605
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p1

    move-wide/from16 v21, p6

    move-wide/from16 v23, p8

    move-wide/from16 v25, p10

    move/from16 v27, v0

    move-object/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v10

    goto/16 :goto_1f

    .line 515
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v15, 0x1

    const v4, -0x1c00001

    const v16, -0x380001

    const v18, -0xe001

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_15

    .line 513
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v14, 0x4

    if-eqz v1, :cond_21

    and-int/lit16 v0, v0, -0x381

    :cond_21
    and-int/lit8 v1, v14, 0x10

    if-eqz v1, :cond_22

    and-int v0, v0, v18

    :cond_22
    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_23

    and-int v0, v0, v16

    :cond_23
    and-int/lit16 v1, v14, 0x80

    if-eqz v1, :cond_24

    and-int/2addr v0, v4

    :cond_24
    and-int/lit16 v1, v14, 0x100

    if-eqz v1, :cond_25

    const v1, -0xe000001

    and-int/2addr v0, v1

    :cond_25
    move-wide/from16 v3, p10

    move v11, v0

    move-object v1, v5

    move v2, v7

    move-object v5, v8

    move v6, v10

    move-object/from16 v0, p1

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    goto/16 :goto_1d

    .line 515
    :cond_26
    :goto_15
    if-eqz v2, :cond_27

    .line 506
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 515
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v1, p1

    .line 506
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    and-int/lit8 v2, v14, 0x4

    const/4 v4, 0x6

    if-eqz v2, :cond_28

    .line 507
    sget-object v2, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    move-object/from16 p1, v1

    const/4 v1, 0x2

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v3, v13, v4, v1}, Landroidx/compose/material/DrawerKt;->rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    move-result-object v1

    .end local p2    # "drawerState":Landroidx/compose/material/DrawerState;
    .local v1, "drawerState":Landroidx/compose/material/DrawerState;
    and-int/lit16 v0, v0, -0x381

    goto :goto_17

    .line 506
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "drawerState":Landroidx/compose/material/DrawerState;
    :cond_28
    move-object/from16 p1, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object v1, v5

    .line 507
    .end local p2    # "drawerState":Landroidx/compose/material/DrawerState;
    .local v1, "drawerState":Landroidx/compose/material/DrawerState;
    :goto_17
    if-eqz v6, :cond_29

    .line 508
    const/4 v2, 0x1

    .end local p3    # "gesturesEnabled":Z
    .local v2, "gesturesEnabled":Z
    goto :goto_18

    .line 507
    .end local v2    # "gesturesEnabled":Z
    .restart local p3    # "gesturesEnabled":Z
    :cond_29
    move v2, v7

    .line 508
    .end local p3    # "gesturesEnabled":Z
    .restart local v2    # "gesturesEnabled":Z
    :goto_18
    and-int/lit8 v5, v14, 0x10

    if-eqz v5, :cond_2a

    .line 509
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v5, v13, v4}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Shape;

    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v5, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int v0, v0, v18

    goto :goto_19

    .line 508
    .end local v5    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_2a
    move-object v5, v8

    .line 509
    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v5    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_19
    if-eqz v9, :cond_2b

    .line 510
    sget-object v6, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v6}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v6

    .end local p5    # "drawerElevation":F
    .local v6, "drawerElevation":F
    goto :goto_1a

    .line 509
    .end local v6    # "drawerElevation":F
    .restart local p5    # "drawerElevation":F
    :cond_2b
    move v6, v10

    .line 510
    .end local p5    # "drawerElevation":F
    .restart local v6    # "drawerElevation":F
    :goto_1a
    and-int/lit8 v7, v14, 0x40

    if-eqz v7, :cond_2c

    .line 511
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v7, v13, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    .end local p6    # "drawerBackgroundColor":J
    .local v7, "drawerBackgroundColor":J
    and-int v0, v0, v16

    goto :goto_1b

    .line 510
    .end local v7    # "drawerBackgroundColor":J
    .restart local p6    # "drawerBackgroundColor":J
    :cond_2c
    move-wide/from16 v7, p6

    .line 511
    .end local p6    # "drawerBackgroundColor":J
    .restart local v7    # "drawerBackgroundColor":J
    :goto_1b
    and-int/lit16 v9, v14, 0x80

    if-eqz v9, :cond_2d

    .line 512
    shr-int/lit8 v9, v0, 0x12

    and-int/lit8 v9, v9, 0xe

    invoke-static {v7, v8, v13, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    const v16, -0x1c00001

    .end local p8    # "drawerContentColor":J
    .local v9, "drawerContentColor":J
    and-int v0, v0, v16

    goto :goto_1c

    .line 511
    .end local v9    # "drawerContentColor":J
    .restart local p8    # "drawerContentColor":J
    :cond_2d
    move-wide/from16 v9, p8

    .line 512
    .end local p8    # "drawerContentColor":J
    .restart local v9    # "drawerContentColor":J
    :goto_1c
    and-int/lit16 v3, v14, 0x100

    if-eqz v3, :cond_2e

    .line 513
    sget-object v3, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v3, v13, v4}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    const v16, -0xe000001

    .end local p10    # "scrimColor":J
    .local v3, "scrimColor":J
    and-int v0, v0, v16

    move v11, v0

    move-object/from16 v0, p1

    goto :goto_1d

    .line 512
    .end local v3    # "scrimColor":J
    .restart local p10    # "scrimColor":J
    :cond_2e
    move-wide/from16 v3, p10

    move v11, v0

    move-object/from16 v0, p1

    .line 513
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "scrimColor":J
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "scrimColor":J
    .local v11, "$dirty":I
    :goto_1d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_2f

    .line 515
    const/4 v12, -0x1

    const-string/jumbo v14, "androidx.compose.material.ModalDrawer (Drawer.kt:514)"

    const v15, 0x4dd50861    # 4.46762016E8f

    invoke-static {v15, v11, v12, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2f
    nop

    .line 516
    const/4 v12, 0x0

    move v14, v12

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$rememberCoroutineScope":I
    const v12, 0x2e20b340

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v13, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 929
    nop

    .line 931
    move-object v12, v13

    .line 932
    .local v12, "composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    move/from16 p8, v11

    .end local v11    # "$dirty":I
    .local v17, "$i$f$remember":I
    .local p8, "$dirty":I
    const v11, -0x1d58f75c

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v13, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 933
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv$iv":Z
    move-object/from16 p1, v13

    .local p1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 934
    .local v18, "$i$f$cache":I
    move/from16 p2, v11

    .end local v11    # "invalid$iv$iv$iv":Z
    .local p2, "invalid$iv$iv$iv":Z
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 935
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v14

    .end local v14    # "$changed$iv":I
    .local p3, "$changed$iv":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_30

    .line 936
    const/4 v14, 0x0

    .line 937
    .local v14, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 938
    const/16 v20, 0x0

    .line 939
    .local v20, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v20, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 938
    .end local v20    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p4, v11

    .end local v11    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v11, v20

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v11, v12}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    .line 937
    move-object/from16 p5, v12

    .end local v12    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local p5, "composer$iv":Landroidx/compose/runtime/Composer;
    new-instance v12, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v12, v11}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 936
    .end local v14    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v11, v12

    .line 940
    .local v11, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v12, p1

    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 941
    nop

    .end local v11    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1e

    .line 942
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p5    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local v11, "it$iv$iv$iv":Ljava/lang/Object;
    .local v12, "composer$iv":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_30
    move-object/from16 p4, v11

    move-object/from16 p5, v12

    move-object/from16 v12, p1

    .line 935
    .end local v11    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p5    # "composer$iv":Landroidx/compose/runtime/Composer;
    :goto_1e
    nop

    .line 934
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p4    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 933
    .end local v12    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    .end local p2    # "invalid$iv$iv$iv":Z
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 932
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$remember":I
    check-cast v11, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 943
    .local v11, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v11}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v28

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 516
    .end local v11    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v15    # "$i$f$rememberCoroutineScope":I
    .end local p3    # "$changed$iv":I
    .end local p5    # "composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 517
    .local v28, "scope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static {v0, v11, v12, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v15, Landroidx/compose/material/DrawerKt$ModalDrawer$1;

    move-object/from16 v16, v15

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-wide/from16 v19, v3

    move-object/from16 v21, v5

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    move/from16 v26, v6

    move-object/from16 v27, p12

    move-object/from16 v29, p0

    invoke-direct/range {v16 .. v29}, Landroidx/compose/material/DrawerKt$ModalDrawer$1;-><init>(Landroidx/compose/material/DrawerState;ZJLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)V

    const v14, 0x30ad78b7

    invoke-static {v13, v14, v12, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    check-cast v12, Lkotlin/jvm/functions/Function3;

    const/16 v14, 0xc00

    const/4 v15, 0x6

    move-object/from16 p1, v11

    const/4 v11, 0x0

    move-object/from16 p2, v11

    const/4 v11, 0x0

    move/from16 p3, v11

    move-object/from16 p4, v12

    move-object/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v15

    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 605
    .end local v28    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_31
    move/from16 v27, p8

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-wide/from16 v25, v3

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v21, v7

    move-wide/from16 v23, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "drawerState":Landroidx/compose/material/DrawerState;
    .end local v2    # "gesturesEnabled":Z
    .end local v3    # "scrimColor":J
    .end local v5    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v6    # "drawerElevation":F
    .end local v7    # "drawerBackgroundColor":J
    .end local v9    # "drawerContentColor":J
    .end local p8    # "$dirty":I
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "drawerState":Landroidx/compose/material/DrawerState;
    .local v18, "gesturesEnabled":Z
    .local v19, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v20, "drawerElevation":F
    .local v21, "drawerBackgroundColor":J
    .local v23, "drawerContentColor":J
    .local v25, "scrimColor":J
    .local v27, "$dirty":I
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_32

    new-instance v28, Landroidx/compose/material/DrawerKt$ModalDrawer$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    move-object/from16 v29, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v30, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v28

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_20

    .end local v29    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_32
    move-object/from16 v29, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v29    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_20
    return-void
.end method

.method private static final Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0, "open"    # Z
    .param p1, "onClose"    # Lkotlin/jvm/functions/Function0;
    .param p2, "fraction"    # Lkotlin/jvm/functions/Function0;
    .param p3, "color"    # J
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 828
    move/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move/from16 v12, p6

    const v0, 0x763856e6

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Scrim)P(3,2,1,0:c#ui.graphics.Color)828@30835L30,840@31188L142:Drawer.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_1

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_5

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v13, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit16 v1, v14, 0x16db

    const/16 v2, 0x492

    if-ne v1, v2, :cond_9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 848
    :cond_8
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_c

    .line 828
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.Scrim (Drawer.kt:827)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 829
    :cond_a
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v13, v1}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "closeDrawer":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v7, :cond_f

    .line 831
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 832
    const v4, 0x7176a815

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object v5, v13

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 979
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 980
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_c

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v15, v2, :cond_b

    goto :goto_5

    .line 984
    :cond_b
    move-object v2, v15

    goto :goto_6

    .line 981
    :cond_c
    :goto_5
    const/4 v2, 0x0

    .line 832
    .local v2, "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$1":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$1":I
    .local v17, "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$1":I
    new-instance v2, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;

    invoke-direct {v2, v8, v1}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 981
    .end local v17    # "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$1":I
    nop

    .line 982
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 983
    nop

    .line 980
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 979
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 832
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v3, v8, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 833
    const v3, 0x7176a869

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .local v3, "invalid$iv":Z
    move-object v4, v13

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 985
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 986
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_e

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_d

    goto :goto_7

    .line 990
    :cond_d
    move-object v1, v6

    goto :goto_8

    .line 987
    :cond_e
    :goto_7
    const/4 v1, 0x0

    .line 833
    .local v1, "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$2":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$2":I
    .local v16, "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$2":I
    new-instance v1, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;

    invoke-direct {v1, v0, v8}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 987
    .end local v16    # "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$2":I
    nop

    .line 988
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 989
    nop

    .line 986
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 985
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 833
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_9

    .line 838
    :cond_f
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 830
    :goto_9
    nop

    .line 842
    .local v1, "dismissDrawer":Landroidx/compose/ui/Modifier;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 843
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 844
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x7176a95a

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v13, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 845
    nop

    .restart local v3    # "invalid$iv":Z
    move-object v4, v13

    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 991
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 992
    .restart local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_11

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p5, v0

    .end local v0    # "closeDrawer":Ljava/lang/String;
    .local p5, "closeDrawer":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_10

    goto :goto_a

    .line 996
    :cond_10
    move-object v0, v6

    goto :goto_b

    .line 992
    .end local p5    # "closeDrawer":Ljava/lang/String;
    .restart local v0    # "closeDrawer":Ljava/lang/String;
    :cond_11
    move-object/from16 p5, v0

    .line 993
    .end local v0    # "closeDrawer":Ljava/lang/String;
    .restart local p5    # "closeDrawer":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x0

    .line 845
    .local v0, "$i$a$-cache-DrawerKt$Scrim$1":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-cache-DrawerKt$Scrim$1":I
    .local v16, "$i$a$-cache-DrawerKt$Scrim$1":I
    new-instance v0, Landroidx/compose/material/DrawerKt$Scrim$1$1;

    invoke-direct {v0, v10, v11, v9}, Landroidx/compose/material/DrawerKt$Scrim$1$1;-><init>(JLkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 993
    .end local v16    # "$i$a$-cache-DrawerKt$Scrim$1":I
    nop

    .line 994
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 995
    nop

    .line 992
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 991
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 845
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 841
    const/4 v3, 0x0

    invoke-static {v2, v0, v13, v3}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 848
    .end local v1    # "dismissDrawer":Landroidx/compose/ui/Modifier;
    .end local p5    # "closeDrawer":Ljava/lang/String;
    :cond_12
    :goto_c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_13

    new-instance v16, Landroidx/compose/material/DrawerKt$Scrim$2;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DrawerKt$Scrim$2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JI)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_13
    return-void
.end method

.method public static final synthetic access$BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/DrawerKt;->BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$BottomDrawerScrim_3J_VO9M$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/DrawerKt;->BottomDrawerScrim_3J_VO9M$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/DrawerKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "open"    # Z
    .param p1, "onClose"    # Lkotlin/jvm/functions/Function0;
    .param p2, "fraction"    # Lkotlin/jvm/functions/Function0;
    .param p3, "color"    # J
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/DrawerKt;->Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$calculateFraction(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "pos"    # F

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/DrawerKt;->calculateFraction(FFF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic access$getDrawerPositionalThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->DrawerPositionalThreshold:F

    return v0
.end method

.method public static final synthetic access$getDrawerVelocityThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    return v0
.end method

.method public static final synthetic access$getEndDrawerPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    return v0
.end method

.method private static final calculateFraction(FFF)F
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "pos"    # F

    .line 785
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    return v0
.end method

.method public static final rememberBottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;
    .locals 10
    .param p0, "initialValue"    # Landroidx/compose/material/BottomDrawerValue;
    .param p1, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomDrawerState;"
        }
    .end annotation

    const v0, -0x23a68354

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBottomDrawerState)P(1)466@16084L7,467@16103L164:Drawer.kt#jmzs0o"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 465
    sget-object p4, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;

    move-object p1, p4

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 466
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberBottomDrawerState (Drawer.kt:465)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 467
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/CompositionLocal;

    .local p4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .line 922
    .local v1, "$i$f$getCurrent":I
    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 467
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$getCurrent":I
    .end local p4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    move-object p4, v2

    check-cast p4, Landroidx/compose/ui/unit/Density;

    .line 468
    .local p4, "density":Landroidx/compose/ui/unit/Density;
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/material/BottomDrawerState;->Companion:Landroidx/compose/material/BottomDrawerState$Companion;

    invoke-virtual {v1, p4, p1}, Landroidx/compose/material/BottomDrawerState$Companion;->Saver(Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x71766e6a

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .local v3, "invalid$iv":Z
    move-object v4, p2

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 923
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 924
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_3

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_2

    goto :goto_0

    .line 928
    :cond_2
    move-object v8, v6

    goto :goto_1

    .line 925
    :cond_3
    :goto_0
    const/4 v8, 0x0

    .line 468
    .local v8, "$i$a$-cache-DrawerKt$rememberBottomDrawerState$2":I
    new-instance v9, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2$1;

    invoke-direct {v9, p0, p4, p1}, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2$1;-><init>(Landroidx/compose/material/BottomDrawerValue;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 925
    .end local v8    # "$i$a$-cache-DrawerKt$rememberBottomDrawerState$2":I
    move-object v8, v9

    .line 926
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 927
    nop

    .line 924
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 923
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 468
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v5, 0x48

    const/4 v6, 0x4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/BottomDrawerState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;
    .locals 9
    .param p0, "initialValue"    # Landroidx/compose/material/DrawerValue;
    .param p1, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/DrawerState;"
        }
    .end annotation

    const v0, -0x5595b3b5

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDrawerState)P(1)449@15518L125:Drawer.kt#jmzs0o"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 448
    sget-object p4, Landroidx/compose/material/DrawerKt$rememberDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberDrawerState$1;

    move-object p1, p4

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 449
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberDrawerState (Drawer.kt:448)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    .line 450
    sget-object p4, Landroidx/compose/material/DrawerState;->Companion:Landroidx/compose/material/DrawerState$Companion;

    invoke-virtual {p4, p1}, Landroidx/compose/material/DrawerState$Companion;->Saver(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const/4 v2, 0x0

    const p4, 0x71766c09

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p4, v3

    .local p4, "invalid$iv":Z
    move-object v3, p2

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 916
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 917
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p4, :cond_3

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 921
    :cond_2
    move-object v7, v5

    goto :goto_1

    .line 918
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .line 450
    .local v7, "$i$a$-cache-DrawerKt$rememberDrawerState$2":I
    new-instance v8, Landroidx/compose/material/DrawerKt$rememberDrawerState$2$1;

    invoke-direct {v8, p0, p1}, Landroidx/compose/material/DrawerKt$rememberDrawerState$2$1;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 918
    .end local v7    # "$i$a$-cache-DrawerKt$rememberDrawerState$2":I
    move-object v7, v8

    .line 919
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 920
    nop

    .line 917
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 916
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 450
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    move-object v3, v7

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v5, 0x48

    const/4 v6, 0x4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/material/DrawerState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method
