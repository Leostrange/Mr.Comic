.class public final Landroidx/compose/material3/SnackbarHostKt;
.super Ljava/lang/Object;
.source "SnackbarHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/SnackbarHostKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbarHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material3/SnackbarHostKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,464:1\n74#2:465\n1116#3,6:466\n1116#3,6:472\n1116#3,6:545\n1116#3,6:551\n1116#3,6:557\n1116#3,6:563\n151#4,3:478\n33#4,4:481\n154#4,2:485\n38#4:487\n156#4:488\n200#4,2:489\n33#4,4:491\n202#4,2:495\n38#4:497\n204#4:498\n33#4,6:534\n68#5,6:499\n74#5:533\n78#5:544\n78#6,11:505\n91#6:543\n456#7,8:516\n464#7,3:530\n467#7,3:540\n3737#8,6:524\n*S KotlinDebug\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material3/SnackbarHostKt\n*L\n227#1:465\n228#1:466,6\n348#1:472,6\n438#1:545,6\n439#1:551,6\n451#1:557,6\n452#1:563,6\n351#1:478,3\n351#1:481,4\n351#1:485,2\n351#1:487\n351#1:488\n356#1:489,2\n356#1:491,4\n356#1:495,2\n356#1:497\n356#1:498\n408#1:534,6\n406#1:499,6\n406#1:533\n406#1:544\n406#1:505,11\n406#1:543\n406#1:516,8\n406#1:530,3\n406#1:540,3\n406#1:524,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a:\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000b\u00a2\u0006\u0002\u0008\u000cH\u0003\u00a2\u0006\u0002\u0010\r\u001a:\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0019\u0008\u0002\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000b\u00a2\u0006\u0002\u0008\u000cH\u0007\u00a2\u0006\u0002\u0010\u0012\u001a9\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001bH\u0003\u00a2\u0006\u0002\u0010\u001c\u001a)\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0003\u00a2\u0006\u0002\u0010\u001e\u001a\u001e\u0010\u001f\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020\u00192\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000*b\u0008\u0002\u0010%\"-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00050\u001b\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u00050\u000b\u00a2\u0006\u0002\u0008\u000c2-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00050\u001b\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u00050\u000b\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006("
    }
    d2 = {
        "SnackbarFadeInMillis",
        "",
        "SnackbarFadeOutMillis",
        "SnackbarInBetweenDelayMillis",
        "FadeInFadeOutWithScale",
        "",
        "current",
        "Landroidx/compose/material3/SnackbarData;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "SnackbarHost",
        "hostState",
        "Landroidx/compose/material3/SnackbarHostState;",
        "snackbar",
        "(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "animatedOpacity",
        "Landroidx/compose/runtime/State;",
        "",
        "animation",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "visible",
        "",
        "onAnimationFinish",
        "Lkotlin/Function0;",
        "(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animatedScale",
        "(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "toMillis",
        "",
        "Landroidx/compose/material3/SnackbarDuration;",
        "hasAction",
        "accessibilityManager",
        "Landroidx/compose/ui/platform/AccessibilityManager;",
        "FadeInFadeOutTransition",
        "Lkotlin/ParameterName;",
        "name",
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
.field private static final SnackbarFadeInMillis:I = 0x96

.field private static final SnackbarFadeOutMillis:I = 0x4b

.field private static final SnackbarInBetweenDelayMillis:I


# direct methods
.method private static final FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 36
    .param p0, "current"    # Landroidx/compose/material3/SnackbarData;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarData;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SnackbarData;",
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

    .line 347
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    const v0, -0x4e7a54a0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(FadeInFadeOutWithScale)P(1,2)347@12740L48,405@15083L246:SnackbarHost.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0x6

    if-nez v2, :cond_2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v8, 0x30

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
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v8, 0x180

    if-nez v4, :cond_8

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    move v10, v1

    .end local v1    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit16 v1, v10, 0x93

    const/16 v4, 0x92

    if-ne v1, v4, :cond_a

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 416
    :cond_9
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v3

    goto/16 :goto_f

    .line 347
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 345
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 347
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_b
    move-object v1, v3

    .line 345
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 347
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.FadeInFadeOutWithScale (SnackbarHost.kt:346)"

    invoke-static {v0, v10, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_c
    const v0, -0x2bb4f512

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):SnackbarHost.kt#9igjgp"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 348
    move-object v0, v9

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "invalid$iv":Z
    const/4 v4, 0x0

    .line 472
    .local v4, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 473
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v5, v12, :cond_d

    .line 474
    const/4 v12, 0x0

    .line 348
    .local v12, "$i$a$-cache-SnackbarHostKt$FadeInFadeOutWithScale$state$1":I
    new-instance v13, Landroidx/compose/material3/FadeInFadeOutState;

    invoke-direct {v13}, Landroidx/compose/material3/FadeInFadeOutState;-><init>()V

    .line 474
    .end local v12    # "$i$a$-cache-SnackbarHostKt$FadeInFadeOutWithScale$state$1":I
    move-object v12, v13

    .line 475
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 476
    nop

    .end local v12    # "value$iv":Ljava/lang/Object;
    goto :goto_8

    .line 477
    :cond_d
    move-object v12, v5

    .line 473
    :goto_8
    nop

    .line 472
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 348
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$i$f$cache":I
    move-object v0, v12

    check-cast v0, Landroidx/compose/material3/FadeInFadeOutState;

    .local v0, "state":Landroidx/compose/material3/FadeInFadeOutState;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 349
    invoke-virtual {v0}, Landroidx/compose/material3/FadeInFadeOutState;->getCurrent()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 350
    invoke-virtual {v0, v6}, Landroidx/compose/material3/FadeInFadeOutState;->setCurrent(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v0}, Landroidx/compose/material3/FadeInFadeOutState;->getItems()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastMap$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 478
    .local v5, "$i$f$fastMap":I
    nop

    .line 479
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    .local v11, "target$iv":Ljava/util/ArrayList;
    move-object v12, v3

    .local v12, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 481
    .local v13, "$i$f$fastForEach":I
    nop

    .line 482
    const/4 v14, 0x0

    .local v14, "index$iv$iv":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    :goto_9
    if-ge v14, v15, :cond_e

    .line 483
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 484
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 485
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    .local v19, "it":Landroidx/compose/material3/FadeInFadeOutAnimationItem;
    const/16 v20, 0x0

    .line 351
    .local v20, "$i$a$-fastMap-SnackbarHostKt$FadeInFadeOutWithScale$keys$1":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Landroidx/compose/material3/SnackbarData;

    .line 485
    .end local v19    # "it":Landroidx/compose/material3/FadeInFadeOutAnimationItem;
    .end local v20    # "$i$a$-fastMap-SnackbarHostKt$FadeInFadeOutWithScale$keys$1":I
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 486
    nop

    .line 484
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 482
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_9

    .line 487
    .end local v14    # "index$iv$iv":I
    :cond_e
    nop

    .line 488
    .end local v12    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    move-object v2, v11

    check-cast v2, Ljava/util/List;

    .end local v3    # "$this$fastMap$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMap":I
    .end local v11    # "target$iv":Ljava/util/ArrayList;
    check-cast v2, Ljava/util/Collection;

    .line 351
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 352
    .local v2, "keys":Ljava/util/List;
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 353
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/material3/FadeInFadeOutState;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 356
    invoke-static {v2}, Landroidx/compose/ui/util/ListUtilsKt;->fastFilterNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastMapTo$iv":Ljava/util/List;
    invoke-virtual {v0}, Landroidx/compose/material3/FadeInFadeOutState;->getItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 489
    .local v5, "$i$f$fastMapTo":I
    nop

    .line 490
    move-object v11, v3

    .local v11, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 491
    .local v12, "$i$f$fastForEach":I
    nop

    .line 492
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    :goto_a
    if-ge v13, v14, :cond_10

    .line 493
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 494
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "item$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 495
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastMapTo$2$iv":I
    move-object/from16 v18, v3

    .end local v3    # "$this$fastMapTo$iv":Ljava/util/List;
    .local v18, "$this$fastMapTo$iv":Ljava/util/List;
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/material3/SnackbarData;

    .local v3, "key":Landroidx/compose/material3/SnackbarData;
    const/16 v19, 0x0

    .line 357
    .local v19, "$i$a$-fastMapTo-SnackbarHostKt$FadeInFadeOutWithScale$1":I
    move/from16 v20, v5

    .end local v5    # "$i$f$fastMapTo":I
    .local v20, "$i$f$fastMapTo":I
    new-instance v5, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    new-instance v8, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$1$1;

    invoke-direct {v8, v3, v6, v2, v0}, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$1$1;-><init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/material3/SnackbarData;Ljava/util/List;Landroidx/compose/material3/FadeInFadeOutState;)V

    move-object/from16 v21, v2

    .end local v2    # "keys":Ljava/util/List;
    .local v21, "keys":Ljava/util/List;
    const v2, -0x62a075c5

    const/4 v6, 0x1

    invoke-static {v9, v2, v6, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {v5, v3, v2}, Landroidx/compose/material3/FadeInFadeOutAnimationItem;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 495
    .end local v3    # "key":Landroidx/compose/material3/SnackbarData;
    .end local v19    # "$i$a$-fastMapTo-SnackbarHostKt$FadeInFadeOutWithScale$1":I
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 496
    nop

    .line 494
    .end local v16    # "item$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastMapTo$2$iv":I
    nop

    .line 492
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p0

    move/from16 v8, p4

    move-object/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v2, v21

    goto :goto_a

    .end local v18    # "$this$fastMapTo$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastMapTo":I
    .end local v21    # "keys":Ljava/util/List;
    .restart local v2    # "keys":Ljava/util/List;
    .local v3, "$this$fastMapTo$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastMapTo":I
    :cond_10
    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move/from16 v20, v5

    .line 497
    .end local v2    # "keys":Ljava/util/List;
    .end local v3    # "$this$fastMapTo$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMapTo":I
    .end local v13    # "index$iv$iv":I
    .restart local v18    # "$this$fastMapTo$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastMapTo":I
    .restart local v21    # "keys":Ljava/util/List;
    nop

    .line 498
    .end local v11    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    nop

    .end local v4    # "destination$iv":Ljava/util/Collection;
    .end local v18    # "$this$fastMapTo$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastMapTo":I
    .end local v21    # "keys":Ljava/util/List;
    :cond_11
    shr-int/lit8 v2, v10, 0x3

    and-int/lit8 v2, v2, 0xe

    .line 406
    nop

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Box":I
    const v4, 0x2bb5b5d7

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 499
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 500
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v5, 0x0

    .line 503
    .local v5, "propagateMinConstraints$iv":Z
    shr-int/lit8 v6, v2, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v6, v8

    invoke-static {v4, v5, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0x70

    .line 504
    nop

    .local v8, "$changed$iv$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 505
    const/4 v12, 0x0

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 506
    .local v13, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 508
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 515
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v8, 0x9

    and-int/lit16 v1, v1, 0x1c00

    const/16 v17, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 507
    nop

    .local v1, "$changed$iv$iv$iv":I
    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v15, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v18, 0x0

    .line 516
    .local v18, "$i$f$ReusableComposeNode":I
    move/from16 v19, v3

    .end local v3    # "$i$f$Box":I
    .local v19, "$i$f$Box":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 517
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 518
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 519
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 521
    :cond_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 523
    :goto_b
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 510
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v4

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v22, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 511
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 513
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 524
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v3

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 525
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_15

    move/from16 v25, v5

    .end local v5    # "propagateMinConstraints$iv":Z
    .local v25, "propagateMinConstraints$iv":Z
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v6

    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v26, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_c

    :cond_14
    move-object/from16 v6, v23

    goto :goto_d

    .end local v25    # "propagateMinConstraints$iv":Z
    .end local v26    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v5    # "propagateMinConstraints$iv":Z
    .restart local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_15
    move/from16 v25, v5

    move-object/from16 v26, v6

    .line 526
    .end local v5    # "propagateMinConstraints$iv":Z
    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v25    # "propagateMinConstraints$iv":Z
    .restart local v26    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 527
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 529
    :goto_d
    nop

    .line 524
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 529
    nop

    .line 514
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 523
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 530
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v3, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const v3, 0x7ab4aae9

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 532
    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v4, v9

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 533
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v6, -0x4ab8dd4f

    move/from16 v20, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v20, "$changed$iv$iv$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v4, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$FadeInFadeOutWithScale_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v21, v4

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 407
    .local v23, "$i$a$-Box-SnackbarHostKt$FadeInFadeOutWithScale$2":I
    move-object/from16 v24, v1

    .end local v1    # "$this$FadeInFadeOutWithScale_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    .local v24, "$this$FadeInFadeOutWithScale_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    const v1, -0x5fbc58b2

    move/from16 v27, v2

    .end local v2    # "$changed$iv":I
    .local v27, "$changed$iv":I
    const-string v2, "C406@15121L21:SnackbarHost.kt#uh7d8r"

    move/from16 v28, v3

    move-object/from16 v3, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$changed$iv":I
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/material3/FadeInFadeOutState;->setScope(Landroidx/compose/runtime/RecomposeScope;)V

    const v1, -0x2bb4eb9b

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, ""

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Landroidx/compose/material3/FadeInFadeOutState;->getItems()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 534
    .local v2, "$i$f$fastForEach":I
    nop

    .line 535
    const/16 v21, 0x0

    move-object/from16 p1, v0

    .end local v0    # "state":Landroidx/compose/material3/FadeInFadeOutState;
    .local v21, "index$iv":I
    .local p1, "state":Landroidx/compose/material3/FadeInFadeOutState;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v29, v2

    move/from16 v2, v21

    .end local v21    # "index$iv":I
    .local v2, "index$iv":I
    .local v29, "$i$f$fastForEach":I
    :goto_e
    if-ge v2, v0, :cond_16

    .line 536
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 537
    .local v21, "item$iv":Ljava/lang/Object;
    move-object/from16 v30, v21

    check-cast v30, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    const/16 v31, 0x0

    .line 408
    .local v31, "$i$a$-fastForEach-SnackbarHostKt$FadeInFadeOutWithScale$2$1":I
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->component1()Ljava/lang/Object;

    move-result-object v32

    move/from16 v33, v0

    move-object/from16 v0, v32

    check-cast v0, Landroidx/compose/material3/SnackbarData;

    move-object/from16 v32, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "item":Landroidx/compose/material3/SnackbarData;
    .local v32, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->component2()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    .line 409
    .local v1, "opacity":Lkotlin/jvm/functions/Function3;
    move/from16 v30, v5

    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v30, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v5, 0x33db9154

    invoke-interface {v3, v5, v0}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    const-string v5, "409@15236L63"

    invoke-static {v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 410
    new-instance v5, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$2$1$1;

    invoke-direct {v5, v7, v0}, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$2$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/SnackbarData;)V

    move-object/from16 v34, v0

    .end local v0    # "item":Landroidx/compose/material3/SnackbarData;
    .local v34, "item":Landroidx/compose/material3/SnackbarData;
    const v0, -0x43ac567f

    move/from16 v35, v6

    const/4 v6, 0x1

    .end local v6    # "$changed":I
    .local v35, "$changed":I
    invoke-static {v3, v0, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v3, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    .line 414
    nop

    .line 537
    .end local v1    # "opacity":Lkotlin/jvm/functions/Function3;
    .end local v31    # "$i$a$-fastForEach-SnackbarHostKt$FadeInFadeOutWithScale$2$1":I
    .end local v34    # "item":Landroidx/compose/material3/SnackbarData;
    nop

    .line 535
    .end local v21    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v30

    move-object/from16 v1, v32

    move/from16 v0, v33

    move/from16 v6, v35

    goto :goto_e

    .end local v30    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v32    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v35    # "$changed":I
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .restart local v6    # "$changed":I
    :cond_16
    move-object/from16 v32, v1

    move/from16 v30, v5

    move/from16 v35, v6

    .line 539
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "index$iv":I
    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v6    # "$changed":I
    .restart local v30    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .restart local v32    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v35    # "$changed":I
    nop

    .end local v29    # "$i$f$fastForEach":I
    .end local v32    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 407
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 415
    nop

    .line 533
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-Box-SnackbarHostKt$FadeInFadeOutWithScale$2":I
    .end local v24    # "$this$FadeInFadeOutWithScale_u24lambda_u245":Landroidx/compose/foundation/layout/BoxScope;
    .end local v35    # "$changed":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 532
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$changed$iv":I
    .end local v30    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 540
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 541
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 542
    nop

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v20    # "$changed$iv$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 543
    nop

    .end local v8    # "$changed$iv$iv":I
    .end local v11    # "$i$f$Layout":I
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 544
    nop

    .end local v19    # "$i$f$Box":I
    .end local v22    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v25    # "propagateMinConstraints$iv":Z
    .end local v26    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v27    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 416
    .end local p1    # "state":Landroidx/compose/material3/FadeInFadeOutState;
    :cond_17
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v8, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$3;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$3;-><init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void
.end method

.method public static final SnackbarHost(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0, "hostState"    # Landroidx/compose/material3/SnackbarHostState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "snackbar"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SnackbarData;",
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

    .line 225
    move/from16 v6, p4

    const v0, 0x1baacc01

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SnackbarHost)226@9442L7,227@9490L320,227@9454L356,237@9815L134:SnackbarHost.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v14, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v6, 0x6

    if-nez v2, :cond_2

    move-object/from16 v14, p0

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v14, p0

    :goto_1
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v6, 0x30

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
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v6, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p2

    :goto_5
    move v15, v1

    .end local v1    # "$dirty":I
    .local v15, "$dirty":I
    and-int/lit16 v1, v15, 0x93

    const/16 v7, 0x92

    if-ne v1, v7, :cond_a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 243
    :cond_9
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v7, v3

    move-object v8, v5

    goto/16 :goto_b

    .line 225
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 223
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 225
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_b
    move-object v1, v3

    .line 223
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    if-eqz v4, :cond_c

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;

    invoke-virtual {v2}, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function3;

    move-result-object v2

    .end local p2    # "snackbar":Lkotlin/jvm/functions/Function3;
    .local v2, "snackbar":Lkotlin/jvm/functions/Function3;
    goto :goto_8

    .end local v2    # "snackbar":Lkotlin/jvm/functions/Function3;
    .restart local p2    # "snackbar":Lkotlin/jvm/functions/Function3;
    :cond_c
    move-object v2, v5

    .end local p2    # "snackbar":Lkotlin/jvm/functions/Function3;
    .restart local v2    # "snackbar":Lkotlin/jvm/functions/Function3;
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 225
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.SnackbarHost (SnackbarHost.kt:224)"

    invoke-static {v0, v15, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 226
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SnackbarHostState;->getCurrentSnackbarData()Landroidx/compose/material3/SnackbarData;

    move-result-object v0

    .line 227
    .local v0, "currentSnackbarData":Landroidx/compose/material3/SnackbarData;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalAccessibilityManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .line 465
    .local v5, "$i$f$getCurrent":I
    const v7, 0x789c5f52

    const-string v8, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v13, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 227
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$getCurrent":I
    move-object v3, v7

    check-cast v3, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 228
    .local v3, "accessibilityManager":Landroidx/compose/ui/platform/AccessibilityManager;
    const v4, -0x5384869e

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):SnackbarHost.kt#9igjgp"

    invoke-static {v13, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .local v4, "invalid$iv":Z
    move-object v5, v13

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 466
    .local v7, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 467
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_f

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_e

    goto :goto_9

    .line 471
    :cond_e
    move-object v10, v8

    goto :goto_a

    .line 468
    :cond_f
    :goto_9
    const/4 v10, 0x0

    .line 228
    .local v10, "$i$a$-cache-SnackbarHostKt$SnackbarHost$1":I
    new-instance v11, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v3, v12}, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;-><init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 468
    .end local v10    # "$i$a$-cache-SnackbarHostKt$SnackbarHost$1":I
    move-object v10, v11

    .line 469
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    nop

    .line 467
    .end local v10    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 466
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 228
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x0

    invoke-static {v0, v10, v13, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SnackbarHostState;->getCurrentSnackbarData()Landroidx/compose/material3/SnackbarData;

    move-result-object v7

    .line 240
    nop

    .line 241
    and-int/lit8 v4, v15, 0x70

    and-int/lit16 v5, v15, 0x380

    or-int v11, v4, v5

    const/4 v12, 0x0

    .line 238
    move-object v8, v1

    move-object v9, v2

    move-object v10, v13

    invoke-static/range {v7 .. v12}, Landroidx/compose/material3/SnackbarHostKt;->FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 243
    .end local v0    # "currentSnackbarData":Landroidx/compose/material3/SnackbarData;
    .end local v3    # "accessibilityManager":Landroidx/compose/ui/platform/AccessibilityManager;
    :cond_10
    move-object v7, v1

    move-object v8, v2

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "snackbar":Lkotlin/jvm/functions/Function3;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "snackbar":Lkotlin/jvm/functions/Function3;
    :goto_b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_11

    new-instance v10, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$2;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method public static final synthetic access$FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "current"    # Landroidx/compose/material3/SnackbarData;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .param p5, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/SnackbarHostKt;->FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$animatedOpacity(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 1
    .param p0, "animation"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p1, "visible"    # Z
    .param p2, "onAnimationFinish"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .param p5, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/SnackbarHostKt;->animatedOpacity(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$animatedScale(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 1
    .param p0, "animation"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p1, "visible"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SnackbarHostKt;->animatedScale(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    return-object v0
.end method

.method private static final animatedOpacity(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 21
    .param p0, "animation"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p1, "visible"    # Z
    .param p2, "onAnimationFinish"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    const v0, 0x5558e4ee

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animatedOpacity)P(!1,2)437@15977L49,438@16055L145,438@16031L169:SnackbarHost.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_0

    .line 436
    sget-object v1, Landroidx/compose/material3/SnackbarHostKt$animatedOpacity$1;->INSTANCE:Landroidx/compose/material3/SnackbarHostKt$animatedOpacity$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v9, v1

    .end local p2    # "onAnimationFinish":Lkotlin/jvm/functions/Function0;
    .local v1, "onAnimationFinish":Lkotlin/jvm/functions/Function0;
    goto :goto_0

    .line 0
    .end local v1    # "onAnimationFinish":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "onAnimationFinish":Lkotlin/jvm/functions/Function0;
    :cond_0
    move-object/from16 v9, p2

    .line 436
    .end local p2    # "onAnimationFinish":Lkotlin/jvm/functions/Function0;
    .local v9, "onAnimationFinish":Lkotlin/jvm/functions/Function0;
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.animatedOpacity (SnackbarHost.kt:436)"

    invoke-static {v0, v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const v0, 0x67246e44

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):SnackbarHost.kt#9igjgp"

    invoke-static {v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 438
    move-object/from16 v1, p3

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "invalid$iv":Z
    const/4 v4, 0x0

    .line 545
    .local v4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 546
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v5, v11, :cond_3

    .line 547
    const/4 v11, 0x0

    .line 438
    .local v11, "$i$a$-cache-SnackbarHostKt$animatedOpacity$alpha$1":I
    const/4 v12, 0x0

    if-nez v6, :cond_2

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v13, v12

    :goto_1
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static {v13, v12, v14, v15}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v11

    .line 547
    .end local v11    # "$i$a$-cache-SnackbarHostKt$animatedOpacity$alpha$1":I
    nop

    .line 548
    .local v11, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 549
    nop

    .end local v11    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 550
    :cond_3
    move-object v11, v5

    .line 546
    :goto_2
    nop

    .line 545
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 438
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$i$f$cache":I
    move-object v10, v11

    check-cast v10, Landroidx/compose/animation/core/Animatable;

    .local v10, "alpha":Landroidx/compose/animation/core/Animatable;
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 439
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const v1, 0x67246e92

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v1, v8, 0x70

    xor-int/lit8 v1, v1, 0x30

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-le v1, v4, :cond_4

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    and-int/lit8 v1, v8, 0x30

    if-ne v1, v4, :cond_6

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v12, p0

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v1, v8, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v4, 0x100

    if-le v1, v4, :cond_7

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit16 v1, v8, 0x180

    if-ne v1, v4, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object/from16 v13, p3

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v14, v0

    .end local v0    # "invalid$iv":Z
    .local v14, "invalid$iv":Z
    const/4 v15, 0x0

    .line 551
    .local v15, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 552
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v14, :cond_b

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_a

    goto :goto_4

    .line 556
    :cond_a
    move-object/from16 v20, v5

    goto :goto_5

    .line 553
    :cond_b
    :goto_4
    const/16 v17, 0x0

    .line 439
    .local v17, "$i$a$-cache-SnackbarHostKt$animatedOpacity$2":I
    new-instance v18, Landroidx/compose/material3/SnackbarHostKt$animatedOpacity$2$1;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v10

    move/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v20, v5

    .end local v5    # "it$iv":Ljava/lang/Object;
    .local v20, "it$iv":Ljava/lang/Object;
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SnackbarHostKt$animatedOpacity$2$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v18, Lkotlin/jvm/functions/Function2;

    .line 553
    .end local v17    # "$i$a$-cache-SnackbarHostKt$animatedOpacity$2":I
    move-object/from16 v5, v18

    .line 554
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 555
    nop

    .line 552
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 551
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    nop

    .line 439
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v0, v8, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v11, v5, v7, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 446
    invoke-virtual {v10}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method private static final animatedScale(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 12
    .param p0, "animation"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p1, "visible"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const v0, 0x753b22a1

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animatedScale)450@16352L51,451@16432L119,451@16408L143:SnackbarHost.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.animatedScale (SnackbarHost.kt:449)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, -0x5809024

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):SnackbarHost.kt#9igjgp"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 451
    move-object v1, p2

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "invalid$iv":Z
    const/4 v4, 0x0

    .line 557
    .local v4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 558
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-ne v5, v7, :cond_2

    .line 559
    const/4 v7, 0x0

    .line 451
    .local v7, "$i$a$-cache-SnackbarHostKt$animatedScale$scale$1":I
    if-nez p1, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v9, 0x3f4ccccd    # 0.8f

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v9, v10, v11, v8}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v7

    .line 559
    .end local v7    # "$i$a$-cache-SnackbarHostKt$animatedScale$scale$1":I
    nop

    .line 560
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 561
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 562
    :cond_2
    move-object v7, v5

    .line 558
    :goto_1
    nop

    .line 557
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 451
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$i$f$cache":I
    move-object v1, v7

    check-cast v1, Landroidx/compose/animation/core/Animatable;

    .local v1, "scale":Landroidx/compose/animation/core/Animatable;
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 452
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, -0x5808fd4

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v4, p3, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-le v4, v5, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    and-int/lit8 v4, p3, 0x30

    if-ne v4, v5, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    or-int/2addr v0, v2

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 563
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 564
    .restart local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_7

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_6

    goto :goto_2

    .line 568
    :cond_6
    move-object v7, v5

    goto :goto_3

    .line 565
    :cond_7
    :goto_2
    const/4 v7, 0x0

    .line 452
    .local v7, "$i$a$-cache-SnackbarHostKt$animatedScale$1":I
    new-instance v9, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    invoke-direct {v9, v1, p1, p0, v8}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 565
    .end local v7    # "$i$a$-cache-SnackbarHostKt$animatedScale$1":I
    move-object v7, v9

    .line 566
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 567
    nop

    .line 564
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 563
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 452
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v3, v7, p2, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 458
    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final toMillis(Landroidx/compose/material3/SnackbarDuration;ZLandroidx/compose/ui/platform/AccessibilityManager;)J
    .locals 8
    .param p0, "$this$toMillis"    # Landroidx/compose/material3/SnackbarDuration;
    .param p1, "hasAction"    # Z
    .param p2, "accessibilityManager"    # Landroidx/compose/ui/platform/AccessibilityManager;

    .line 324
    sget-object v0, Landroidx/compose/material3/SnackbarHostKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarDuration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-wide/16 v0, 0xfa0

    goto :goto_0

    .line 326
    :pswitch_1
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 325
    :pswitch_2
    const-wide v0, 0x7fffffffffffffffL

    .line 324
    :goto_0
    nop

    .line 329
    .local v0, "original":J
    if-nez p2, :cond_0

    .line 330
    return-wide v0

    .line 332
    :cond_0
    nop

    .line 333
    nop

    .line 334
    const/4 v5, 0x1

    .line 335
    const/4 v6, 0x1

    .line 336
    nop

    .line 332
    move-object v2, p2

    move-wide v3, v0

    move v7, p1

    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/platform/AccessibilityManager;->calculateRecommendedTimeoutMillis(JZZZ)J

    move-result-wide v2

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
