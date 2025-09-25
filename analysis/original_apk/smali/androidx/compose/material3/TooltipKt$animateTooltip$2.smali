.class final Landroidx/compose/material3/TooltipKt$animateTooltip$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipKt;->animateTooltip(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt$animateTooltip$2\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,719:1\n1166#2:720\n1083#2,5:721\n1166#2:726\n1083#2,5:727\n81#3:732\n81#3:733\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt$animateTooltip$2\n*L\n656#1:720\n656#1:721,5\n675#1:726\n675#1:727,5\n656#1:732\n675#1:733\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Landroidx/compose/animation/core/Transition;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$scale$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 656
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 732
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

    .line 656
    return v0
.end method

.method private static final invoke$lambda$3(Landroidx/compose/runtime/State;)F
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

    .line 675
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 733
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

    .line 675
    return v0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 36
    .param p1, "$this$composed"    # Landroidx/compose/ui/Modifier;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const v1, -0x59518a75

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C655@25162L583,674@25775L561:Tooltip.kt#uh7d8r"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    const/4 v10, -0x1

    if-eqz v2, :cond_0

    .line 656
    const-string/jumbo v2, "androidx.compose.material3.animateTooltip.<anonymous> (Tooltip.kt:655)"

    move/from16 v11, p3

    invoke-static {v1, v11, v10, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v11, p3

    .line 656
    :goto_0
    iget-object v1, v0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Landroidx/compose/animation/core/Transition;

    sget-object v2, Landroidx/compose/material3/TooltipKt$animateTooltip$2$scale$2;->INSTANCE:Landroidx/compose/material3/TooltipKt$animateTooltip$2$scale$2;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 672
    nop

    .line 656
    move-object v12, v2

    .local v12, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/16 v13, 0x180

    move v14, v13

    .local v14, "$changed$iv":I
    const-string/jumbo v6, "tooltip transition: scaling"

    .local v6, "label$iv":Ljava/lang/String;
    move-object v15, v1

    .local v15, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const/16 v16, 0x0

    .local v16, "$i$f$animateFloat":I
    const v8, -0x4fcbfb15

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(animateFloat)P(2)1165@46369L78:Transition.kt#pdpnli"

    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 720
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v17

    .local v17, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v14, 0xe

    shl-int/lit8 v2, v14, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v14, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v14, 0x3

    const v18, 0xe000

    and-int v2, v2, v18

    or-int v19, v1, v2

    .local v19, "$changed$iv$iv":I
    move-object v1, v15

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v20, 0x0

    .local v20, "$i$f$animateValue":I
    const v5, -0x880d1ef

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v19, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "it":Z
    move-object/from16 v21, p2

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .local v22, "$i$a$-animateFloat-TooltipKt$animateTooltip$2$scale$3":I
    const v5, -0x5c966d11

    move-object/from16 v8, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "C:Tooltip.kt#uh7d8r"

    invoke-static {v8, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v25

    const-string/jumbo v5, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:672)"

    if-eqz v25, :cond_1

    .line 673
    move-object/from16 v25, v4

    const v4, -0x5c966d11

    invoke-static {v4, v3, v10, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1

    .line 721
    :cond_1
    move-object/from16 v25, v4

    .line 673
    :goto_1
    const/high16 v27, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    move/from16 v28, v27

    goto :goto_2

    :cond_2
    const v28, 0x3f4ccccd    # 0.8f

    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Z
    .end local v3    # "$changed":I
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$scale$3":I
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 721
    nop

    .line 722
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v8, v19, 0x9

    and-int/lit8 v8, v8, 0x70

    .local v8, "$changed":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .local v3, "it":Z
    move-object/from16 v22, p2

    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    move-object/from16 v4, v22

    const v10, -0x5c966d11

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$i$a$-animateFloat-TooltipKt$animateTooltip$2$scale$3":I
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 673
    move-object/from16 v26, v7

    const/4 v7, -0x1

    invoke-static {v10, v8, v7, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_3

    .line 722
    :cond_4
    move-object/from16 v26, v7

    .line 673
    :goto_3
    if-eqz v3, :cond_5

    move/from16 v29, v27

    goto :goto_4

    :cond_5
    const v29, 0x3f4ccccd    # 0.8f

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Z
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v8    # "$changed":I
    .end local v28    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$scale$3":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 722
    nop

    .line 723
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v19, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v4, v9, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 725
    .local v10, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v19, 0xe

    shl-int/lit8 v5, v19, 0x9

    and-int v5, v5, v18

    or-int/2addr v4, v5

    shl-int/lit8 v5, v19, 0x6

    const/high16 v28, 0x70000

    and-int v5, v5, v28

    or-int v8, v4, v5

    move-object/from16 v7, v25

    move-object v4, v10

    move-object/from16 v25, v10

    const v10, -0x880d1ef

    .end local v10    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v25, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    move-object/from16 v5, v17

    move-object/from16 v30, v7

    move-object/from16 v10, v26

    move-object/from16 v7, p2

    const v11, -0x4fcbfb15

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 720
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v17    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v19    # "$changed$iv$iv":I
    .end local v20    # "$i$f$animateValue":I
    .end local v25    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 656
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v12    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v16    # "$i$f$animateFloat":I
    move-object v12, v4

    .line 675
    .local v12, "scale$delegate":Landroidx/compose/runtime/State;
    iget-object v1, v0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Landroidx/compose/animation/core/Transition;

    sget-object v2, Landroidx/compose/material3/TooltipKt$animateTooltip$2$alpha$2;->INSTANCE:Landroidx/compose/material3/TooltipKt$animateTooltip$2$alpha$2;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 691
    nop

    .line 675
    move-object v14, v1

    .local v14, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const-string/jumbo v6, "tooltip transition: alpha"

    const/16 v1, 0x180

    .restart local v6    # "label$iv":Ljava/lang/String;
    move v15, v1

    .local v15, "$changed$iv":I
    move-object v8, v2

    .local v8, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .restart local v16    # "$i$f$animateFloat":I
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 726
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v10

    .local v10, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v15, 0xe

    shl-int/lit8 v2, v15, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v15, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v15, 0x3

    and-int v2, v2, v18

    or-int/2addr v1, v2

    .local v1, "$changed$iv$iv":I
    move v11, v1

    .end local v1    # "$changed$iv$iv":I
    .local v11, "$changed$iv$iv":I
    move-object v1, v14

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v17, 0x0

    const v2, -0x880d1ef

    .local v17, "$i$f$animateValue":I
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v2, v30

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v11, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "it":Z
    move-object/from16 v4, p2

    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .local v5, "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    const v7, 0x7b90285b

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 692
    const-string/jumbo v0, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:691)"

    move/from16 v19, v5

    const/4 v5, -0x1

    .end local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    .local v19, "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    invoke-static {v7, v3, v5, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_5

    .line 727
    .end local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    .restart local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    :cond_7
    move/from16 v19, v5

    .line 692
    .end local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    .restart local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    :goto_5
    if-eqz v2, :cond_8

    move/from16 v0, v27

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Z
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 727
    nop

    .line 728
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v3, v11, 0x9

    and-int/lit8 v3, v3, 0x70

    .restart local v3    # "$changed":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    move-object/from16 v4, p2

    .restart local v4    # "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .restart local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 692
    const-string/jumbo v13, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:691)"

    move/from16 v19, v5

    const/4 v5, -0x1

    .end local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    .restart local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    invoke-static {v7, v3, v5, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_7

    .line 728
    .end local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    .restart local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    :cond_a
    move/from16 v19, v5

    .line 692
    .end local v5    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    .restart local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    :goto_7
    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    const/16 v27, 0x0

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v0    # "it":Z
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-animateFloat-TooltipKt$animateTooltip$2$alpha$3":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 728
    nop

    .line 729
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    shr-int/lit8 v4, v11, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v0, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 731
    .local v0, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v11, 0xe

    shl-int/lit8 v5, v11, 0x9

    and-int v5, v5, v18

    or-int/2addr v4, v5

    shl-int/lit8 v5, v11, 0x6

    and-int v5, v5, v28

    or-int v13, v4, v5

    move-object v4, v0

    move-object v5, v10

    move-object/from16 v7, p2

    move-object/from16 v18, v8

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v18, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move v8, v13

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 726
    .end local v0    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v10    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v11    # "$changed$iv$iv":I
    .end local v17    # "$i$f$animateValue":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 675
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v14    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v15    # "$changed$iv":I
    .end local v16    # "$i$f$animateFloat":I
    .end local v18    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v0, v4

    .line 694
    .local v0, "alpha$delegate":Landroidx/compose/runtime/State;
    nop

    .line 695
    invoke-static {v12}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->invoke$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v14

    .line 696
    invoke-static {v12}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->invoke$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v15

    .line 697
    invoke-static {v0}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->invoke$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v16

    .line 694
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const v34, 0x1fff8

    const/16 v35, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v13 .. v35}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 650
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
