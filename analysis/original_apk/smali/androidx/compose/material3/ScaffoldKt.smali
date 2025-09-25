.class public final Landroidx/compose/material3/ScaffoldKt;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material3/ScaffoldKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,598:1\n1116#2,6:599\n1116#2,6:605\n1116#2,6:611\n1116#2,6:617\n81#3:623\n107#3,2:624\n154#4:626\n*S KotlinDebug\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material3/ScaffoldKt\n*L\n98#1:599,6\n102#1:605,6\n179#1:611,6\n349#1:617,6\n572#1:623\n572#1:624,2\n595#1:626\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u0087\u0001\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00140\u001b\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u001e\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0006\u0010\u001f\u001a\u00020 2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u0019H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u00b1\u0001\u0010$\u001a\u00020\u00142\u0008\u0008\u0002\u0010%\u001a\u00020&2\u0013\u0008\u0002\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0013\u0008\u0002\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0013\u0008\u0002\u0010\'\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0013\u0008\u0002\u0010(\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0008\u0008\u0002\u0010)\u001a\u00020\u00162\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020+2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00140\u001b\u00a2\u0006\u0002\u0008\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.\u001a\u0087\u0001\u0010/\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00140\u001b\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u001e\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0006\u0010\u001f\u001a\u00020 2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u0019H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010#\u001a\u0087\u0001\u00101\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00140\u001b\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u001e\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u00192\u0006\u0010\u001f\u001a\u00020 2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018\u00a2\u0006\u0002\u0008\u0019H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u0010#\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u001c\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"1\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008\u0011\u0010\u0012\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00063"
    }
    d2 = {
        "FabSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "LocalFabPlacement",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/material3/FabPlacement;",
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
        "fabPosition",
        "Landroidx/compose/material3/FabPosition;",
        "topBar",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "snackbar",
        "fab",
        "contentWindowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "bottomBar",
        "LegacyScaffoldLayout-FMILGgc",
        "(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "Scaffold",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "snackbarHost",
        "floatingActionButton",
        "floatingActionButtonPosition",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "Scaffold-TvnljyQ",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "ScaffoldLayout",
        "ScaffoldLayout-FMILGgc",
        "ScaffoldLayoutWithMeasureFix",
        "ScaffoldLayoutWithMeasureFix-FMILGgc",
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


# static fields
.field private static final FabSpacing:F

.field private static final LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/FabPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private static final ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 572
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ScaffoldKt;->ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;

    .line 592
    sget-object v0, Landroidx/compose/material3/ScaffoldKt$LocalFabPlacement$1;->INSTANCE:Landroidx/compose/material3/ScaffoldKt$LocalFabPlacement$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ScaffoldKt;->LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 595
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 626
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 595
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    return-void
.end method

.method private static final LegacyScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .param p0, "fabPosition"    # I
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p5, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p6, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 348
    move/from16 v9, p8

    const v0, 0x4dea6023    # 4.9152112E8f

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LegacyScaffoldLayout)P(4:c#material3.FabPosition,6,1,5,3,2)348@14737L6941,348@14720L6958:Scaffold.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    move/from16 v8, p0

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    and-int/lit8 v2, v9, 0x30

    const/16 v4, 0x20

    if-nez v2, :cond_3

    move-object/from16 v7, p1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v2, v9, 0x180

    if-nez v2, :cond_5

    move-object/from16 v6, p2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit16 v2, v9, 0xc00

    const/16 v11, 0x800

    if-nez v2, :cond_7

    move-object/from16 v2, p3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v11

    goto :goto_6

    :cond_6
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v1, v12

    goto :goto_7

    :cond_7
    move-object/from16 v2, p3

    :goto_7
    and-int/lit16 v12, v9, 0x6000

    if-nez v12, :cond_9

    move-object/from16 v15, p4

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_8

    :cond_8
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v1, v12

    goto :goto_9

    :cond_9
    move-object/from16 v15, p4

    :goto_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v9

    const/high16 v14, 0x20000

    if-nez v12, :cond_b

    move-object/from16 v12, p5

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move/from16 v16, v14

    goto :goto_a

    :cond_a
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_b
    move-object/from16 v12, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v9, v16

    if-nez v16, :cond_d

    move-object/from16 v5, p6

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_d
    move-object/from16 v5, p6

    :goto_d
    const v17, 0x92493

    and-int v3, v1, v17

    const v13, 0x92492

    if-ne v3, v13, :cond_f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_e

    .line 503
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_18

    .line 348
    :cond_f
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, -0x1

    const-string/jumbo v13, "androidx.compose.material3.LegacyScaffoldLayout (Scaffold.kt:347)"

    invoke-static {v0, v1, v3, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_10
    const v0, 0x6224c9c5

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Scaffold.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v1, 0x70

    const/4 v3, 0x1

    const/4 v13, 0x0

    if-ne v0, v4, :cond_11

    move v0, v3

    goto :goto_f

    :cond_11
    move v0, v13

    :goto_f
    and-int/lit16 v4, v1, 0x1c00

    if-ne v4, v11, :cond_12

    move v4, v3

    goto :goto_10

    :cond_12
    move v4, v13

    :goto_10
    or-int/2addr v0, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    if-ne v4, v14, :cond_13

    move v4, v3

    goto :goto_11

    :cond_13
    move v4, v13

    :goto_11
    or-int/2addr v0, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    const/16 v11, 0x4000

    if-ne v4, v11, :cond_14

    move v4, v3

    goto :goto_12

    :cond_14
    move v4, v13

    :goto_12
    or-int/2addr v0, v4

    and-int/lit8 v4, v1, 0xe

    const/4 v11, 0x4

    if-ne v4, v11, :cond_15

    move v4, v3

    goto :goto_13

    :cond_15
    move v4, v13

    :goto_13
    or-int/2addr v0, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v1

    const/high16 v11, 0x100000

    if-ne v4, v11, :cond_16

    move v4, v3

    goto :goto_14

    :cond_16
    move v4, v13

    :goto_14
    or-int/2addr v0, v4

    and-int/lit16 v4, v1, 0x380

    const/16 v11, 0x100

    if-ne v4, v11, :cond_17

    move v4, v3

    goto :goto_15

    :cond_17
    move v4, v13

    :goto_15
    or-int/2addr v0, v4

    .line 349
    nop

    .local v0, "invalid$iv":Z
    move-object v4, v10

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 617
    .local v19, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 618
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_19

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_18

    goto :goto_16

    .line 622
    :cond_18
    move/from16 p7, v0

    move v0, v13

    move-object/from16 v23, v14

    goto :goto_17

    .line 619
    :cond_19
    :goto_16
    const/16 v21, 0x0

    .line 349
    .local v21, "$i$a$-cache-ScaffoldKt$LegacyScaffoldLayout$1":I
    new-instance v22, Landroidx/compose/material3/ScaffoldKt$LegacyScaffoldLayout$1$1;

    move-object/from16 v11, v22

    move-object/from16 v12, p1

    move/from16 p7, v0

    move v0, v13

    .end local v0    # "invalid$iv":Z
    .local p7, "invalid$iv":Z
    move-object/from16 v13, p3

    move-object/from16 v23, v14

    .end local v14    # "it$iv":Ljava/lang/Object;
    .local v23, "it$iv":Ljava/lang/Object;
    move-object/from16 v14, p4

    move/from16 v15, p0

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Landroidx/compose/material3/ScaffoldKt$LegacyScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    check-cast v22, Lkotlin/jvm/functions/Function2;

    .line 619
    .end local v21    # "$i$a$-cache-ScaffoldKt$LegacyScaffoldLayout$1":I
    move-object/from16 v14, v22

    .line 620
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 621
    nop

    .line 618
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 617
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v23    # "it$iv":Ljava/lang/Object;
    nop

    .line 349
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local p7    # "invalid$iv":Z
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x0

    invoke-static {v4, v14, v10, v0, v3}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 503
    :cond_1a
    :goto_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_1b

    new-instance v12, Landroidx/compose/material3/ScaffoldKt$LegacyScaffoldLayout$2;

    move-object v0, v12

    move v13, v1

    .end local v1    # "$dirty":I
    .local v13, "$dirty":I
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$LegacyScaffoldLayout$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .end local v13    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1b
    move v13, v1

    .end local v1    # "$dirty":I
    .restart local v13    # "$dirty":I
    :goto_19
    return-void
.end method

.method public static final Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p3, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p4, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p5, "floatingActionButtonPosition"    # I
    .param p6, "containerColor"    # J
    .param p8, "contentColor"    # J
    .param p10, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p11, "content"    # Lkotlin/jvm/functions/Function3;
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;IJJ",
            "Landroidx/compose/foundation/layout/WindowInsets;",
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
            "II)V"
        }
    .end annotation

    .line 97
    move/from16 v15, p13

    move/from16 v14, p14

    const v0, -0x48b06cf1

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Scaffold)P(7,9!1,8,5,6:c#material3.FabPosition,1:c#ui.graphics.Color,3:c#ui.graphics.Color,4)92@4736L11,93@4786L31,94@4876L19,97@4971L86,101@5129L212,100@5062L664:Scaffold.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v14, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v15, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v8, v14, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v15, 0xc00

    if-nez v9, :cond_b

    move-object/from16 v9, p3

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v1, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p3

    :goto_7
    and-int/lit8 v10, v14, 0x10

    if-eqz v10, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v11, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_e

    move-object/from16 v11, p4

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_8

    :cond_d
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v1, v12

    goto :goto_9

    :cond_e
    move-object/from16 v11, p4

    :goto_9
    and-int/lit8 v12, v14, 0x20

    const/high16 v16, 0x30000

    if-eqz v12, :cond_f

    or-int v1, v1, v16

    move/from16 v0, p5

    goto :goto_b

    :cond_f
    and-int v16, v15, v16

    if-nez v16, :cond_11

    move/from16 v0, p5

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    const/high16 v17, 0x180000

    and-int v17, v15, v17

    if-nez v17, :cond_14

    and-int/lit8 v17, v14, 0x40

    if-nez v17, :cond_12

    move/from16 p12, v12

    move-wide/from16 v11, p6

    invoke-interface {v13, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    move/from16 p12, v12

    move-wide/from16 v11, p6

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_14
    move/from16 p12, v12

    move-wide/from16 v11, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v18, v15, v17

    if-nez v18, :cond_17

    and-int/lit16 v0, v14, 0x80

    if-nez v0, :cond_15

    move-wide/from16 v11, p8

    invoke-interface {v13, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_15
    move-wide/from16 v11, p8

    :cond_16
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v1, v0

    goto :goto_f

    :cond_17
    move-wide/from16 v11, p8

    :goto_f
    const/high16 v0, 0x6000000

    and-int v18, v15, v0

    if-nez v18, :cond_1a

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p10

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p10

    :cond_19
    const/high16 v20, 0x2000000

    :goto_10
    or-int v1, v1, v20

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p10

    :goto_11
    and-int/lit16 v0, v14, 0x200

    const/high16 v20, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v20

    move-object/from16 v0, p11

    goto :goto_13

    :cond_1b
    and-int v0, v15, v20

    if-nez v0, :cond_1d

    move-object/from16 v0, p11

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    const/high16 v20, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v20, 0x10000000

    :goto_12
    or-int v1, v1, v20

    goto :goto_13

    :cond_1d
    move-object/from16 v0, p11

    :goto_13
    const v20, 0x12492493

    and-int v0, v1, v20

    const v3, 0x12492492

    if-ne v0, v3, :cond_1f

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    .line 118
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p0

    move-object/from16 v23, p4

    move/from16 v24, p5

    move-wide/from16 v25, p6

    move-object/from16 v29, p10

    move/from16 v18, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-wide/from16 v27, v11

    move-object/from16 v17, v13

    goto/16 :goto_25

    .line 97
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v3, -0xe000001

    const v20, -0x1c00001

    const v21, -0x380001

    if-eqz v0, :cond_24

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_15

    .line 95
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_21

    and-int v1, v1, v21

    :cond_21
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_22

    and-int v1, v1, v20

    :cond_22
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_23

    and-int v0, v1, v3

    move-object/from16 v23, p4

    move/from16 v24, p5

    move-wide/from16 v25, p6

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-wide/from16 v27, v11

    move-object/from16 v12, p10

    move v11, v0

    move-object/from16 v0, p0

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1e

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v23, p4

    move/from16 v24, p5

    move-wide/from16 v25, p6

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-wide/from16 v27, v11

    move-object/from16 v12, p10

    move v11, v1

    goto/16 :goto_1e

    .line 97
    :cond_24
    :goto_15
    if-eqz v2, :cond_25

    .line 87
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 97
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_25
    move-object/from16 v0, p0

    .line 87
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    if-eqz v4, :cond_26

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v2}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .end local p1    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v2, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_17

    .end local v2    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p1    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_26
    move-object v2, v5

    .end local p1    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v2    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_17
    if-eqz v6, :cond_27

    sget-object v4, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v4}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .end local p2    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .local v4, "bottomBar":Lkotlin/jvm/functions/Function2;
    goto :goto_18

    .end local v4    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .restart local p2    # "bottomBar":Lkotlin/jvm/functions/Function2;
    :cond_27
    move-object v4, v7

    .end local p2    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .restart local v4    # "bottomBar":Lkotlin/jvm/functions/Function2;
    :goto_18
    if-eqz v8, :cond_28

    sget-object v5, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v5}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda-3$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .end local p3    # "snackbarHost":Lkotlin/jvm/functions/Function2;
    .local v5, "snackbarHost":Lkotlin/jvm/functions/Function2;
    goto :goto_19

    .end local v5    # "snackbarHost":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "snackbarHost":Lkotlin/jvm/functions/Function2;
    :cond_28
    move-object v5, v9

    .end local p3    # "snackbarHost":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "snackbarHost":Lkotlin/jvm/functions/Function2;
    :goto_19
    if-eqz v10, :cond_29

    sget-object v6, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->getLambda-4$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .end local p4    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v6, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    goto :goto_1a

    .end local v6    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local p4    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :cond_29
    move-object/from16 v6, p4

    .end local p4    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local v6    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :goto_1a
    if-eqz p12, :cond_2a

    .line 92
    sget-object v7, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v7}, Landroidx/compose/material3/FabPosition$Companion;->getEnd-ERTFSPs()I

    move-result v7

    .end local p5    # "floatingActionButtonPosition":I
    .local v7, "floatingActionButtonPosition":I
    goto :goto_1b

    .line 87
    .end local v7    # "floatingActionButtonPosition":I
    .restart local p5    # "floatingActionButtonPosition":I
    :cond_2a
    move/from16 v7, p5

    .line 92
    .end local p5    # "floatingActionButtonPosition":I
    .restart local v7    # "floatingActionButtonPosition":I
    :goto_1b
    and-int/lit8 v8, v14, 0x40

    const/4 v9, 0x6

    if-eqz v8, :cond_2b

    .line 93
    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v8, v13, v9}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v22

    .end local p6    # "containerColor":J
    .local v22, "containerColor":J
    and-int v1, v1, v21

    move-object/from16 p0, v4

    move-wide/from16 v3, v22

    goto :goto_1c

    .line 92
    .end local v22    # "containerColor":J
    .restart local p6    # "containerColor":J
    :cond_2b
    move-object/from16 p0, v4

    move-wide/from16 v3, p6

    .line 93
    .end local v4    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .end local p6    # "containerColor":J
    .local v3, "containerColor":J
    .local p0, "bottomBar":Lkotlin/jvm/functions/Function2;
    :goto_1c
    and-int/lit16 v8, v14, 0x80

    if-eqz v8, :cond_2c

    .line 94
    shr-int/lit8 v8, v1, 0x12

    and-int/lit8 v8, v8, 0xe

    invoke-static {v3, v4, v13, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    .end local p8    # "contentColor":J
    .local v10, "contentColor":J
    and-int v1, v1, v20

    goto :goto_1d

    .line 93
    .end local v10    # "contentColor":J
    .restart local p8    # "contentColor":J
    :cond_2c
    move-wide v10, v11

    .line 94
    .end local p8    # "contentColor":J
    .restart local v10    # "contentColor":J
    :goto_1d
    and-int/lit16 v8, v14, 0x100

    if-eqz v8, :cond_2d

    .line 95
    sget-object v8, Landroidx/compose/material3/ScaffoldDefaults;->INSTANCE:Landroidx/compose/material3/ScaffoldDefaults;

    invoke-virtual {v8, v13, v9}, Landroidx/compose/material3/ScaffoldDefaults;->getContentWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v8

    const v9, -0xe000001

    .end local p10    # "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v8, "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    and-int/2addr v1, v9

    move-object/from16 v21, p0

    move-object/from16 v20, v2

    move-wide/from16 v25, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move-object v12, v8

    move-wide/from16 v27, v10

    move v11, v1

    goto :goto_1e

    .line 94
    .end local v8    # "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local p10    # "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :cond_2d
    move-object/from16 v21, p0

    move-object/from16 v12, p10

    move-object/from16 v20, v2

    move-wide/from16 v25, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move-wide/from16 v27, v10

    move v11, v1

    .line 95
    .end local v1    # "$dirty":I
    .end local v2    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local v3    # "containerColor":J
    .end local v5    # "snackbarHost":Lkotlin/jvm/functions/Function2;
    .end local v6    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local v7    # "floatingActionButtonPosition":I
    .end local v10    # "contentColor":J
    .end local p0    # "bottomBar":Lkotlin/jvm/functions/Function2;
    .end local p10    # "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v11, "$dirty":I
    .local v12, "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v20, "topBar":Lkotlin/jvm/functions/Function2;
    .local v21, "bottomBar":Lkotlin/jvm/functions/Function2;
    .local v22, "snackbarHost":Lkotlin/jvm/functions/Function2;
    .local v23, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v24, "floatingActionButtonPosition":I
    .local v25, "containerColor":J
    .local v27, "contentColor":J
    :goto_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 97
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.Scaffold (Scaffold.kt:96)"

    const v3, -0x48b06cf1

    invoke-static {v3, v11, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    const v1, -0x34ffe44e    # -8395698.0f

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Scaffold.kt#9igjgp"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v1, 0xe000000

    and-int/2addr v1, v11

    const/high16 v2, 0x6000000

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x4000000

    if-le v1, v3, :cond_2f

    .line 98
    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2f
    const/high16 v1, 0x6000000

    and-int v3, v11, v1

    const/high16 v1, 0x4000000

    if-ne v3, v1, :cond_31

    :cond_30
    move v1, v2

    goto :goto_1f

    :cond_31
    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    :goto_1f
    move-object v3, v13

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 599
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 600
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_33

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_32

    goto :goto_20

    .line 604
    :cond_32
    move-object v7, v5

    goto :goto_21

    .line 601
    :cond_33
    :goto_20
    const/4 v7, 0x0

    .line 99
    .local v7, "$i$a$-cache-ScaffoldKt$Scaffold$safeInsets$1":I
    new-instance v8, Landroidx/compose/material3/MutableWindowInsets;

    invoke-direct {v8, v12}, Landroidx/compose/material3/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 601
    .end local v7    # "$i$a$-cache-ScaffoldKt$Scaffold$safeInsets$1":I
    move-object v7, v8

    .line 602
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 603
    nop

    .line 600
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_21
    nop

    .line 599
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 98
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v10, v7

    check-cast v10, Landroidx/compose/material3/MutableWindowInsets;

    .local v10, "safeInsets":Landroidx/compose/material3/MutableWindowInsets;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 102
    const v1, -0x34ffe3b0

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Scaffold.kt#9igjgp"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0xe000000

    and-int/2addr v3, v11

    const/high16 v4, 0x6000000

    xor-int/2addr v3, v4

    const/high16 v4, 0x4000000

    if-le v3, v4, :cond_34

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    :cond_34
    const/high16 v3, 0x6000000

    and-int/2addr v3, v11

    const/high16 v4, 0x4000000

    if-ne v3, v4, :cond_36

    :cond_35
    move v3, v2

    goto :goto_22

    :cond_36
    const/4 v3, 0x0

    :goto_22
    or-int/2addr v1, v3

    .restart local v1    # "invalid$iv":Z
    move-object v3, v13

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 605
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 606
    .restart local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_38

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_37

    goto :goto_23

    .line 610
    :cond_37
    move-object v7, v5

    goto :goto_24

    .line 607
    :cond_38
    :goto_23
    const/4 v7, 0x0

    .line 102
    .local v7, "$i$a$-cache-ScaffoldKt$Scaffold$1":I
    new-instance v8, Landroidx/compose/material3/ScaffoldKt$Scaffold$1$1;

    invoke-direct {v8, v10, v12}, Landroidx/compose/material3/ScaffoldKt$Scaffold$1$1;-><init>(Landroidx/compose/material3/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 607
    .end local v7    # "$i$a$-cache-ScaffoldKt$Scaffold$1":I
    move-object v7, v8

    .line 608
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 609
    nop

    .line 606
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_24
    nop

    .line 605
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 102
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v3, 0x0

    .line 106
    nop

    .line 107
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v4, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;

    move-object/from16 p0, v4

    move/from16 p1, v24

    move-object/from16 p2, v20

    move-object/from16 p3, p11

    move-object/from16 p4, v22

    move-object/from16 p5, v23

    move-object/from16 p6, v10

    move-object/from16 p7, v21

    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MutableWindowInsets;Lkotlin/jvm/functions/Function2;)V

    const v5, -0x75f846d6

    invoke-static {v13, v5, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v11, 0xc

    and-int/lit16 v2, v2, 0x380

    or-int v2, v2, v17

    shr-int/lit8 v4, v11, 0xc

    and-int/lit16 v4, v4, 0x1c00

    or-int v17, v2, v4

    const/16 v18, 0x72

    .line 101
    move-object v2, v3

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move-object/from16 v19, v10

    .end local v10    # "safeInsets":Landroidx/compose/material3/MutableWindowInsets;
    .local v19, "safeInsets":Landroidx/compose/material3/MutableWindowInsets;
    move-object/from16 v10, v16

    move/from16 v16, v11

    .end local v11    # "$dirty":I
    .local v16, "$dirty":I
    move-object v11, v13

    move-object/from16 v29, v12

    .end local v12    # "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v29, "contentWindowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    move/from16 v12, v17

    move-object/from16 v17, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v13, v18

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 118
    .end local v19    # "safeInsets":Landroidx/compose/material3/MutableWindowInsets;
    :cond_39
    move/from16 v18, v16

    move-object/from16 v16, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v18, "$dirty":I
    :goto_25
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_3a

    new-instance v19, Landroidx/compose/material3/ScaffoldKt$Scaffold$3;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move/from16 v6, v24

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    move-object/from16 v11, v29

    move-object/from16 v12, p11

    move-object v15, v13

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt$Scaffold$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3a
    return-void
.end method

.method private static final ScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p0, "fabPosition"    # I
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p5, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p6, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 142
    move/from16 v9, p8

    const v0, -0x3a252186

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ScaffoldLayout)P(4:c#material3.FabPosition,6,1,5,3,2):Scaffold.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    move/from16 v7, p0

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    move/from16 v7, p0

    :goto_1
    and-int/lit8 v2, v9, 0x30

    if-nez v2, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v2, v9, 0x180

    if-nez v2, :cond_5

    move-object/from16 v5, p2

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p2

    :goto_5
    and-int/lit16 v2, v9, 0xc00

    if-nez v2, :cond_7

    move-object/from16 v4, p3

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v4, p3

    :goto_7
    and-int/lit16 v2, v9, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v3, p4

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v3, p4

    :goto_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v9

    if-nez v2, :cond_b

    move-object/from16 v2, p5

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v10, 0x10000

    :goto_a
    or-int/2addr v1, v10

    goto :goto_b

    :cond_b
    move-object/from16 v2, p5

    :goto_b
    const/high16 v10, 0x180000

    and-int/2addr v10, v9

    if-nez v10, :cond_d

    move-object/from16 v15, p6

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/high16 v10, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v10, 0x80000

    :goto_c
    or-int/2addr v1, v10

    goto :goto_d

    :cond_d
    move-object/from16 v15, p6

    :goto_d
    const v10, 0x92493

    and-int/2addr v10, v1

    const v11, 0x92492

    if-ne v10, v11, :cond_f

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_e

    .line 164
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 142
    :cond_f
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, -0x1

    const-string/jumbo v11, "androidx.compose.material3.ScaffoldLayout (Scaffold.kt:141)"

    invoke-static {v0, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    :cond_10
    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->getScaffoldSubcomposeInMeasureFix()Z

    move-result v0

    const/high16 v10, 0x380000

    const/high16 v11, 0x70000

    const v12, 0xe000

    if-eqz v0, :cond_11

    const v0, -0x368e6cd5

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "143@6712L283"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v13, v1, 0x70

    or-int/2addr v0, v13

    and-int/lit16 v13, v1, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v13, v1, 0x1c00

    or-int/2addr v0, v13

    and-int/2addr v12, v1

    or-int/2addr v0, v12

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    and-int/2addr v10, v1

    or-int v18, v0, v10

    .line 144
    move/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, v8

    invoke-static/range {v10 .. v18}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayoutWithMeasureFix-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 143
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_f

    .line 153
    :cond_11
    const v0, -0x368e6ba4    # -989509.75f

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "153@7017L275"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v13, v1, 0x70

    or-int/2addr v0, v13

    and-int/lit16 v13, v1, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v13, v1, 0x1c00

    or-int/2addr v0, v13

    and-int/2addr v12, v1

    or-int/2addr v0, v12

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    and-int/2addr v10, v1

    or-int v18, v0, v10

    .line 154
    move/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, v8

    invoke-static/range {v10 .. v18}, Landroidx/compose/material3/ScaffoldKt;->LegacyScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 153
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 164
    :cond_12
    :goto_10
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_13

    new-instance v11, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1;

    move-object v0, v11

    move v12, v1

    .end local v1    # "$dirty":I
    .local v12, "$dirty":I
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v13, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_11

    .end local v12    # "$dirty":I
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_13
    move v12, v1

    move-object v13, v8

    .end local v1    # "$dirty":I
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$dirty":I
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_11
    return-void
.end method

.method private static final ScaffoldLayoutWithMeasureFix-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .param p0, "fabPosition"    # I
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p5, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p6, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 178
    move/from16 v9, p8

    const v0, -0x797386a9

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ScaffoldLayoutWithMeasureFix)P(4:c#material3.FabPosition,6,1,5,3,2)178@7738L6567,178@7721L6584:Scaffold.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    move/from16 v8, p0

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

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
    and-int/lit8 v2, v9, 0x30

    const/16 v4, 0x20

    if-nez v2, :cond_3

    move-object/from16 v7, p1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v2, v9, 0x180

    if-nez v2, :cond_5

    move-object/from16 v6, p2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit16 v2, v9, 0xc00

    const/16 v11, 0x800

    if-nez v2, :cond_7

    move-object/from16 v2, p3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v11

    goto :goto_6

    :cond_6
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v1, v12

    goto :goto_7

    :cond_7
    move-object/from16 v2, p3

    :goto_7
    and-int/lit16 v12, v9, 0x6000

    if-nez v12, :cond_9

    move-object/from16 v15, p4

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_8

    :cond_8
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v1, v12

    goto :goto_9

    :cond_9
    move-object/from16 v15, p4

    :goto_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v9

    const/high16 v14, 0x20000

    if-nez v12, :cond_b

    move-object/from16 v12, p5

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move/from16 v16, v14

    goto :goto_a

    :cond_a
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_b
    move-object/from16 v12, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v9, v16

    if-nez v16, :cond_d

    move-object/from16 v5, p6

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_d
    move-object/from16 v5, p6

    :goto_d
    const v17, 0x92493

    and-int v3, v1, v17

    const v13, 0x92492

    if-ne v3, v13, :cond_f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_e

    .line 334
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_18

    .line 178
    :cond_f
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, -0x1

    const-string/jumbo v13, "androidx.compose.material3.ScaffoldLayoutWithMeasureFix (Scaffold.kt:177)"

    invoke-static {v0, v1, v3, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_10
    const v0, -0x104a9f46

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Scaffold.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v1, 0x70

    const/4 v3, 0x1

    const/4 v13, 0x0

    if-ne v0, v4, :cond_11

    move v0, v3

    goto :goto_f

    :cond_11
    move v0, v13

    :goto_f
    and-int/lit16 v4, v1, 0x1c00

    if-ne v4, v11, :cond_12

    move v4, v3

    goto :goto_10

    :cond_12
    move v4, v13

    :goto_10
    or-int/2addr v0, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    if-ne v4, v14, :cond_13

    move v4, v3

    goto :goto_11

    :cond_13
    move v4, v13

    :goto_11
    or-int/2addr v0, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    const/16 v11, 0x4000

    if-ne v4, v11, :cond_14

    move v4, v3

    goto :goto_12

    :cond_14
    move v4, v13

    :goto_12
    or-int/2addr v0, v4

    and-int/lit8 v4, v1, 0xe

    const/4 v11, 0x4

    if-ne v4, v11, :cond_15

    move v4, v3

    goto :goto_13

    :cond_15
    move v4, v13

    :goto_13
    or-int/2addr v0, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v1

    const/high16 v11, 0x100000

    if-ne v4, v11, :cond_16

    move v4, v3

    goto :goto_14

    :cond_16
    move v4, v13

    :goto_14
    or-int/2addr v0, v4

    and-int/lit16 v4, v1, 0x380

    const/16 v11, 0x100

    if-ne v4, v11, :cond_17

    move v4, v3

    goto :goto_15

    :cond_17
    move v4, v13

    :goto_15
    or-int/2addr v0, v4

    .line 179
    nop

    .local v0, "invalid$iv":Z
    move-object v4, v10

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 611
    .local v19, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 612
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_19

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_18

    goto :goto_16

    .line 616
    :cond_18
    move/from16 p7, v0

    move v0, v13

    move-object/from16 v23, v14

    goto :goto_17

    .line 613
    :cond_19
    :goto_16
    const/16 v21, 0x0

    .line 179
    .local v21, "$i$a$-cache-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1":I
    new-instance v22, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1;

    move-object/from16 v11, v22

    move-object/from16 v12, p1

    move/from16 p7, v0

    move v0, v13

    .end local v0    # "invalid$iv":Z
    .local p7, "invalid$iv":Z
    move-object/from16 v13, p3

    move-object/from16 v23, v14

    .end local v14    # "it$iv":Ljava/lang/Object;
    .local v23, "it$iv":Ljava/lang/Object;
    move-object/from16 v14, p4

    move/from16 v15, p0

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    check-cast v22, Lkotlin/jvm/functions/Function2;

    .line 613
    .end local v21    # "$i$a$-cache-ScaffoldKt$ScaffoldLayoutWithMeasureFix$1":I
    move-object/from16 v14, v22

    .line 614
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 615
    nop

    .line 612
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 611
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v23    # "it$iv":Ljava/lang/Object;
    nop

    .line 179
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local p7    # "invalid$iv":Z
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x0

    invoke-static {v4, v14, v10, v0, v3}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 334
    :cond_1a
    :goto_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_1b

    new-instance v12, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$2;

    move-object v0, v12

    move v13, v1

    .end local v1    # "$dirty":I
    .local v13, "$dirty":I
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayoutWithMeasureFix$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .end local v13    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1b
    move v13, v1

    .end local v1    # "$dirty":I
    .restart local v13    # "$dirty":I
    :goto_19
    return-void
.end method

.method public static final synthetic access$LegacyScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "fabPosition"    # I
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p5, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p6, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/ScaffoldKt;->LegacyScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "fabPosition"    # I
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p5, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p6, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ScaffoldLayoutWithMeasureFix-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "fabPosition"    # I
    .param p1, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "snackbar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "fab"    # Lkotlin/jvm/functions/Function2;
    .param p5, "contentWindowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p6, "bottomBar"    # Lkotlin/jvm/functions/Function2;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/ScaffoldKt;->ScaffoldLayoutWithMeasureFix-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getFabSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    return v0
.end method

.method public static final getLocalFabPlacement()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/FabPlacement;",
            ">;"
        }
    .end annotation

    .line 592
    sget-object v0, Landroidx/compose/material3/ScaffoldKt;->LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getScaffoldSubcomposeInMeasureFix()Z
    .locals 4

    .line 572
    sget-object v0, Landroidx/compose/material3/ScaffoldKt;->ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 623
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

    .line 572
    return v0
.end method

.method public static synthetic getScaffoldSubcomposeInMeasureFix$annotations()V
    .locals 0

    return-void
.end method

.method public static final setScaffoldSubcomposeInMeasureFix(Z)V
    .locals 5
    .param p0, "<set-?>"    # Z

    .line 572
    sget-object v0, Landroidx/compose/material3/ScaffoldKt;->ScaffoldSubcomposeInMeasureFix$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 624
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 625
    nop

    .line 572
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method
