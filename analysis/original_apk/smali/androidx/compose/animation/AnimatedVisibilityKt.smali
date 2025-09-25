.class public final Landroidx/compose/animation/AnimatedVisibilityKt;
.super Ljava/lang/Object;
.source "AnimatedVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,919:1\n25#2:920\n36#2:935\n36#2:951\n25#2:958\n456#2,8:976\n464#2,6:990\n25#2:997\n1116#3,6:921\n1116#3,6:928\n1116#3,6:936\n1116#3,6:945\n1116#3,6:952\n1116#3,6:959\n1116#3,6:998\n1#4:927\n1011#5:934\n1012#5,3:942\n79#6,11:965\n92#6:996\n3737#7,6:984\n81#8:1004\n81#8:1005\n*S KotlinDebug\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityKt\n*L\n716#1:920\n789#1:935\n816#1:951\n834#1:958\n817#1:976,8\n817#1:990,6\n903#1:997\n716#1:921,6\n744#1:928,6\n789#1:936,6\n800#1:945,6\n816#1:952,6\n834#1:959,6\n903#1:998,6\n789#1:934\n789#1:942,3\n817#1:965,11\n817#1:996\n817#1:984,6\n793#1:1004\n795#1:1005\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u0091\u0001\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u00020\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0001\u00a2\u0006\u0002\u0010\u001a\u001aa\u0010\u001b\u001a\u00020\u00072\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001d2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010 \u001aJ\u0010\u001b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00012\u0011\u0010\u0016\u001a\r\u0012\u0004\u0012\u00020\u00070\"\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0002\u0010#\u001a[\u0010\u001b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010$\u001ak\u0010%\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u00020\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0001\u00a2\u0006\u0002\u0010&\u001am\u0010\u001b\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u00020\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010\'\u001ae\u0010\u001b\u001a\u00020\u0007*\u00020(2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001d2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010)\u001a_\u0010\u001b\u001a\u00020\u0007*\u00020(2\u0006\u0010\n\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010*\u001ae\u0010\u001b\u001a\u00020\u0007*\u00020+2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001d2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010,\u001a_\u0010\u001b\u001a\u00020\u0007*\u00020+2\u0006\u0010\n\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0008\u0019H\u0007\u00a2\u0006\u0002\u0010-\u001a9\u0010.\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u00020\u00010\u000b2\u0006\u0010/\u001a\u0002H\u0008H\u0003\u00a2\u0006\u0002\u00100\"\u001e\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u00061\u00b2\u0006\"\u00102\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013\"\u0004\u0008\u0000\u0010\u0008X\u008a\u0084\u0002\u00b2\u0006\u0010\u00103\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0008X\u008a\u0084\u0002"
    }
    d2 = {
        "exitFinished",
        "",
        "Landroidx/compose/animation/core/Transition;",
        "Landroidx/compose/animation/EnterExitState;",
        "getExitFinished",
        "(Landroidx/compose/animation/core/Transition;)Z",
        "AnimatedEnterExitImpl",
        "",
        "T",
        "transition",
        "visible",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enter",
        "Landroidx/compose/animation/EnterTransition;",
        "exit",
        "Landroidx/compose/animation/ExitTransition;",
        "shouldDisposeBlock",
        "Lkotlin/Function2;",
        "onLookaheadMeasured",
        "Landroidx/compose/animation/OnLookaheadMeasured;",
        "content",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/OnLookaheadMeasured;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "AnimatedVisibility",
        "visibleState",
        "Landroidx/compose/animation/core/MutableTransitionState;",
        "label",
        "",
        "(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "initiallyVisible",
        "Lkotlin/Function0;",
        "(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "AnimatedVisibilityImpl",
        "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V",
        "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "Landroidx/compose/foundation/layout/RowScope;",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "targetEnterExit",
        "targetState",
        "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;",
        "animation_release",
        "shouldDisposeBlockUpdated",
        "shouldDisposeAfterExit"
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
.method public static final AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/OnLookaheadMeasured;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "transition"    # Landroidx/compose/animation/core/Transition;
    .param p1, "visible"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "shouldDisposeBlock"    # Lkotlin/jvm/functions/Function2;
    .param p6, "onLookaheadMeasured"    # Landroidx/compose/animation/OnLookaheadMeasured;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/animation/EnterExitState;",
            "-",
            "Landroidx/compose/animation/EnterExitState;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/animation/OnLookaheadMeasured;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 785
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p7

    move/from16 v10, p9

    move/from16 v9, p10

    const v0, -0x352a56be    # -7001249.0f

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedEnterExitImpl)P(6,7,3,1,2,5,4)788@41251L116,792@41410L40,794@41490L574,815@42162L69,819@42377L39,833@43122L50,816@42244L942:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_5

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_8

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v9, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v10, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v2, v9, 0x10

    if-eqz v2, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v6, p4

    goto :goto_9

    :cond_c
    const v2, 0xe000

    and-int/2addr v2, v10

    if-nez v2, :cond_e

    move-object/from16 v6, p4

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v2, v9, 0x20

    if-eqz v2, :cond_f

    const/high16 v2, 0x30000

    :goto_a
    or-int/2addr v1, v2

    goto :goto_b

    :cond_f
    const/high16 v2, 0x70000

    and-int/2addr v2, v10

    if-nez v2, :cond_11

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v2, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v2, v9, 0x40

    if-eqz v2, :cond_12

    const/high16 v3, 0x180000

    or-int/2addr v1, v3

    move-object/from16 v3, p6

    goto :goto_d

    :cond_12
    const/high16 v3, 0x380000

    and-int/2addr v3, v10

    if-nez v3, :cond_14

    move-object/from16 v3, p6

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/high16 v4, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v4, 0x80000

    :goto_c
    or-int/2addr v1, v4

    goto :goto_d

    :cond_14
    move-object/from16 v3, p6

    :goto_d
    and-int/lit16 v4, v9, 0x80

    if-eqz v4, :cond_15

    const/high16 v4, 0xc00000

    :goto_e
    or-int/2addr v1, v4

    goto :goto_f

    :cond_15
    const/high16 v4, 0x1c00000

    and-int/2addr v4, v10

    if-nez v4, :cond_17

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/high16 v4, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v4, 0x400000

    goto :goto_e

    :cond_17
    :goto_f
    move v5, v1

    .end local v1    # "$dirty":I
    .local v5, "$dirty":I
    const v1, 0x16db6db

    and-int/2addr v1, v5

    const v4, 0x492492

    if-ne v1, v4, :cond_19

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_10

    .line 838
    :cond_18
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v5

    move-object v1, v15

    move-object v15, v3

    goto/16 :goto_22

    .line 785
    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    .line 783
    const/4 v1, 0x0

    move-object v4, v1

    .end local p6    # "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    .local v1, "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    goto :goto_11

    .line 785
    .end local v1    # "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    .restart local p6    # "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    :cond_1a
    move-object v4, v3

    .line 783
    .end local p6    # "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    .local v4, "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1b

    .line 785
    const-string/jumbo v1, "androidx.compose.animation.AnimatedEnterExitImpl (AnimatedVisibility.kt:784)"

    invoke-static {v0, v5, v3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 786
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_12

    :cond_1c
    move/from16 v19, v5

    move-object v1, v15

    move-object v15, v4

    goto/16 :goto_21

    .line 789
    :cond_1d
    :goto_12
    const-string v0, "EnterExitTransition"

    .local v0, "label$iv":Ljava/lang/String;
    and-int/lit8 v1, v5, 0xe

    or-int/lit8 v16, v1, 0x30

    .local v16, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    const/16 v17, 0x0

    .local v17, "$i$f$createChildTransition":I
    const v2, 0x48730564

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(createChildTransition)1010@39937L36,1011@39997L74,1012@40094L39,1013@40145L63:Transition.kt#pdpnli"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v16, 0xe

    .line 934
    nop

    .local v2, "$changed$iv$iv":I
    const/16 v18, 0x0

    .local v18, "$i$f$remember":I
    const v3, 0x44faf204

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v8, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 935
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    .local v19, "invalid$iv$iv$iv":Z
    move-object/from16 p8, v8

    .local p8, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 936
    .local v20, "$i$f$cache":I
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 937
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v19, :cond_1f

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v2

    .end local v2    # "$changed$iv$iv":I
    .local v24, "$changed$iv$iv":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_1e

    goto :goto_13

    .line 941
    :cond_1e
    move-object v2, v3

    move-object/from16 v23, v2

    move-object/from16 v3, p8

    goto :goto_14

    .line 937
    .end local v24    # "$changed$iv$iv":I
    .restart local v2    # "$changed$iv$iv":I
    :cond_1f
    move/from16 v24, v2

    .line 938
    .end local v2    # "$changed$iv$iv":I
    .restart local v24    # "$changed$iv$iv":I
    :goto_13
    const/4 v2, 0x0

    .line 934
    .local v2, "$i$a$-remember-TransitionKt$createChildTransition$initialParentState$1$iv":I
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    .line 938
    .end local v2    # "$i$a$-remember-TransitionKt$createChildTransition$initialParentState$1$iv":I
    nop

    .line 939
    .local v2, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v3

    move-object/from16 v3, p8

    .end local p8    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v23, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 940
    nop

    .line 937
    .end local v2    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 936
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v23    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 935
    .end local v3    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "invalid$iv$iv$iv":Z
    .end local v20    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 934
    .end local v18    # "$i$f$remember":I
    .end local v24    # "$changed$iv$iv":I
    move-object/from16 v18, v2

    .line 942
    .local v18, "initialParentState$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    goto :goto_15

    :cond_20
    move-object/from16 v2, v18

    :goto_15
    shr-int/lit8 v3, v16, 0x3

    and-int/lit8 v3, v3, 0x70

    .local v2, "it":Ljava/lang/Object;
    .local v3, "$changed":I
    move-object/from16 p8, v8

    .local p8, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    move-object/from16 v20, v4

    .end local v4    # "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    .local v19, "$i$a$-createChildTransition-AnimatedVisibilityKt$AnimatedEnterExitImpl$childTransition$1":I
    .local v20, "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    const v4, -0x1bd001fd

    move-object/from16 v6, p8

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C789@41329L28:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v6, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v22

    if-eqz v22, :cond_21

    .line 790
    const-string/jumbo v9, "androidx.compose.animation.AnimatedEnterExitImpl.<anonymous> (AnimatedVisibility.kt:789)"

    const/4 v10, -0x1

    const v15, -0x1bd001fd

    invoke-static {v15, v3, v10, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    and-int/lit8 v9, v5, 0xe

    and-int/lit8 v10, v5, 0x70

    or-int/2addr v9, v10

    shl-int/lit8 v10, v3, 0x6

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v9, v10

    invoke-static {v11, v12, v2, v6, v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;

    move-result-object v9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 942
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "$changed":I
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-createChildTransition-AnimatedVisibilityKt$AnimatedEnterExitImpl$childTransition$1":I
    move-object v2, v9

    .line 943
    .local v2, "initialState$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it":Ljava/lang/Object;
    shr-int/lit8 v6, v16, 0x3

    and-int/lit8 v6, v6, 0x70

    .local v6, "$changed":I
    move-object v9, v8

    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    const v15, -0x1bd001fd

    .local v10, "$i$a$-createChildTransition-AnimatedVisibilityKt$AnimatedEnterExitImpl$childTransition$1":I
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 790
    const-string/jumbo v4, "androidx.compose.animation.AnimatedEnterExitImpl.<anonymous> (AnimatedVisibility.kt:789)"

    move-object/from16 p8, v1

    const/4 v1, -0x1

    .end local v1    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    .local p8, "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    invoke-static {v15, v6, v1, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_16

    .line 943
    .end local p8    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    .restart local v1    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    :cond_23
    move-object/from16 p8, v1

    .line 790
    .end local v1    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    .restart local p8    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    :goto_16
    and-int/lit8 v1, v5, 0xe

    and-int/lit8 v4, v5, 0x70

    or-int/2addr v1, v4

    shl-int/lit8 v4, v6, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v1, v4

    invoke-static {v11, v12, v3, v9, v1}, Landroidx/compose/animation/AnimatedVisibilityKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 943
    .end local v3    # "it":Ljava/lang/Object;
    .end local v6    # "$changed":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$a$-createChildTransition-AnimatedVisibilityKt$AnimatedEnterExitImpl$childTransition$1":I
    const v9, 0x44faf204

    move-object v3, v1

    .line 944
    .local v3, "targetState$iv":Ljava/lang/Object;
    and-int/lit8 v1, v16, 0xe

    shl-int/lit8 v4, v16, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int v6, v1, v4

    move-object/from16 v10, p8

    .end local p8    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    .local v10, "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    move-object v1, v10

    move-object/from16 v15, v20

    .end local v20    # "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    .local v15, "onLookaheadMeasured":Landroidx/compose/animation/OnLookaheadMeasured;
    move-object v4, v0

    move/from16 v19, v5

    .end local v5    # "$dirty":I
    .local v19, "$dirty":I
    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/TransitionKt;->createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 789
    .end local v0    # "label$iv":Ljava/lang/String;
    .end local v2    # "initialState$iv":Ljava/lang/Object;
    .end local v3    # "targetState$iv":Ljava/lang/Object;
    .end local v10    # "$this$createChildTransition$iv":Landroidx/compose/animation/core/Transition;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$createChildTransition":I
    .end local v18    # "initialParentState$iv":Ljava/lang/Object;
    move-object v0, v1

    .line 793
    .local v0, "childTransition":Landroidx/compose/animation/core/Transition;
    shr-int/lit8 v1, v19, 0xf

    and-int/lit8 v1, v1, 0xe

    invoke-static {v14, v8, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    .line 796
    .local v10, "shouldDisposeBlockUpdated$delegate":Landroidx/compose/runtime/State;
    nop

    .line 797
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    .line 798
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    .line 796
    invoke-interface {v14, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const v2, -0x12967c4b

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 800
    move-object v3, v8

    .local v2, "invalid$iv":Z
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 945
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 946
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_26

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_25

    goto :goto_17

    .line 950
    :cond_25
    move/from16 p6, v2

    move/from16 p8, v4

    move-object v2, v5

    goto :goto_18

    .line 947
    :cond_26
    :goto_17
    const/4 v9, 0x0

    .line 800
    .local v9, "$i$a$-cache-AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2":I
    move/from16 p6, v2

    .end local v2    # "invalid$iv":Z
    .local p6, "invalid$iv":Z
    new-instance v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;

    move/from16 p8, v4

    .end local v4    # "$i$f$cache":I
    .local p8, "$i$f$cache":I
    const/4 v4, 0x0

    invoke-direct {v2, v0, v10, v4}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 947
    .end local v9    # "$i$a$-cache-AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2":I
    nop

    .line 948
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 949
    nop

    .line 946
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_18
    nop

    .line 945
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 800
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p6    # "invalid$iv":Z
    .end local p8    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 795
    const/16 v3, 0x40

    invoke-static {v1, v2, v8, v3}, Landroidx/compose/runtime/SnapshotStateKt;->produceState(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    .line 815
    .local v9, "shouldDisposeAfterExit$delegate":Landroidx/compose/runtime/State;
    invoke-static {v0}, Landroidx/compose/animation/AnimatedVisibilityKt;->getExitFinished(Landroidx/compose/animation/core/Transition;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl$lambda$6(Landroidx/compose/runtime/State;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_19

    :cond_27
    move-object/from16 v1, p7

    goto/16 :goto_21

    :cond_28
    :goto_19
    and-int/lit8 v1, v19, 0xe

    .line 816
    nop

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    const v3, 0x44faf204

    .local v2, "$i$f$remember":I
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 951
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv":Z
    move-object v4, v8

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 952
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 953
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v3, :cond_2a

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v1

    .end local v1    # "$changed$iv":I
    .local p6, "$changed$iv":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_29

    goto :goto_1a

    .line 957
    :cond_29
    move-object v1, v6

    goto :goto_1b

    .line 953
    .end local p6    # "$changed$iv":I
    .restart local v1    # "$changed$iv":I
    :cond_2a
    move/from16 p6, v1

    .line 954
    .end local v1    # "$changed$iv":I
    .restart local p6    # "$changed$iv":I
    :goto_1a
    const/4 v1, 0x0

    .line 816
    .local v1, "$i$a$-remember-AnimatedVisibilityKt$AnimatedEnterExitImpl$scope$1":I
    move/from16 p8, v1

    .end local v1    # "$i$a$-remember-AnimatedVisibilityKt$AnimatedEnterExitImpl$scope$1":I
    .local p8, "$i$a$-remember-AnimatedVisibilityKt$AnimatedEnterExitImpl$scope$1":I
    new-instance v1, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    invoke-direct {v1, v0}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 954
    .end local p8    # "$i$a$-remember-AnimatedVisibilityKt$AnimatedEnterExitImpl$scope$1":I
    nop

    .line 955
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 956
    nop

    .line 953
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_1b
    nop

    .line 952
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 951
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 816
    .end local v2    # "$i$f$remember":I
    .end local p6    # "$changed$iv":I
    move-object v7, v1

    check-cast v7, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 819
    .local v7, "scope":Landroidx/compose/animation/AnimatedVisibilityScopeImpl;
    nop

    .line 820
    const-string v4, "Built-in"

    shr-int/lit8 v1, v19, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v1, v1, 0xc00

    shr-int/lit8 v2, v19, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int v6, v1, v2

    move-object v1, v0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 821
    if-eqz v15, :cond_2b

    .line 822
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    new-instance v3, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2;

    invoke-direct {v3, v15}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2;-><init>(Landroidx/compose/animation/OnLookaheadMeasured;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_1c

    .line 832
    :cond_2b
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 821
    :goto_1c
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 820
    invoke-interface {v13, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 834
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$remember":I
    const v4, -0x1d58f75c

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 958
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    move-object v5, v8

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 959
    .local v6, "$i$f$cache":I
    move-object/from16 p6, v0

    .end local v0    # "childTransition":Landroidx/compose/animation/core/Transition;
    .local p6, "childTransition":Landroidx/compose/animation/core/Transition;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 960
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v2

    .end local v2    # "$changed$iv":I
    .local p8, "$changed$iv":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2c

    .line 961
    const/4 v2, 0x0

    .line 834
    .local v2, "$i$a$-remember-AnimatedVisibilityKt$AnimatedEnterExitImpl$3":I
    move-object/from16 v17, v0

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .local v17, "it$iv$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    invoke-direct {v0, v7}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    .line 961
    .end local v2    # "$i$a$-remember-AnimatedVisibilityKt$AnimatedEnterExitImpl$3":I
    nop

    .line 962
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 963
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1d

    .line 964
    .end local v17    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    :cond_2c
    move-object/from16 v17, v0

    .line 960
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .restart local v17    # "it$iv$iv":Ljava/lang/Object;
    :goto_1d
    nop

    .line 959
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v17    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 958
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "$i$f$remember":I
    .end local p8    # "$changed$iv":I
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 817
    nop

    .local v0, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/16 v2, 0x180

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Layout":I
    const v4, -0x4ee9b9da

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 965
    const/4 v4, 0x0

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v4

    .line 966
    .local v4, "compositeKeyHash$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 968
    .local v5, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 975
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v16

    move-object/from16 p8, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p8, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v2, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 967
    nop

    .local v1, "$changed$iv$iv":I
    move-object/from16 v17, v16

    .local v6, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v17, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 976
    .local v16, "$i$f$ReusableComposeNode":I
    move/from16 v18, v2

    .end local v2    # "$changed$iv":I
    .local v18, "$changed$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 977
    :cond_2d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 978
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 979
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    .line 981
    :cond_2e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 983
    :goto_1e
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 970
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v22, v3

    .end local v3    # "$i$f$Layout":I
    .local v22, "$i$f$Layout":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 971
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 973
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 984
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v2

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 985
    .local v24, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_30

    move-object/from16 v25, v0

    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v25, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v5

    .end local v5    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v26, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_1f

    :cond_2f
    move-object/from16 v5, v23

    goto :goto_20

    .end local v25    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v26    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v5    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_30
    move-object/from16 v25, v0

    move-object/from16 v26, v5

    .line 986
    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v5    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v25    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v26    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 987
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 989
    :goto_20
    nop

    .line 984
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 989
    nop

    .line 974
    .end local v3    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 983
    .end local v2    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 990
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v17

    .end local v17    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v0, v8, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const v0, 0x7ab4aae9

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 992
    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed":I
    move-object v2, v8

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 818
    .local v5, "$i$a$-Layout-AnimatedVisibilityKt$AnimatedEnterExitImpl$1":I
    move/from16 v17, v0

    .end local v0    # "$changed":I
    .local v17, "$changed":I
    const v0, -0xa5f95bf

    move/from16 v20, v1

    .end local v1    # "$changed$iv$iv":I
    .local v20, "$changed$iv$iv":I
    const-string v1, "C817@42286L9:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v19, 0x12

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-interface {v1, v7, v2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 992
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-AnimatedVisibilityKt$AnimatedEnterExitImpl$1":I
    .end local v17    # "$changed":I
    nop

    .line 993
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 994
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 995
    nop

    .end local v3    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v6    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v20    # "$changed$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 996
    nop

    .end local v4    # "compositeKeyHash$iv":I
    .end local v7    # "scope":Landroidx/compose/animation/AnimatedVisibilityScopeImpl;
    .end local v9    # "shouldDisposeAfterExit$delegate":Landroidx/compose/runtime/State;
    .end local v10    # "shouldDisposeBlockUpdated$delegate":Landroidx/compose/runtime/State;
    .end local v18    # "$changed$iv":I
    .end local v22    # "$i$f$Layout":I
    .end local v25    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v26    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p6    # "childTransition":Landroidx/compose/animation/core/Transition;
    .end local p8    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :goto_21
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 838
    :cond_31
    :goto_22
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_32

    new-instance v16, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v15

    move-object/from16 v17, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v11, v10

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/OnLookaheadMeasured;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_23

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_32
    move-object/from16 v17, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_23
    return-void
.end method

.method private static final AnimatedEnterExitImpl$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 4
    .param p0, "$shouldDisposeBlockUpdated$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/animation/EnterExitState;",
            "-",
            "Landroidx/compose/animation/EnterExitState;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/animation/EnterExitState;",
            "Landroidx/compose/animation/EnterExitState;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 793
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 1004
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 793
    return-object v0
.end method

.method private static final AnimatedEnterExitImpl$lambda$6(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$shouldDisposeAfterExit$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 795
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 1005
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

    .line 795
    return v0
.end method

.method public static final AnimatedVisibility(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "visibleState"    # Landroidx/compose/animation/core/MutableTransitionState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p3, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 387
    move-object/from16 v9, p0

    move/from16 v10, p7

    const v0, -0xd4928fa

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)387@20969L37,388@21011L84:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v10, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v10, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, p8, 0x10

    const v12, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int v13, v10, v12

    if-nez v13, :cond_e

    move-object/from16 v13, p4

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p8, 0x20

    const/high16 v15, 0x70000

    if-eqz v14, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v14, v10, v15

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v14, p5

    :goto_b
    const v16, 0x5b6db

    and-int v15, v1, v16

    const v12, 0x12492

    if-ne v15, v12, :cond_13

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_c

    .line 390
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v12, v3

    move-object v15, v7

    move-object/from16 v17, v13

    move-object v13, v5

    goto/16 :goto_10

    .line 387
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 382
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v12, v2

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 387
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v12, v3

    .line 382
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x3

    if-eqz v4, :cond_15

    .line 383
    invoke-static {v3, v2, v15, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    .end local p2    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v0, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 382
    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p2    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object v0, v5

    .line 383
    .end local p2    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 384
    invoke-static {v3, v2, v15, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    move-object v15, v2

    .end local p3    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 383
    .end local v2    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p3    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object v15, v7

    .line 384
    .end local p3    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v15, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    if-eqz v8, :cond_17

    .line 385
    const-string v2, "AnimatedVisibility"

    move-object v13, v2

    .end local p4    # "label":Ljava/lang/String;
    .local v13, "label":Ljava/lang/String;
    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 387
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:386)"

    const v4, -0xd4928fa

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 388
    :cond_18
    sget v2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    and-int/lit8 v3, v1, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v9, v13, v11, v2, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v17

    .line 389
    .local v17, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$7;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$7;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/lit8 v3, v3, 0x30

    shl-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    or-int v8, v3, v4

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object/from16 v1, v17

    move-object v3, v12

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, p5

    move-object v7, v11

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 390
    .end local v17    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v17, v13

    move-object v13, v0

    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v13, "enter":Landroidx/compose/animation/EnterTransition;
    .local v17, "label":Ljava/lang/String;
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1a

    new-instance v18, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object v9, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$8;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final AnimatedVisibility(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "$this$AnimatedVisibility"    # Landroidx/compose/animation/core/Transition;
    .param p1, "visible"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 613
    move/from16 v9, p7

    const v0, 0x3d825161

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(4,3,1,2)612@34154L79:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    const/high16 v2, -0x80000000

    and-int v2, p8, v2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0xe

    if-nez v2, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v12, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v9, 0x70

    if-nez v2, :cond_5

    move-object/from16 v12, p1

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v12, p1

    :goto_3
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v9, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v9, 0x1c00

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit8 v6, p8, 0x8

    const v7, 0xe000

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p4

    goto :goto_9

    :cond_c
    and-int v8, v9, v7

    if-nez v8, :cond_e

    move-object/from16 v8, p4

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v13, p8, 0x10

    const/high16 v14, 0x70000

    if-eqz v13, :cond_f

    const/high16 v13, 0x30000

    or-int/2addr v1, v13

    move-object/from16 v13, p5

    goto :goto_b

    :cond_f
    and-int v13, v9, v14

    if-nez v13, :cond_11

    move-object/from16 v13, p5

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-object/from16 v13, p5

    :goto_b
    move v15, v1

    .end local v1    # "$dirty":I
    .local v15, "$dirty":I
    const v1, 0x5b6db

    and-int/2addr v1, v15

    const v14, 0x12492

    if-ne v1, v14, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    goto/16 :goto_10

    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 609
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v14, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 613
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v14, v3

    .line 609
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_15

    .line 610
    invoke-static {v3, v2, v1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xf

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    move-object/from16 v16, v4

    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v4, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 609
    .end local v4    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object/from16 v16, v5

    .line 610
    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v16, "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 611
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xf

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    invoke-static {v3, v2, v1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    move-object/from16 v17, v1

    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v1, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 610
    .end local v1    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object/from16 v17, v8

    .line 611
    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v17, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 613
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:612)"

    invoke-static {v0, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_17
    and-int/lit8 v0, v15, 0xe

    and-int/lit8 v1, v15, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v15, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v15, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v15

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v15

    or-int v8, v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, p5

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v18, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$13;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object v9, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$13;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_19
    return-void
.end method

.method public static final AnimatedVisibility(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "$this$AnimatedVisibility"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p1, "visibleState"    # Landroidx/compose/animation/core/MutableTransitionState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 538
    move-object/from16 v10, p1

    move/from16 v11, p8

    const v0, -0x32b3fd6a

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)538@29783L37,539@29825L84:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x30

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x70

    if-nez v2, :cond_2

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_3

    :cond_3
    and-int/lit16 v3, v11, 0x380

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_2

    :cond_4
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p2

    :goto_3
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x1c00

    if-nez v5, :cond_8

    move-object/from16 v5, p3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p3

    :goto_5
    and-int/lit8 v6, p9, 0x8

    const v7, 0xe000

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p4

    goto :goto_7

    :cond_9
    and-int v8, v11, v7

    if-nez v8, :cond_b

    move-object/from16 v8, p4

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4000

    goto :goto_6

    :cond_a
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p4

    :goto_7
    and-int/lit8 v9, p9, 0x10

    const/high16 v13, 0x70000

    if-eqz v9, :cond_c

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_9

    :cond_c
    and-int v14, v11, v13

    if-nez v14, :cond_e

    move-object/from16 v14, p5

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v15, 0x10000

    :goto_8
    or-int/2addr v1, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p5

    :goto_9
    and-int/lit8 v15, p9, 0x20

    if-eqz v15, :cond_f

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_b

    :cond_f
    const/high16 v15, 0x380000

    and-int/2addr v15, v11

    if-nez v15, :cond_11

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x80000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    const v16, 0x2db6d1

    and-int v13, v1, v16

    const v7, 0x92490

    if-ne v13, v7, :cond_13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_c

    .line 541
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v13, v3

    move-object/from16 v18, v8

    move-object/from16 v17, v14

    move-object v14, v5

    goto/16 :goto_10

    .line 538
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 533
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v13, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 538
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v13, v3

    .line 533
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_15

    .line 534
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v0, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 533
    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object v0, v5

    .line 534
    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 535
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    move-object/from16 v18, v2

    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 534
    .end local v2    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object/from16 v18, v8

    .line 535
    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v18, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    if-eqz v9, :cond_17

    .line 536
    const-string v2, "AnimatedVisibility"

    move-object v14, v2

    .end local p5    # "label":Ljava/lang/String;
    .local v14, "label":Ljava/lang/String;
    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 538
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:537)"

    const v4, -0x32b3fd6a

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 539
    :cond_18
    sget v2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v10, v14, v12, v2, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v9

    .line 540
    .local v9, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$11;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$11;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v1, 0x380

    or-int/lit8 v3, v3, 0x30

    and-int/lit16 v4, v1, 0x1c00

    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int v8, v3, v4

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object v1, v9

    move-object v3, v13

    move-object v4, v0

    move-object/from16 v5, v18

    move-object/from16 v6, p6

    move-object v7, v12

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 541
    .end local v9    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v17, v14

    move-object v14, v0

    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v14, "enter":Landroidx/compose/animation/EnterTransition;
    .local v17, "label":Ljava/lang/String;
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v19, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v10, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$12;-><init>(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final AnimatedVisibility(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "$this$AnimatedVisibility"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p1, "visible"    # Z
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 281
    move/from16 v10, p8

    const v0, 0x694ab2be

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)281@15543L32,282@15580L84:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x30

    move/from16 v12, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_2

    move/from16 v12, p1

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move/from16 v12, p1

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_3

    :cond_3
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_2

    :cond_4
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p2

    :goto_3
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v10, 0x1c00

    if-nez v5, :cond_8

    move-object/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p3

    :goto_5
    and-int/lit8 v6, p9, 0x8

    const v7, 0xe000

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p4

    goto :goto_7

    :cond_9
    and-int v8, v10, v7

    if-nez v8, :cond_b

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4000

    goto :goto_6

    :cond_a
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p4

    :goto_7
    and-int/lit8 v9, p9, 0x10

    const/high16 v13, 0x70000

    if-eqz v9, :cond_c

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_9

    :cond_c
    and-int v14, v10, v13

    if-nez v14, :cond_e

    move-object/from16 v14, p5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v15, 0x10000

    :goto_8
    or-int/2addr v1, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p5

    :goto_9
    and-int/lit8 v15, p9, 0x20

    if-eqz v15, :cond_f

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_b

    :cond_f
    const/high16 v15, 0x380000

    and-int/2addr v15, v10

    if-nez v15, :cond_11

    move-object/from16 v15, p6

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x80000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    const v16, 0x2db6d1

    and-int v13, v1, v16

    const v7, 0x92490

    if-ne v13, v7, :cond_13

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_c

    .line 284
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v13, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v14

    move-object v14, v5

    goto/16 :goto_10

    .line 281
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 276
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v13, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 281
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v13, v3

    .line 276
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_15

    .line 277
    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v0, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 276
    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object v0, v5

    .line 277
    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 278
    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    move-object/from16 v17, v2

    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 277
    .end local v2    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object/from16 v17, v8

    .line 278
    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v17, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    if-eqz v9, :cond_17

    .line 279
    const-string v2, "AnimatedVisibility"

    move-object v14, v2

    .end local p5    # "label":Ljava/lang/String;
    .local v14, "label":Ljava/lang/String;
    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 281
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:280)"

    const v4, 0x694ab2be

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 282
    :cond_18
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v14, v11, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v9

    .line 283
    .local v9, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$5;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$5;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v1, 0x380

    or-int/lit8 v3, v3, 0x30

    and-int/lit16 v4, v1, 0x1c00

    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int v8, v3, v4

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object v1, v9

    move-object v3, v13

    move-object v4, v0

    move-object/from16 v5, v17

    move-object/from16 v6, p6

    move-object v7, v11

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 284
    .end local v9    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v18, v14

    move-object v14, v0

    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v14, "enter":Landroidx/compose/animation/EnterTransition;
    .local v18, "label":Ljava/lang/String;
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v19, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v10, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;-><init>(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final AnimatedVisibility(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "$this$AnimatedVisibility"    # Landroidx/compose/foundation/layout/RowScope;
    .param p1, "visibleState"    # Landroidx/compose/animation/core/MutableTransitionState;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 462
    move-object/from16 v10, p1

    move/from16 v11, p8

    const v0, 0x31dc20ae

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)462@25330L37,463@25372L84:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x30

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x70

    if-nez v2, :cond_2

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_3

    :cond_3
    and-int/lit16 v3, v11, 0x380

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_2

    :cond_4
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p2

    :goto_3
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x1c00

    if-nez v5, :cond_8

    move-object/from16 v5, p3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p3

    :goto_5
    and-int/lit8 v6, p9, 0x8

    const v7, 0xe000

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p4

    goto :goto_7

    :cond_9
    and-int v8, v11, v7

    if-nez v8, :cond_b

    move-object/from16 v8, p4

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4000

    goto :goto_6

    :cond_a
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p4

    :goto_7
    and-int/lit8 v9, p9, 0x10

    const/high16 v13, 0x70000

    if-eqz v9, :cond_c

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_9

    :cond_c
    and-int v14, v11, v13

    if-nez v14, :cond_e

    move-object/from16 v14, p5

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v15, 0x10000

    :goto_8
    or-int/2addr v1, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p5

    :goto_9
    and-int/lit8 v15, p9, 0x20

    if-eqz v15, :cond_f

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_b

    :cond_f
    const/high16 v15, 0x380000

    and-int/2addr v15, v11

    if-nez v15, :cond_11

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x80000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    const v16, 0x2db6d1

    and-int v13, v1, v16

    const v7, 0x92490

    if-ne v13, v7, :cond_13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_c

    .line 465
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v13, v3

    move-object/from16 v18, v8

    move-object/from16 v17, v14

    move-object v14, v5

    goto/16 :goto_10

    .line 462
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 457
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v13, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 462
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v13, v3

    .line 457
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_15

    .line 458
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v0, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 457
    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object v0, v5

    .line 458
    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 459
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    move-object/from16 v18, v2

    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 458
    .end local v2    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object/from16 v18, v8

    .line 459
    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v18, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    if-eqz v9, :cond_17

    .line 460
    const-string v2, "AnimatedVisibility"

    move-object v14, v2

    .end local p5    # "label":Ljava/lang/String;
    .local v14, "label":Ljava/lang/String;
    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 462
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:461)"

    const v4, 0x31dc20ae

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 463
    :cond_18
    sget v2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v10, v14, v12, v2, v3}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v9

    .line 464
    .local v9, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$9;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$9;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v1, 0x380

    or-int/lit8 v3, v3, 0x30

    and-int/lit16 v4, v1, 0x1c00

    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int v8, v3, v4

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object v1, v9

    move-object v3, v13

    move-object v4, v0

    move-object/from16 v5, v18

    move-object/from16 v6, p6

    move-object v7, v12

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 465
    .end local v9    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v17, v14

    move-object v14, v0

    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v14, "enter":Landroidx/compose/animation/EnterTransition;
    .local v17, "label":Ljava/lang/String;
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v19, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v10, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$10;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final AnimatedVisibility(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "$this$AnimatedVisibility"    # Landroidx/compose/foundation/layout/RowScope;
    .param p1, "visible"    # Z
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 208
    move/from16 v10, p8

    const v0, -0x67cad85a

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)208@11260L32,209@11297L84:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x30

    move/from16 v12, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_2

    move/from16 v12, p1

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move/from16 v12, p1

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_3

    :cond_3
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_2

    :cond_4
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p2

    :goto_3
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v10, 0x1c00

    if-nez v5, :cond_8

    move-object/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p3

    :goto_5
    and-int/lit8 v6, p9, 0x8

    const v7, 0xe000

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p4

    goto :goto_7

    :cond_9
    and-int v8, v10, v7

    if-nez v8, :cond_b

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x4000

    goto :goto_6

    :cond_a
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v1, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p4

    :goto_7
    and-int/lit8 v9, p9, 0x10

    const/high16 v13, 0x70000

    if-eqz v9, :cond_c

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_9

    :cond_c
    and-int v14, v10, v13

    if-nez v14, :cond_e

    move-object/from16 v14, p5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v15, 0x10000

    :goto_8
    or-int/2addr v1, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p5

    :goto_9
    and-int/lit8 v15, p9, 0x20

    if-eqz v15, :cond_f

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_b

    :cond_f
    const/high16 v15, 0x380000

    and-int/2addr v15, v10

    if-nez v15, :cond_11

    move-object/from16 v15, p6

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x80000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    const v16, 0x2db6d1

    and-int v13, v1, v16

    const v7, 0x92490

    if-ne v13, v7, :cond_13

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_c

    .line 211
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v13, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v14

    move-object v14, v5

    goto/16 :goto_10

    .line 208
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 203
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v13, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 208
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v13, v3

    .line 203
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_15

    .line 204
    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v0, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 203
    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object v0, v5

    .line 204
    .end local p3    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 205
    invoke-static {v7, v2, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    move-object/from16 v17, v2

    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 204
    .end local v2    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object/from16 v17, v8

    .line 205
    .end local p4    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v17, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    if-eqz v9, :cond_17

    .line 206
    const-string v2, "AnimatedVisibility"

    move-object v14, v2

    .end local p5    # "label":Ljava/lang/String;
    .local v14, "label":Ljava/lang/String;
    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 208
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:207)"

    const v4, -0x67cad85a

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 209
    :cond_18
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v14, v11, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v9

    .line 210
    .local v9, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$3;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$3;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v1, 0x380

    or-int/lit8 v3, v3, 0x30

    and-int/lit16 v4, v1, 0x1c00

    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int v8, v3, v4

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object v1, v9

    move-object v3, v13

    move-object v4, v0

    move-object/from16 v5, v17

    move-object/from16 v6, p6

    move-object v7, v11

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 211
    .end local v9    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v18, v14

    move-object v14, v0

    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v14, "enter":Landroidx/compose/animation/EnterTransition;
    .local v18, "label":Ljava/lang/String;
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1a

    new-instance v19, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v10, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$4;-><init>(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0, "visible"    # Z
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p3, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 133
    move/from16 v9, p7

    const v0, 0x7c7f8c4e

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)133@6955L32,134@6992L84:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0xe

    if-nez v2, :cond_2

    move/from16 v11, p0

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v11, p0

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v9, 0x70

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
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v9, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v9, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, p8, 0x10

    const v12, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int v13, v9, v12

    if-nez v13, :cond_e

    move-object/from16 v13, p4

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p8, 0x20

    const/high16 v15, 0x70000

    if-eqz v14, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v14, v9, v15

    if-nez v14, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v14, p5

    :goto_b
    const v16, 0x5b6db

    and-int v15, v1, v16

    const v12, 0x12492

    if-ne v15, v12, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_c

    .line 136
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v1

    move-object v12, v3

    move-object v15, v7

    move-object/from16 v17, v13

    move-object v13, v5

    goto/16 :goto_10

    .line 133
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 128
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v12, v2

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 133
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v12, v3

    .line 128
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x3

    if-eqz v4, :cond_15

    .line 129
    invoke-static {v3, v2, v15, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    .end local p2    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v0, "enter":Landroidx/compose/animation/EnterTransition;
    goto :goto_e

    .line 128
    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local p2    # "enter":Landroidx/compose/animation/EnterTransition;
    :cond_15
    move-object v0, v5

    .line 129
    .end local p2    # "enter":Landroidx/compose/animation/EnterTransition;
    .restart local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    :goto_e
    if-eqz v6, :cond_16

    .line 130
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xf

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    invoke-static {v3, v2, v15, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    move-object v15, v2

    .end local p3    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v2, "exit":Landroidx/compose/animation/ExitTransition;
    goto :goto_f

    .line 129
    .end local v2    # "exit":Landroidx/compose/animation/ExitTransition;
    .restart local p3    # "exit":Landroidx/compose/animation/ExitTransition;
    :cond_16
    move-object v15, v7

    .line 130
    .end local p3    # "exit":Landroidx/compose/animation/ExitTransition;
    .local v15, "exit":Landroidx/compose/animation/ExitTransition;
    :goto_f
    if-eqz v8, :cond_17

    .line 131
    const-string v2, "AnimatedVisibility"

    move-object v13, v2

    .end local p4    # "label":Ljava/lang/String;
    .local v13, "label":Ljava/lang/String;
    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 133
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:132)"

    const v4, 0x7c7f8c4e

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 134
    :cond_18
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    and-int/lit8 v3, v1, 0xe

    shr-int/lit8 v4, v1, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v13, v10, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v17

    .line 135
    .local v17, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$1;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/lit8 v3, v3, 0x30

    shl-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    or-int v8, v3, v4

    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    move-object/from16 v1, v17

    move-object v3, v12

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, p5

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 136
    .end local v17    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_19
    move-object/from16 v17, v13

    move-object v13, v0

    .end local v0    # "enter":Landroidx/compose/animation/EnterTransition;
    .local v13, "enter":Landroidx/compose/animation/EnterTransition;
    .local v17, "label":Ljava/lang/String;
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1a

    new-instance v18, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object v9, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0, "visible"    # Z
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p3, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p4, "initiallyVisible"    # Z
    .param p5, "content"    # Lkotlin/jvm/functions/Function2;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Z",
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

    .annotation runtime Lkotlin/Deprecated;
        message = "AnimatedVisibility no longer accepts initiallyVisible as a parameter, please use AnimatedVisibility(MutableTransitionState, Modifier, ...) API instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AnimatedVisibility(transitionState = remember { MutableTransitionState(initiallyVisible) }\n.apply { targetState = visible },\nmodifier = modifier,\nenter = enter,\nexit = exit) {\ncontent() \n}"
            imports = {
                "androidx.compose.animation.core.MutableTransitionState"
            }
        .end subannotation
    .end annotation

    .line 715
    move-object/from16 v9, p5

    move/from16 v10, p7

    const v0, 0x42d9fd54

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibility)P(5,4,1,2,3)*715@38991L53,714@38952L214:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    move/from16 v7, p0

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v7, p0

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v10, 0x380

    if-nez v4, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v10, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v5, p3

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v4, p4

    goto :goto_9

    :cond_c
    const v4, 0xe000

    and-int/2addr v4, v10

    if-nez v4, :cond_e

    move/from16 v4, p4

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v4, p4

    :goto_9
    and-int/lit8 v11, p8, 0x20

    const/high16 v12, 0x30000

    if-eqz v11, :cond_f

    or-int/2addr v1, v12

    goto :goto_b

    :cond_f
    const/high16 v11, 0x70000

    and-int/2addr v11, v10

    if-nez v11, :cond_11

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v1, v11

    :cond_11
    :goto_b
    const v11, 0x5b6db

    and-int/2addr v11, v1

    const v13, 0x12492

    if-ne v11, v13, :cond_13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_c

    .line 723
    :cond_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v11, v3

    goto/16 :goto_f

    .line 715
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 710
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 715
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v2, v3

    .line 710
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 715
    const/4 v3, -0x1

    const-string/jumbo v11, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:714)"

    invoke-static {v0, v1, v3, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_15
    nop

    .line 716
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$remember":I
    const v11, -0x1d58f75c

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 920
    const/4 v11, 0x0

    .local v11, "invalid$iv$iv":Z
    move-object v13, v8

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 921
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 922
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v15, v12, :cond_16

    .line 923
    const/4 v12, 0x0

    .line 716
    .local v12, "$i$a$-remember-AnimatedVisibilityKt$AnimatedVisibility$14":I
    move/from16 p1, v0

    .end local v0    # "$changed$iv":I
    .local p1, "$changed$iv":I
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    move/from16 v17, v3

    .end local v3    # "$i$f$remember":I
    .local v17, "$i$f$remember":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 923
    .end local v12    # "$i$a$-remember-AnimatedVisibilityKt$AnimatedVisibility$14":I
    nop

    .line 924
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 925
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_e

    .line 926
    .end local v17    # "$i$f$remember":I
    .end local p1    # "$changed$iv":I
    .local v0, "$changed$iv":I
    .restart local v3    # "$i$f$remember":I
    :cond_16
    move/from16 p1, v0

    move/from16 v17, v3

    .end local v0    # "$changed$iv":I
    .end local v3    # "$i$f$remember":I
    .restart local v17    # "$i$f$remember":I
    .restart local p1    # "$changed$iv":I
    move-object v0, v15

    .line 922
    :goto_e
    nop

    .line 921
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 920
    .end local v11    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 717
    .end local v17    # "$i$f$remember":I
    .end local p1    # "$changed$iv":I
    move-object v3, v0

    check-cast v3, Landroidx/compose/animation/core/MutableTransitionState;

    .line 927
    .local v3, "$this$AnimatedVisibility_u24lambda_u241":Landroidx/compose/animation/core/MutableTransitionState;
    const/4 v11, 0x0

    .line 717
    .local v11, "$i$a$-apply-AnimatedVisibilityKt$AnimatedVisibility$15":I
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .end local v3    # "$this$AnimatedVisibility_u24lambda_u241":Landroidx/compose/animation/core/MutableTransitionState;
    .end local v11    # "$i$a$-apply-AnimatedVisibilityKt$AnimatedVisibility$15":I
    move-object v11, v0

    check-cast v11, Landroidx/compose/animation/core/MutableTransitionState;

    .line 718
    nop

    .line 719
    nop

    .line 720
    const/4 v15, 0x0

    .line 721
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$16;

    invoke-direct {v0, v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$16;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v3, 0x76fd702c

    const/4 v12, 0x1

    invoke-static {v8, v3, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function3;

    sget v0, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    const/high16 v3, 0x30000

    or-int/2addr v0, v3

    and-int/lit8 v3, v1, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v1, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int v18, v0, v3

    const/16 v19, 0x10

    .line 715
    move-object v12, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v17, v8

    invoke-static/range {v11 .. v19}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 723
    :cond_17
    move-object v11, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_18

    new-instance v13, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$17;

    move-object v0, v13

    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    move/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object v15, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$17;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;ZLkotlin/jvm/functions/Function2;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_10

    .end local v14    # "$dirty":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_18
    move v14, v1

    move-object v15, v8

    .end local v1    # "$dirty":I
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$dirty":I
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_10
    return-void
.end method

.method public static final AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p0, "transition"    # Landroidx/compose/animation/core/Transition;
    .param p1, "visible"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p4, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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

    .line 740
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p7

    const v0, 0x19a0f3eb

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AnimatedVisibilityImpl)P(4,5,3,1,2)740@39776L703:AnimatedVisibility.kt#xbi5r1"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_1

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v14, 0x70

    if-nez v2, :cond_3

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v14, 0x380

    if-nez v2, :cond_5

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v14, 0x1c00

    if-nez v2, :cond_7

    move-object/from16 v10, p3

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    goto :goto_4

    :cond_7
    move-object/from16 v10, p3

    :goto_4
    const v2, 0xe000

    and-int v3, v14, v2

    if-nez v3, :cond_9

    move-object/from16 v9, p4

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_5

    :cond_8
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v1, v3

    goto :goto_6

    :cond_9
    move-object/from16 v9, p4

    :goto_6
    const/high16 v3, 0x70000

    and-int/2addr v3, v14

    if-nez v3, :cond_b

    move-object/from16 v8, p5

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v3, 0x10000

    :goto_7
    or-int/2addr v1, v3

    goto :goto_8

    :cond_b
    move-object/from16 v8, p5

    :goto_8
    move v7, v1

    .end local v1    # "$dirty":I
    .local v7, "$dirty":I
    const v1, 0x5b6db

    and-int/2addr v1, v7

    const v3, 0x12492

    if-ne v1, v3, :cond_d

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    .line 761
    :cond_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v7

    goto/16 :goto_c

    .line 740
    :cond_d
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    const-string/jumbo v3, "androidx.compose.animation.AnimatedVisibilityImpl (AnimatedVisibility.kt:739)"

    invoke-static {v0, v7, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 742
    :cond_e
    nop

    .line 743
    nop

    .line 744
    const v0, -0x12968336

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v15

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 928
    .local v3, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 929
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_10

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_f

    goto :goto_a

    .line 933
    :cond_f
    move-object v2, v4

    goto :goto_b

    .line 930
    :cond_10
    :goto_a
    const/4 v6, 0x0

    .line 744
    .local v6, "$i$a$-cache-AnimatedVisibilityKt$AnimatedVisibilityImpl$1":I
    new-instance v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;

    invoke-direct {v2, v12, v11}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Transition;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 930
    .end local v6    # "$i$a$-cache-AnimatedVisibilityKt$AnimatedVisibilityImpl$1":I
    nop

    .line 931
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 932
    nop

    .line 929
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 928
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 744
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v13, v2}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 756
    nop

    .line 757
    nop

    .line 741
    sget-object v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    .line 759
    const/high16 v0, 0x30000

    and-int/lit8 v1, v7, 0xe

    or-int/2addr v0, v1

    and-int/lit8 v1, v7, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v7, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v7

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x6

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int v16, v0, v1

    const/16 v17, 0x40

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v18, v7

    .end local v7    # "$dirty":I
    .local v18, "$dirty":I
    move-object/from16 v7, p5

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v0 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/OnLookaheadMeasured;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 761
    :cond_11
    :goto_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_12

    new-instance v9, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$3;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;I)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method public static final synthetic access$AnimatedEnterExitImpl$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$shouldDisposeBlockUpdated$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getExitFinished(Landroidx/compose/animation/core/Transition;)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/animation/core/Transition;

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/AnimatedVisibilityKt;->getExitFinished(Landroidx/compose/animation/core/Transition;)Z

    move-result v0

    return v0
.end method

.method private static final getExitFinished(Landroidx/compose/animation/core/Transition;)Z
    .locals 2
    .param p0, "$this$exitFinished"    # Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;)Z"
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;
    .locals 11
    .param p0, "$this$targetEnterExit"    # Landroidx/compose/animation/core/Transition;
    .param p1, "visible"    # Lkotlin/jvm/functions/Function1;
    .param p2, "targetState"    # Ljava/lang/Object;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;TT;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/EnterExitState;"
        }
    .end annotation

    const v0, 0x158d233e

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(targetEnterExit)P(1):AnimatedVisibility.kt#xbi5r1"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.targetEnterExit (AnimatedVisibility.kt:889)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, -0x2b06557c

    invoke-interface {p3, v0, p0}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    const-string v0, "902@45413L34"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 893
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    sget-object v0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    goto/16 :goto_1

    .line 896
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    goto/16 :goto_1

    .line 899
    :cond_2
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    goto/16 :goto_1

    :cond_3
    nop

    .line 903
    const/4 v0, 0x0

    move v1, v0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p3, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 997
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, p3

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 998
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 999
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_4

    .line 1000
    const/4 v8, 0x0

    .line 903
    .local v8, "$i$a$-remember-AnimatedVisibilityKt$targetEnterExit$hasBeenVisible$1":I
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v0, v10, v9, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 1000
    .end local v8    # "$i$a$-remember-AnimatedVisibilityKt$targetEnterExit$hasBeenVisible$1":I
    nop

    .line 1001
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1002
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1003
    :cond_4
    move-object v0, v6

    .line 999
    :goto_0
    nop

    .line 998
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 997
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 903
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 904
    .local v0, "hasBeenVisible":Landroidx/compose/runtime/MutableState;
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 905
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 907
    :cond_5
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 908
    sget-object v1, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    move-object v0, v1

    goto :goto_1

    .line 911
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 912
    sget-object v1, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    move-object v0, v1

    goto :goto_1

    .line 914
    :cond_7
    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    move-object v0, v1

    .line 892
    .end local v0    # "hasBeenVisible":Landroidx/compose/runtime/MutableState;
    :goto_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    .line 890
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method
