.class public final Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "Crossfade.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfade.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,147:1\n25#2:148\n25#2:156\n456#2,8:199\n464#2,3:213\n467#2,3:223\n1116#3,3:149\n1119#3,3:153\n1116#3,6:157\n1116#3,6:163\n1#4:152\n350#5,7:169\n33#6,6:176\n33#6,6:217\n68#7,6:182\n74#7:216\n78#7:227\n79#8,11:188\n92#8:226\n3737#9,6:207\n*S KotlinDebug\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt\n*L\n104#1:148\n105#1:156\n139#1:199,8\n139#1:213,3\n139#1:223,3\n104#1:149,3\n104#1:153,3\n105#1:157,6\n112#1:163,6\n118#1:169,7\n127#1:176,6\n140#1:217,6\n139#1:182,6\n139#1:216\n139#1:227\n139#1:188,11\n139#1:226\n139#1:207,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001aN\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\n\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0002\u0010\u000c\u001aX\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\n\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u0086\u0001\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00102\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072%\u0008\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00140\n2&\u0010\t\u001a\"\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0003\u0012\u0004\u0012\u00020\u00010\n\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016\u00b2\u0006\u0010\u0010\u0017\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010\u0002X\u008a\u0084\u0002"
    }
    d2 = {
        "Crossfade",
        "",
        "T",
        "targetState",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "label",
        "",
        "(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "Landroidx/compose/animation/core/Transition;",
        "contentKey",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "animation_release",
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


# direct methods
.method public static final Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 35
    .param p0, "$this$Crossfade"    # Landroidx/compose/animation/core/Transition;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "contentKey"    # Lkotlin/jvm/functions/Function1;
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 103
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move/from16 v10, p6

    const v0, 0x2878cc2f

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Crossfade)P(3!1,2)103@4375L64,104@4461L66,138@5750L159:Crossfade.kt#xbi5r1"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    const/high16 v2, -0x80000000

    and-int v2, p7, v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v10, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, p7, 0x2

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    and-int/lit8 v6, p7, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v10, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x800

    goto :goto_4

    :cond_8
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v1, v12

    goto :goto_5

    :cond_9
    move-object/from16 v7, p3

    :goto_5
    and-int/lit8 v12, p7, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v1, v1, 0x6000

    goto :goto_7

    :cond_a
    const v12, 0xe000

    and-int/2addr v12, v10

    if-nez v12, :cond_c

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x4000

    goto :goto_6

    :cond_b
    const/16 v12, 0x2000

    :goto_6
    or-int/2addr v1, v12

    :cond_c
    :goto_7
    move v12, v1

    .end local v1    # "$dirty":I
    .local v12, "$dirty":I
    if-ne v5, v3, :cond_e

    const v1, 0xb6db

    and-int/2addr v1, v12

    const/16 v3, 0x2492

    if-ne v1, v3, :cond_e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    .line 146
    :cond_d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v18, p2

    move-object/from16 v20, v4

    move-object/from16 v34, v7

    goto/16 :goto_1a

    .line 103
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 99
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 103
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_f
    move-object v1, v4

    .line 99
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    const/4 v2, 0x0

    if-eqz v5, :cond_10

    .line 100
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v2, v4, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v3, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    goto :goto_a

    .line 99
    .end local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_10
    move-object/from16 v3, p2

    .line 100
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_a
    if-eqz v6, :cond_11

    .line 101
    sget-object v4, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .end local p3    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v4, "contentKey":Lkotlin/jvm/functions/Function1;
    goto :goto_b

    .line 100
    .end local v4    # "contentKey":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_11
    move-object v4, v7

    .line 101
    .end local p3    # "contentKey":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "contentKey":Lkotlin/jvm/functions/Function1;
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_12

    .line 103
    const-string/jumbo v5, "androidx.compose.animation.Crossfade (Crossfade.kt:102)"

    invoke-static {v0, v12, v6, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_12
    nop

    .line 104
    move v0, v2

    .local v0, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v7, -0x1d58f75c

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 148
    const/4 v14, 0x0

    .local v14, "invalid$iv$iv":Z
    move-object v15, v11

    .local v15, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 149
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 150
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_13

    .line 151
    const/4 v7, 0x0

    .line 104
    .local v7, "$i$a$-remember-CrossfadeKt$Crossfade$currentlyVisible$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v18

    move-object/from16 p3, v18

    .line 152
    .local p3, "$this$Crossfade_u24lambda_u241_u24lambda_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/16 v19, 0x0

    .line 104
    .local v19, "$i$a$-apply-CrossfadeKt$Crossfade$currentlyVisible$1$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    move/from16 v20, v0

    move-object/from16 v0, p3

    .end local p3    # "$this$Crossfade_u24lambda_u241_u24lambda_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v0, "$this$Crossfade_u24lambda_u241_u24lambda_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v20, "$changed$iv":I
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v0    # "$this$Crossfade_u24lambda_u241_u24lambda_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v7    # "$i$a$-remember-CrossfadeKt$Crossfade$currentlyVisible$1":I
    .end local v19    # "$i$a$-apply-CrossfadeKt$Crossfade$currentlyVisible$1$1":I
    move-object/from16 v0, v18

    .line 153
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 154
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_c

    .line 155
    .end local v20    # "$changed$iv":I
    .local v0, "$changed$iv":I
    :cond_13
    move/from16 v20, v0

    .end local v0    # "$changed$iv":I
    .restart local v20    # "$changed$iv":I
    move-object v0, v6

    .line 150
    :goto_c
    nop

    .line 149
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 148
    .end local v14    # "invalid$iv$iv":Z
    .end local v15    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 104
    .end local v5    # "$i$f$remember":I
    .end local v20    # "$changed$iv":I
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 105
    .local v0, "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v2, 0x0

    move v5, v2

    .local v5, "$changed$iv":I
    const/4 v2, 0x0

    const v6, -0x1d58f75c

    .local v2, "$i$f$remember":I
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 156
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv":Z
    move-object v7, v11

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 157
    .local v13, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 158
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v2

    .end local v2    # "$i$f$remember":I
    .local p2, "$i$f$remember":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_14

    .line 159
    const/4 v2, 0x0

    .line 106
    .local v2, "$i$a$-remember-CrossfadeKt$Crossfade$contentMap$1":I
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v16, Ljava/util/Map;

    .line 159
    .end local v2    # "$i$a$-remember-CrossfadeKt$Crossfade$contentMap$1":I
    move-object/from16 v2, v16

    .line 160
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 161
    nop

    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_d

    .line 162
    :cond_14
    move-object v2, v14

    .line 158
    :goto_d
    nop

    .line 157
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 156
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 105
    .end local v5    # "$changed$iv":I
    .end local p2    # "$i$f$remember":I
    check-cast v2, Ljava/util/Map;

    .line 108
    .local v2, "contentMap":Ljava/util/Map;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_18

    .line 110
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v5

    if-ne v5, v6, :cond_15

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 112
    :cond_15
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const v7, -0x375e2428

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid$iv":Z
    move-object v13, v11

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 163
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 164
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_17

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v15, v6, :cond_16

    goto :goto_e

    .line 168
    :cond_16
    move-object v6, v15

    goto :goto_f

    .line 165
    :cond_17
    :goto_e
    const/4 v6, 0x0

    .line 112
    .local v6, "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    move/from16 p3, v6

    .end local v6    # "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    .local p3, "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    new-instance v6, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    invoke-direct {v6, v8}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 165
    .end local p3    # "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    nop

    .line 166
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    nop

    .line 164
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 163
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 112
    .end local v7    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 113
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 116
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 118
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .local v5, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 169
    .local v6, "$i$f$indexOfFirst":I
    const/4 v7, 0x0

    .line 170
    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 171
    .local v14, "item$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 119
    .local v16, "$i$a$-indexOfFirst-CrossfadeKt$Crossfade$replacementId$1":I
    move-object/from16 p3, v5

    .end local v5    # "$this$indexOfFirst$iv":Ljava/util/List;
    .local p3, "$this$indexOfFirst$iv":Ljava/util/List;
    invoke-interface {v4, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move/from16 v17, v6

    .end local v6    # "$i$f$indexOfFirst":I
    .local v17, "$i$f$indexOfFirst":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 171
    .end local v15    # "it":Ljava/lang/Object;
    .end local v16    # "$i$a$-indexOfFirst-CrossfadeKt$Crossfade$replacementId$1":I
    if-eqz v5, :cond_19

    .line 172
    goto :goto_11

    .line 173
    :cond_19
    nop

    .end local v14    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p3

    move/from16 v6, v17

    goto :goto_10

    .line 175
    .end local v17    # "$i$f$indexOfFirst":I
    .end local p3    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v5    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v6    # "$i$f$indexOfFirst":I
    :cond_1a
    move-object/from16 p3, v5

    move/from16 v17, v6

    .end local v5    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v6    # "$i$f$indexOfFirst":I
    .restart local v17    # "$i$f$indexOfFirst":I
    .restart local p3    # "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v7, -0x1

    .line 118
    .end local v7    # "index$iv":I
    .end local v17    # "$i$f$indexOfFirst":I
    .end local p3    # "$this$indexOfFirst$iv":Ljava/util/List;
    :goto_11
    move v5, v7

    .line 121
    .local v5, "replacementId":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1b

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 124
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_12
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 127
    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 176
    .local v7, "$i$f$fastForEach":I
    nop

    .line 177
    const/4 v13, 0x0

    .local v13, "index$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    :goto_13
    if-ge v13, v14, :cond_1c

    .line 178
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 179
    .local v15, "item$iv":Ljava/lang/Object;
    move-object/from16 p1, v15

    .local p1, "stateForContent":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 128
    .local v16, "$i$a$-fastForEach-CrossfadeKt$Crossfade$5":I
    move/from16 p3, v5

    .end local v5    # "replacementId":I
    .local p3, "replacementId":I
    new-instance v5, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    .end local p1    # "stateForContent":Ljava/lang/Object;
    .local v6, "stateForContent":Ljava/lang/Object;
    .local v17, "$this$fastForEach$iv":Ljava/util/List;
    invoke-direct {v5, v8, v3, v6, v9}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v18, v3

    .end local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v18, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    const v3, -0x55057628

    move/from16 p1, v7

    const/4 v7, 0x1

    .end local v7    # "$i$f$fastForEach":I
    .local p1, "$i$f$fastForEach":I
    invoke-static {v11, v3, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    nop

    .line 179
    .end local v6    # "stateForContent":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-CrossfadeKt$Crossfade$5":I
    nop

    .line 177
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, p1

    move/from16 v5, p3

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    goto :goto_13

    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local p1    # "$i$f$fastForEach":I
    .end local p3    # "replacementId":I
    .restart local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local v5    # "replacementId":I
    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v7    # "$i$f$fastForEach":I
    :cond_1c
    move-object/from16 v18, v3

    move/from16 p3, v5

    move-object/from16 v17, v6

    move/from16 p1, v7

    .line 181
    .end local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v5    # "replacementId":I
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    .end local v13    # "index$iv":I
    .restart local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v18    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p1    # "$i$f$fastForEach":I
    .restart local p3    # "replacementId":I
    goto :goto_14

    .line 116
    .end local v17    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local p1    # "$i$f$fastForEach":I
    .end local p3    # "replacementId":I
    .restart local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_1d
    move-object/from16 v18, v3

    .line 181
    .end local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local v18    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_14
    shr-int/lit8 v3, v12, 0x3

    and-int/lit8 v3, v3, 0xe

    .line 139
    nop

    .local v3, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$Box":I
    const v6, 0x2bb5b5d7

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 182
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    .line 183
    .local v6, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v7, 0x0

    .line 186
    .local v7, "propagateMinConstraints$iv":Z
    shr-int/lit8 v13, v3, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v3, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v6, v7, v11, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v3, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 187
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    move/from16 p1, v5

    .end local v5    # "$i$f$Box":I
    .local v15, "$i$f$Layout":I
    .local p1, "$i$f$Box":I
    const v5, -0x4ee9b9da

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 188
    const/4 v5, 0x0

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 189
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 191
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 198
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    move-object/from16 v20, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v14, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 190
    nop

    .local v1, "$changed$iv$iv$iv":I
    move-object/from16 p2, v19

    .local p2, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 p3, v17

    .local p3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 199
    .local v17, "$i$f$ReusableComposeNode":I
    move-object/from16 v19, v6

    .end local v6    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v19, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 200
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 201
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 202
    move-object/from16 v6, p3

    .end local p3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    .line 204
    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1f
    move-object/from16 v6, p3

    .end local p3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 206
    :goto_15
    move-object/from16 p3, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 193
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v23, v7

    .end local v7    # "propagateMinConstraints$iv":Z
    .local v23, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .local v7, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 207
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v6

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 208
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_21

    move-object/from16 v26, v5

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v26, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_16

    :cond_20
    move-object/from16 v8, v24

    goto :goto_17

    .end local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_21
    move-object/from16 v26, v5

    .line 209
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v8, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 210
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 212
    :goto_17
    nop

    .line 207
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 212
    nop

    .line 197
    .end local v7    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 206
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 213
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, p2

    .end local p2    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7, v5, v11, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const v5, 0x7ab4aae9

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 215
    shr-int/lit8 v5, v1, 0x9

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed$iv":I
    move-object v6, v11

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 216
    .local v8, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 p2, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local p2, "$changed$iv$iv$iv":I
    const v1, -0x4ab8dd4f

    move/from16 v21, v5

    .end local v5    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const-string v5, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$Crossfade_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v22, v6

    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 140
    .local v24, "$i$a$-Box-CrossfadeKt$Crossfade$6":I
    move-object/from16 v25, v1

    .end local v1    # "$this$Crossfade_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .local v25, "$this$Crossfade_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    const v1, 0x7b82ae7e

    move/from16 v27, v3

    .end local v3    # "$changed$iv":I
    .local v27, "$changed$iv":I
    const-string v3, "C:Crossfade.kt#xbi5r1"

    move/from16 v28, v5

    move-object/from16 v5, v22

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$changed":I
    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, -0x60a55512

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, ""

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 217
    .local v3, "$i$f$fastForEach":I
    nop

    .line 218
    const/16 v22, 0x0

    move-object/from16 v29, v0

    .end local v0    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v22, "index$iv":I
    .local v29, "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v30, v3

    move/from16 v3, v22

    .end local v22    # "index$iv":I
    .local v3, "index$iv":I
    .local v30, "$i$f$fastForEach":I
    :goto_18
    if-ge v3, v0, :cond_23

    .line 219
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 220
    .local v22, "item$iv":Ljava/lang/Object;
    move-object/from16 v31, v22

    .local v31, "it":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 141
    .local v32, "$i$a$-fastForEach-CrossfadeKt$Crossfade$6$1":I
    move/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v31, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "it":Ljava/lang/Object;
    .local v31, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v4

    .end local v4    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v34, "contentKey":Lkotlin/jvm/functions/Function1;
    const v4, -0x1adab736

    invoke-interface {v5, v4, v1}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    const-string v1, "141@5871L8"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 142
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 p5, v0

    const/4 v4, 0x0

    if-nez v1, :cond_22

    goto :goto_19

    .end local v0    # "it":Ljava/lang/Object;
    .local p5, "it":Ljava/lang/Object;
    :cond_22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    .line 144
    nop

    .line 220
    .end local v32    # "$i$a$-fastForEach-CrossfadeKt$Crossfade$6$1":I
    .end local p5    # "it":Ljava/lang/Object;
    nop

    .line 218
    .end local v22    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v31

    move/from16 v0, v33

    move-object/from16 v4, v34

    goto :goto_18

    .end local v31    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v34    # "contentKey":Lkotlin/jvm/functions/Function1;
    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v4    # "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_23
    move-object/from16 v31, v1

    move-object/from16 v34, v4

    .line 222
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "index$iv":I
    .end local v4    # "contentKey":Lkotlin/jvm/functions/Function1;
    .restart local v31    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v34    # "contentKey":Lkotlin/jvm/functions/Function1;
    nop

    .end local v30    # "$i$f$fastForEach":I
    .end local v31    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 140
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 145
    nop

    .line 216
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-Box-CrossfadeKt$Crossfade$6":I
    .end local v25    # "$this$Crossfade_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .end local v28    # "$changed":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 215
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v21    # "$changed$iv":I
    nop

    .line 223
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 224
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 225
    nop

    .end local v7    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local p2    # "$changed$iv$iv$iv":I
    .end local p3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 226
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v16    # "compositeKeyHash$iv$iv":I
    .end local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 227
    nop

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v19    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v23    # "propagateMinConstraints$iv":Z
    .end local v27    # "$changed$iv":I
    .end local p1    # "$i$f$Box":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 146
    .end local v2    # "contentMap":Ljava/util/Map;
    .end local v29    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_24
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_25

    new-instance v13, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, v34

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_25
    return-void
.end method

.method public static final Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0, "targetState"    # Ljava/lang/Object;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 55
    move-object/from16 v8, p0

    move/from16 v9, p6

    const v0, -0x1284b420

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Crossfade)P(4,3!1,2)55@2280L36,56@2332L53:Crossfade.kt#xbi5r1"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, p7, 0x1

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0xe

    if-nez v2, :cond_2

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v9, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    and-int/lit8 v6, p7, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v10, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v9, 0x1c00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x800

    goto :goto_4

    :cond_8
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v1, v11

    goto :goto_5

    :cond_9
    move-object/from16 v10, p3

    :goto_5
    and-int/lit8 v11, p7, 0x10

    const v12, 0xe000

    if-eqz v11, :cond_a

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v15, p4

    goto :goto_7

    :cond_a
    and-int v11, v9, v12

    if-nez v11, :cond_c

    move-object/from16 v15, p4

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x4000

    goto :goto_6

    :cond_b
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_c
    move-object/from16 v15, p4

    :goto_7
    if-ne v5, v3, :cond_e

    const v3, 0xb6db

    and-int/2addr v3, v1

    const/16 v11, 0x2492

    if-ne v3, v11, :cond_e

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_8

    .line 58
    :cond_d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p2

    move-object v12, v10

    move-object v10, v4

    goto :goto_c

    .line 55
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 51
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 55
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_f
    move-object v2, v4

    .line 51
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    const/4 v3, 0x0

    if-eqz v5, :cond_10

    .line 52
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v3, v5, v4, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v4, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    goto :goto_a

    .line 51
    .end local v4    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_10
    move-object/from16 v4, p2

    .line 52
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local v4    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_a
    if-eqz v6, :cond_11

    .line 53
    const-string v5, "Crossfade"

    .end local p3    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    goto :goto_b

    .line 52
    .end local v5    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_11
    move-object v5, v10

    .line 53
    .end local p3    # "label":Ljava/lang/String;
    .restart local v5    # "label":Ljava/lang/String;
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 55
    const/4 v6, -0x1

    const-string/jumbo v10, "androidx.compose.animation.Crossfade (Crossfade.kt:54)"

    invoke-static {v0, v1, v6, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 56
    :cond_12
    and-int/lit8 v0, v1, 0x8

    and-int/lit8 v6, v1, 0xe

    or-int/2addr v0, v6

    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v0, v6

    invoke-static {v8, v5, v7, v0, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 57
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    const/4 v13, 0x0

    and-int/lit8 v3, v1, 0x70

    or-int/lit16 v3, v3, 0x200

    and-int v6, v1, v12

    or-int v16, v3, v6

    const/16 v17, 0x4

    move-object v10, v0

    move-object v11, v2

    move-object v12, v4

    move-object/from16 v14, p4

    move-object v15, v7

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 58
    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_13
    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v5    # "label":Ljava/lang/String;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    .local v11, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v12, "label":Ljava/lang/String;
    :goto_c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_14

    new-instance v14, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    move-object v0, v14

    move v15, v1

    .end local v1    # "$dirty":I
    .local v15, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v16, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_d

    .end local v15    # "$dirty":I
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_14
    move v15, v1

    move-object/from16 v16, v7

    .end local v1    # "$dirty":I
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$dirty":I
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_d
    return-void
.end method

.method public static final synthetic Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0, "targetState"    # Ljava/lang/Object;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Crossfade API now has a new label parameter added."
    .end annotation

    .line 71
    move-object/from16 v7, p0

    move/from16 v8, p5

    const v0, 0x1f358c3d

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Crossfade)P(3,2)71@2743L29,72@2788L53:Crossfade.kt#xbi5r1"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p6, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0xe

    if-nez v2, :cond_2

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v9, p6, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v1, v1, 0x80

    :cond_6
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_7

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v15, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v8, 0x1c00

    if-nez v10, :cond_9

    move-object/from16 v15, p3

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x800

    goto :goto_4

    :cond_8
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v1, v10

    goto :goto_5

    :cond_9
    move-object/from16 v15, p3

    :goto_5
    if-ne v9, v3, :cond_b

    and-int/lit16 v3, v1, 0x16db

    const/16 v10, 0x492

    if-ne v3, v10, :cond_b

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    .line 74
    :cond_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v10, p2

    move-object v9, v5

    goto :goto_9

    .line 71
    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    .line 68
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 71
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_c
    move-object v2, v5

    .line 68
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    const/4 v3, 0x0

    if-eqz v9, :cond_d

    .line 69
    const/4 v5, 0x7

    const/4 v9, 0x0

    invoke-static {v9, v9, v3, v5, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v5, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    goto :goto_8

    .line 68
    .end local v5    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_d
    move-object/from16 v5, p2

    .line 69
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local v5    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 71
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.animation.Crossfade (Crossfade.kt:70)"

    invoke-static {v0, v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 72
    :cond_e
    and-int/lit8 v0, v1, 0x8

    and-int/lit8 v9, v1, 0xe

    or-int/2addr v0, v9

    invoke-static {v7, v3, v6, v0, v4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 73
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    const/4 v12, 0x0

    and-int/lit8 v3, v1, 0x70

    or-int/lit16 v3, v3, 0x200

    shl-int/lit8 v4, v1, 0x3

    const v9, 0xe000

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    const/16 v16, 0x4

    move-object v9, v0

    move-object v10, v2

    move-object v11, v5

    move-object/from16 v13, p3

    move-object v14, v6

    move v15, v3

    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 74
    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_f
    move-object v9, v2

    move-object v10, v5

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v5    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v9, "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_10

    new-instance v12, Landroidx/compose/animation/CrossfadeKt$Crossfade$2;

    move-object v0, v12

    move v13, v1

    .end local v1    # "$dirty":I
    .local v13, "$dirty":I
    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object v14, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$2;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function3;II)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_a

    .end local v13    # "$dirty":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_10
    move v13, v1

    move-object v14, v6

    .end local v1    # "$dirty":I
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$dirty":I
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_a
    return-void
.end method
