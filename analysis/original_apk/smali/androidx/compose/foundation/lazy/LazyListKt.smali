.class public final Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "LazyList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,353:1\n487#2,4:354\n491#2,2:362\n495#2:368\n25#3:358\n83#3,3:371\n1116#4,3:359\n1119#4,3:365\n1116#4,6:374\n487#5:364\n74#6:369\n74#6:370\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt\n*L\n84#1:354,4\n84#1:362,2\n84#1:368\n84#1:358\n168#1:371,3\n84#1:359,3\n84#1:365,3\n168#1:374,6\n84#1:364\n121#1:369\n129#1:370\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0098\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0019\u00a2\u0006\u0002\u0008\u001bH\u0001\u00a2\u0006\u0002\u0010\u001c\u001a\u008a\u0001\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001e\u00a2\u0006\u0002\u0008\u001b2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0003\u00a2\u0006\u0002\u0010%\u00a8\u0006&"
    }
    d2 = {
        "LazyList",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "isVertical",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "beyondBoundsItemCount",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "rememberLazyListMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "itemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;",
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
.method public static final LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "reverseLayout"    # Z
    .param p4, "isVertical"    # Z
    .param p5, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p6, "userScrollEnabled"    # Z
    .param p7, "beyondBoundsItemCount"    # I
    .param p8, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p11, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p12, "content"    # Lkotlin/jvm/functions/Function1;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
    .param p15, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "ZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 80
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p3

    move/from16 v12, p4

    move-object/from16 v11, p12

    move/from16 v10, p14

    move/from16 v9, p15

    move/from16 v8, p16

    const v0, 0x25001c13

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(LazyList)P(7,9,2,8,6,3,10!1,4,12,11,5)80@3813L50,82@3889L48,83@3954L24,86@4037L292,99@4377L18,105@4632L277,114@5029L153,120@5345L7,113@4973L481,128@5678L7,101@4487L1676:LazyList.kt#428nma"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p14

    .local v1, "$dirty":I
    move/from16 v2, p15

    .local v2, "$dirty1":I
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0xe

    if-nez v3, :cond_2

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v8, 0x2

    const/16 v16, 0x10

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    move/from16 v3, v16

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v8, 0x4

    const/16 v17, 0x100

    const/16 v18, 0x80

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move/from16 v19, v17

    goto :goto_4

    :cond_7
    move/from16 v19, v18

    :goto_4
    or-int v1, v1, v19

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v19, v8, 0x8

    if-eqz v19, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v10, 0x1c00

    if-nez v4, :cond_b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    and-int/lit8 v4, v8, 0x10

    const v19, 0xe000

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    and-int v4, v10, v19

    if-nez v4, :cond_e

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x4000

    goto :goto_8

    :cond_d
    const/16 v4, 0x2000

    :goto_8
    or-int/2addr v1, v4

    :cond_e
    :goto_9
    and-int/lit8 v4, v8, 0x20

    const/high16 v20, 0x70000

    if-eqz v4, :cond_f

    const/high16 v4, 0x30000

    or-int/2addr v1, v4

    move-object/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v4, v10, v20

    if-nez v4, :cond_11

    move-object/from16 v4, p5

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v21, 0x10000

    :goto_a
    or-int v1, v1, v21

    goto :goto_b

    :cond_11
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v21, v8, 0x40

    const/high16 v22, 0x380000

    if-eqz v21, :cond_12

    const/high16 v21, 0x180000

    or-int v1, v1, v21

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v21, v10, v22

    if-nez v21, :cond_14

    move/from16 v0, p6

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v23, 0x80000

    :goto_c
    or-int v1, v1, v23

    goto :goto_d

    :cond_14
    move/from16 v0, p6

    :goto_d
    and-int/lit16 v5, v8, 0x80

    const/high16 v24, 0x1c00000

    if-eqz v5, :cond_15

    const/high16 v25, 0xc00000

    or-int v1, v1, v25

    move/from16 v6, p7

    goto :goto_f

    :cond_15
    and-int v25, v10, v24

    if-nez v25, :cond_17

    move/from16 v6, p7

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v26

    if-eqz v26, :cond_16

    const/high16 v26, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v26, 0x400000

    :goto_e
    or-int v1, v1, v26

    goto :goto_f

    :cond_17
    move/from16 v6, p7

    :goto_f
    and-int/lit16 v0, v8, 0x100

    const/high16 v26, 0xe000000

    if-eqz v0, :cond_18

    const/high16 v27, 0x6000000

    or-int v1, v1, v27

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v27, v10, v26

    if-nez v27, :cond_1a

    move-object/from16 v3, p8

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    const/high16 v27, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v27, 0x2000000

    :goto_10
    or-int v1, v1, v27

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p8

    :goto_11
    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_1b

    const/high16 v27, 0x30000000

    or-int v1, v1, v27

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1b
    const/high16 v27, 0x70000000

    and-int v27, v10, v27

    if-nez v27, :cond_1d

    move-object/from16 v4, p9

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/high16 v27, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v27, 0x10000000

    :goto_12
    or-int v1, v1, v27

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p9

    :goto_13
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v6, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v27, v9, 0xe

    if-nez v27, :cond_20

    move-object/from16 v6, p10

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f

    const/16 v23, 0x4

    goto :goto_14

    :cond_1f
    const/16 v23, 0x2

    :goto_14
    or-int v2, v2, v23

    goto :goto_15

    :cond_20
    move-object/from16 v6, p10

    :goto_15
    and-int/lit16 v6, v8, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v10, p11

    goto :goto_16

    :cond_21
    and-int/lit8 v23, v9, 0x70

    if-nez v23, :cond_23

    move-object/from16 v10, p11

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v16, 0x20

    :cond_22
    or-int v2, v2, v16

    goto :goto_16

    :cond_23
    move-object/from16 v10, p11

    :goto_16
    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_24

    or-int/lit16 v2, v2, 0x180

    goto :goto_18

    :cond_24
    and-int/lit16 v10, v9, 0x380

    if-nez v10, :cond_26

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    goto :goto_17

    :cond_25
    move/from16 v17, v18

    :goto_17
    or-int v2, v2, v17

    :cond_26
    :goto_18
    move v10, v2

    .end local v2    # "$dirty1":I
    .local v10, "$dirty1":I
    const v2, 0x5b6db6db

    and-int/2addr v2, v1

    const v8, 0x12492492

    if-ne v2, v8, :cond_28

    and-int/lit16 v2, v10, 0x2db

    const/16 v8, 0x92

    if-ne v2, v8, :cond_28

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_19

    .line 143
    :cond_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v20, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v32, p11

    move/from16 v35, v1

    move-object v12, v7

    move/from16 v38, v10

    goto/16 :goto_21

    .line 80
    :cond_28
    :goto_19
    if-eqz v5, :cond_29

    .line 69
    const/4 v2, 0x0

    move v8, v2

    .end local p7    # "beyondBoundsItemCount":I
    .local v2, "beyondBoundsItemCount":I
    goto :goto_1a

    .line 80
    .end local v2    # "beyondBoundsItemCount":I
    .restart local p7    # "beyondBoundsItemCount":I
    :cond_29
    move/from16 v8, p7

    .line 69
    .end local p7    # "beyondBoundsItemCount":I
    .local v8, "beyondBoundsItemCount":I
    :goto_1a
    if-eqz v0, :cond_2a

    .line 71
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .end local p8    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v0, "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    goto :goto_1b

    .line 69
    .end local v0    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local p8    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_2a
    move-object/from16 v16, p8

    .line 71
    .end local p8    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v16, "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_1b
    if-eqz v3, :cond_2b

    .line 73
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .end local p9    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v0, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_1c

    .line 71
    .end local v0    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p9    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_2b
    move-object/from16 v17, p9

    .line 73
    .end local p9    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v17, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_1c
    if-eqz v4, :cond_2c

    .line 75
    const/4 v0, 0x0

    move-object/from16 v18, v0

    .end local p10    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v0, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    goto :goto_1d

    .line 73
    .end local v0    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .restart local p10    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :cond_2c
    move-object/from16 v18, p10

    .line 75
    .end local p10    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v18, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :goto_1d
    if-eqz v6, :cond_2d

    .line 77
    const/4 v0, 0x0

    move-object/from16 v32, v0

    .end local p11    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v0, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_1e

    .line 75
    .end local v0    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p11    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_2d
    move-object/from16 v32, p11

    .line 77
    .end local p11    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v32, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_1e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 80
    const-string/jumbo v0, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:79)"

    const v2, 0x25001c13

    invoke-static {v2, v1, v10, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 81
    :cond_2e
    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v2, v10, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    invoke-static {v14, v11, v7, v0}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->rememberLazyListItemProviderLambda(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v33

    .line 83
    .local v33, "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    invoke-static {v14, v12, v7, v0}, Landroidx/compose/foundation/lazy/LazyListSemanticsKt;->rememberLazyListSemanticState(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v34

    .line 84
    .local v34, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v3, 0x2e20b340

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 354
    nop

    .line 356
    move-object v3, v7

    .line 357
    .local v3, "composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .local v4, "$changed$iv$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, -0x1d58f75c

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 358
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv$iv":Z
    move-object/from16 p7, v7

    .local p7, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 359
    .local v21, "$i$f$cache":I
    move/from16 p8, v0

    .end local v0    # "$changed$iv":I
    .local p8, "$changed$iv":I
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 360
    .local v23, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p9, v2

    .end local v2    # "$i$f$rememberCoroutineScope":I
    .local p9, "$i$f$rememberCoroutineScope":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2f

    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 363
    const/16 v25, 0x0

    .line 364
    .local v25, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v25, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 363
    .end local v25    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p10, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local p10, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v25

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 362
    move/from16 p11, v2

    .end local v2    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local p11, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 361
    .end local p11    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v2

    .line 365
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, p7

    .end local p7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1f

    .line 367
    .end local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p10    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_2f
    move-object/from16 v2, p7

    move-object/from16 p10, v0

    .line 360
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p10    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_1f
    nop

    .line 359
    .end local v23    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local p10    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 358
    .end local v2    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "invalid$iv$iv$iv":Z
    .end local v21    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 357
    .end local v4    # "$changed$iv$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 368
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v3    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local p8    # "$changed$iv":I
    .end local p9    # "$i$f$rememberCoroutineScope":I
    move-object v6, v2

    .line 85
    .local v6, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-virtual {v14, v6}, Landroidx/compose/foundation/lazy/LazyListState;->setCoroutineScope$foundation_release(Lkotlinx/coroutines/CoroutineScope;)V

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    and-int/lit8 v0, v1, 0x70

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    and-int v2, v1, v19

    or-int/2addr v0, v2

    shr-int/lit8 v2, v1, 0x6

    and-int v2, v2, v20

    or-int/2addr v0, v2

    shr-int/lit8 v2, v1, 0x6

    and-int v2, v2, v22

    or-int/2addr v0, v2

    shl-int/lit8 v2, v10, 0x15

    and-int v2, v2, v24

    or-int/2addr v0, v2

    shl-int/lit8 v2, v10, 0x15

    and-int v2, v2, v26

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v2, v1

    or-int v21, v0, v2

    const/16 v23, 0x0

    .line 87
    move-object/from16 v0, v33

    move v5, v1

    .end local v1    # "$dirty":I
    .local v5, "$dirty":I
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v35, v5

    .end local v5    # "$dirty":I
    .local v35, "$dirty":I
    move v5, v8

    move-object/from16 v36, v6

    .end local v6    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v36, "scope":Lkotlinx/coroutines/CoroutineScope;
    move-object/from16 v6, v16

    move-object/from16 p7, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local p7, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v7, v18

    move/from16 v37, v8

    .end local v8    # "beyondBoundsItemCount":I
    .local v37, "beyondBoundsItemCount":I
    move-object/from16 v8, v32

    move-object/from16 v9, v17

    move/from16 v38, v10

    .end local v10    # "$dirty1":I
    .local v38, "$dirty1":I
    move-object/from16 v10, p7

    move/from16 v11, v21

    move/from16 v12, v23

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .line 100
    .local v9, "measurePolicy":Lkotlin/jvm/functions/Function2;
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v8, 0x6

    move-object/from16 v12, p7

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual {v0, v12, v8}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v10

    .line 101
    .local v10, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    if-eqz p4, :cond_30

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_20

    :cond_30
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_20
    move-object v11, v0

    .line 103
    .local v11, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    nop

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {v15, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    move/from16 v7, v35

    .end local v35    # "$dirty":I
    .local v7, "$dirty":I
    shr-int/lit8 v1, v7, 0x6

    and-int v1, v1, v19

    shl-int/lit8 v2, v7, 0x6

    and-int v2, v2, v20

    or-int v19, v1, v2

    .line 106
    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object v3, v11

    move/from16 v4, p6

    move/from16 v5, p3

    move-object v6, v12

    move v8, v7

    .end local v7    # "$dirty":I
    .local v8, "$dirty":I
    move/from16 v7, v19

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 113
    invoke-static {v0, v11}, Landroidx/compose/foundation/ClipScrollableContainerKt;->clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 116
    nop

    .line 117
    shr-int/lit8 v1, v8, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v8, 0x12

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    .line 115
    move/from16 v7, v37

    .end local v37    # "beyondBoundsItemCount":I
    .local v7, "beyondBoundsItemCount":I
    invoke-static {v14, v7, v12, v1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierKt;->rememberLazyListBeyondBoundsState(Landroidx/compose/foundation/lazy/LazyListState;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    move-result-object v1

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v2

    .line 120
    nop

    .line 121
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .line 369
    .local v5, "$i$f$getCurrent":I
    const v6, 0x789c5f52

    move/from16 p8, v4

    .end local v4    # "$changed$iv":I
    .restart local p8    # "$changed$iv":I
    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v6, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$i$f$getCurrent":I
    .end local p8    # "$changed$iv":I
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 122
    nop

    .line 123
    sget v3, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    const/4 v5, 0x6

    shl-int/2addr v3, v5

    and-int/lit16 v5, v8, 0x1c00

    or-int/2addr v3, v5

    and-int v5, v8, v22

    or-int v19, v3, v5

    .line 114
    move/from16 v3, p3

    move-object v5, v11

    move/from16 v6, p6

    move/from16 v20, v7

    .end local v7    # "beyondBoundsItemCount":I
    .local v20, "beyondBoundsItemCount":I
    move-object v7, v12

    move/from16 v35, v8

    .end local v8    # "$dirty":I
    .restart local v35    # "$dirty":I
    move/from16 v8, v19

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 125
    invoke-static {v0, v10}, Landroidx/compose/foundation/OverscrollKt;->overscroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 128
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 129
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 370
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 130
    nop

    .line 131
    nop

    .line 128
    invoke-virtual {v0, v4, v11, v13}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v26

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v28

    .line 125
    nop

    .line 135
    move-object/from16 v22, v14

    check-cast v22, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 127
    nop

    .line 136
    nop

    .line 137
    nop

    .line 128
    nop

    .line 134
    nop

    .line 133
    nop

    .line 126
    const/16 v29, 0x0

    const/16 v30, 0x80

    const/16 v31, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, v10

    move/from16 v25, p6

    move-object/from16 v27, p5

    invoke-static/range {v21 .. v31}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v3

    .line 141
    nop

    .line 126
    nop

    .line 139
    nop

    .line 140
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 102
    move-object/from16 v1, v33

    move-object v4, v9

    move-object v5, v12

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 143
    .end local v9    # "measurePolicy":Lkotlin/jvm/functions/Function2;
    .end local v10    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .end local v11    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .end local v33    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .end local v34    # "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .end local v36    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_31
    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    .end local v16    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v17, "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v18, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v19, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :goto_21
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_32

    new-instance v21, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v20

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v39, v11

    move-object/from16 v11, v19

    move-object/from16 v22, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, v32

    move-object/from16 v13, p12

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v39

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_22

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_32
    move-object/from16 v22, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_22
    return-void
.end method

.method private static final rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
    .locals 25
    .param p0, "itemProviderLambda"    # Lkotlin/jvm/functions/Function0;
    .param p1, "state"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "reverseLayout"    # Z
    .param p4, "isVertical"    # Z
    .param p5, "beyondBoundsItemCount"    # I
    .param p6, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p7, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p8, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p10

    move/from16 v1, p12

    const v2, 0xaeabee2

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberLazyListMeasurePolicy)P(5,7,1,6,4!2,8)167@7348L7990:LazyList.kt#428nma"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_0

    .line 161
    const/4 v3, 0x0

    .end local p6    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v3, "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    goto :goto_0

    .line 0
    .end local v3    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local p6    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_0
    move-object/from16 v3, p6

    .line 161
    .end local p6    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v3    # "horizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_0
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_1

    .line 163
    const/4 v4, 0x0

    move-object v15, v4

    .end local p7    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v4, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    goto :goto_1

    .line 161
    .end local v4    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .restart local p7    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :cond_1
    move-object/from16 v15, p7

    .line 163
    .end local p7    # "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v15, "verticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :goto_1
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_2

    .line 165
    const/4 v4, 0x0

    move-object/from16 v16, v4

    .end local p8    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_2

    .line 163
    .end local v4    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p8    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_2
    move-object/from16 v16, p8

    .line 165
    .end local p8    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v16, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_2
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 167
    const/4 v1, 0x0

    .end local p9    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v1, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_3

    .line 165
    .end local v1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p9    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_3
    move-object/from16 v1, p9

    .line 167
    .end local p9    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.foundation.lazy.rememberLazyListMeasurePolicy (LazyList.kt:167)"

    move/from16 v14, p11

    invoke-static {v2, v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_4

    .line 167
    :cond_4
    move/from16 v14, p11

    .line 169
    :goto_4
    nop

    .line 170
    nop

    .line 169
    nop

    .line 171
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 169
    nop

    .line 172
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 169
    nop

    .line 173
    nop

    .line 169
    nop

    .line 174
    nop

    .line 169
    nop

    .line 175
    nop

    .line 169
    nop

    .line 176
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v8, v3

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v11, v1

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 169
    nop

    .line 168
    const/16 v4, 0x8

    move/from16 v17, v4

    .local v2, "keys$iv":[Ljava/lang/Object;
    .local v17, "$changed$iv":I
    const/16 v18, 0x0

    .local v18, "$i$f$remember":I
    const v4, -0x21de6e89

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 371
    const/4 v4, 0x0

    .line 372
    .local v4, "invalid$iv":Z
    array-length v5, v2

    const/4 v6, 0x0

    move/from16 v19, v4

    .end local v4    # "invalid$iv":Z
    .local v19, "invalid$iv":Z
    :goto_5
    if-ge v6, v5, :cond_5

    aget-object v4, v2, v6

    .local v4, "key$iv":Ljava/lang/Object;
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int v19, v19, v7

    .end local v4    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 373
    :cond_5
    move-object/from16 v13, p10

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 374
    .local v20, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 375
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v19, :cond_7

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v12, v4, :cond_6

    goto :goto_6

    .line 379
    :cond_6
    move-object/from16 v24, v12

    move-object v0, v13

    goto :goto_7

    .line 376
    :cond_7
    :goto_6
    const/16 v22, 0x0

    .line 178
    .local v22, "$i$a$-remember-LazyListKt$rememberLazyListMeasurePolicy$1":I
    new-instance v23, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object/from16 v4, v23

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p0

    move-object v10, v1

    move-object/from16 v11, v16

    move-object/from16 v24, v12

    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .local v24, "it$iv$iv":Ljava/lang/Object;
    move/from16 v12, p5

    move-object v0, v13

    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move-object v13, v3

    move-object v14, v15

    invoke-direct/range {v4 .. v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V

    check-cast v23, Lkotlin/jvm/functions/Function2;

    .line 376
    .end local v22    # "$i$a$-remember-LazyListKt$rememberLazyListMeasurePolicy$1":I
    move-object/from16 v12, v23

    .line 377
    .local v12, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 378
    nop

    .line 375
    .end local v12    # "value$iv$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 374
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v24    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 373
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache":I
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 168
    .end local v2    # "keys$iv":[Ljava/lang/Object;
    .end local v17    # "$changed$iv":I
    .end local v18    # "$i$f$remember":I
    .end local v19    # "invalid$iv":Z
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v12
.end method
