.class final Landroidx/compose/material3/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldTransitionScope\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,433:1\n1166#2:434\n1083#2,5:435\n1166#2:440\n1083#2,5:441\n1166#2:446\n1083#2,5:447\n1083#2,5:463\n1083#2,5:479\n69#3,2:452\n71#3:458\n74#3:462\n69#3,2:468\n71#3:474\n74#3:478\n36#4:454\n36#4:470\n1116#5,3:455\n1119#5,3:459\n1116#5,3:471\n1119#5,3:475\n81#6:484\n81#6:485\n81#6:486\n81#6:487\n81#6:488\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldTransitionScope\n*L\n316#1:434\n316#1:435,5\n327#1:440\n327#1:441,5\n355#1:446\n355#1:447,5\n366#1:463,5\n376#1:479,5\n366#1:452,2\n366#1:458\n366#1:462\n376#1:468,2\n376#1:474\n376#1:478\n366#1:454\n376#1:470\n366#1:455,3\n366#1:459,3\n376#1:471,3\n376#1:475,3\n316#1:484\n327#1:485\n355#1:486\n366#1:487\n376#1:488\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u00c7\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u000b\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\r\u001a\u00020\u000e2z\u0010\u000f\u001av\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00040\u0010\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b\u00b2\u0006\n\u0010\u0014\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0017\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0018\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0008X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0016\u001a\u00020\u0008X\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/TextFieldTransitionScope;",
        "",
        "()V",
        "Transition",
        "",
        "inputState",
        "Landroidx/compose/material3/InputPhase;",
        "focusedTextStyleColor",
        "Landroidx/compose/ui/graphics/Color;",
        "unfocusedTextStyleColor",
        "contentColor",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "showLabel",
        "",
        "content",
        "Lkotlin/Function5;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "labelProgress",
        "labelTextStyleColor",
        "labelContentColor",
        "placeholderOpacity",
        "prefixSuffixOpacity",
        "Transition-DTcfvLk",
        "(Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/TextFieldTransitionScope;

    invoke-direct {v0}, Landroidx/compose/material3/TextFieldTransitionScope;-><init>()V

    sput-object v0, Landroidx/compose/material3/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$labelProgress$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 484
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

    .line 316
    return v0
.end method

.method private static final Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$placeholderOpacity$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 485
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

    .line 327
    return v0
.end method

.method private static final Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$prefixSuffixOpacity$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 486
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

    .line 355
    return v0
.end method

.method private static final Transition_DTcfvLk$lambda$7(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$labelTextStyleColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 487
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 366
    return-wide v0
.end method

.method private static final Transition_DTcfvLk$lambda$8(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$labelContentColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 488
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 376
    return-wide v0
.end method


# virtual methods
.method public final Transition-DTcfvLk(Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V
    .locals 33
    .param p1, "inputState"    # Landroidx/compose/material3/InputPhase;
    .param p2, "focusedTextStyleColor"    # J
    .param p4, "unfocusedTextStyleColor"    # J
    .param p6, "contentColor"    # Lkotlin/jvm/functions/Function3;
    .param p7, "showLabel"    # Z
    .param p8, "content"    # Lkotlin/jvm/functions/Function7;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/InputPhase;",
            "JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/InputPhase;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z",
            "Lkotlin/jvm/functions/Function7<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
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

    .line 310
    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p10

    const v0, -0x3b5033c0

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(Transition)P(3,2:c#ui.graphics.Color,5:c#ui.graphics.Color,1,4)313@12767L59,315@12868L325,326@13240L1101,354@14389L354,365@14791L299,375@15136L186,381@15332L174:TextFieldImpl.kt#uh7d8r"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p10

    .local v0, "$dirty":I
    and-int/lit8 v1, v14, 0x6

    if-nez v1, :cond_1

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, v14, 0x30

    if-nez v1, :cond_3

    move-wide/from16 v9, p2

    invoke-interface {v15, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    goto :goto_2

    :cond_3
    move-wide/from16 v9, p2

    :goto_2
    and-int/lit16 v1, v14, 0x180

    if-nez v1, :cond_5

    move-wide/from16 v7, p4

    invoke-interface {v15, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    goto :goto_4

    :cond_5
    move-wide/from16 v7, p4

    :goto_4
    and-int/lit16 v1, v14, 0xc00

    if-nez v1, :cond_7

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_5

    :cond_6
    const/16 v1, 0x400

    :goto_5
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v14, 0x6000

    if-nez v1, :cond_9

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_6

    :cond_8
    const/16 v1, 0x2000

    :goto_6
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x30000

    and-int/2addr v1, v14

    if-nez v1, :cond_b

    move-object/from16 v5, p8

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v1, 0x10000

    :goto_7
    or-int/2addr v0, v1

    goto :goto_8

    :cond_b
    move-object/from16 v5, p8

    :goto_8
    const v1, 0x12493

    and-int/2addr v1, v0

    const v2, 0x12492

    if-ne v1, v2, :cond_d

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    .line 389
    :cond_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1e

    .line 310
    :cond_d
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_e

    const v1, -0x3b5033c0

    const-string/jumbo v2, "androidx.compose.material3.TextFieldTransitionScope.Transition (TextFieldImpl.kt:309)"

    invoke-static {v1, v0, v4, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 314
    :cond_e
    and-int/lit8 v1, v0, 0xe

    or-int/lit8 v1, v1, 0x30

    const/4 v2, 0x0

    const-string/jumbo v3, "TextFieldInputState"

    invoke-static {v11, v3, v15, v1, v2}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v16

    .line 316
    .local v16, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v1, Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelProgress$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelProgress$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 317
    nop

    .line 316
    move-object v3, v1

    .local v3, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v17, v16

    .local v17, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const-string v6, "LabelProgress"

    .local v6, "label$iv":Ljava/lang/String;
    const/16 v2, 0x180

    move/from16 v18, v2

    .local v18, "$changed$iv":I
    const/16 v19, 0x0

    .local v19, "$i$f$animateFloat":I
    const v1, -0x4fcbfb15

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(animateFloat)P(2)1165@46369L78:Transition.kt#pdpnli"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 434
    sget-object v20, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static/range {v20 .. v20}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v20

    .local v20, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v21, v18, 0xe

    shl-int/lit8 v1, v18, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v1, v21, v1

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    const v23, 0xe000

    and-int v2, v2, v23

    or-int/2addr v2, v1

    const v9, -0x4fcbfb15

    .local v2, "$changed$iv$iv":I
    move-object/from16 v1, v17

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move v10, v2

    .end local v2    # "$changed$iv$iv":I
    .local v10, "$changed$iv$iv":I
    const/16 v22, 0x0

    .local v22, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v25

    shr-int/lit8 v26, v10, 0x9

    and-int/lit8 v2, v26, 0x70

    .local v2, "$changed":I
    check-cast v25, Landroidx/compose/material3/InputPhase;

    .local v25, "it":Landroidx/compose/material3/InputPhase;
    move-object/from16 v26, v15

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    move-object/from16 v29, v3

    .end local v3    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v28, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    .local v29, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const v3, 0xe53e412

    move-object/from16 v30, v4

    move-object/from16 v4, v26

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C:TextFieldImpl.kt#uh7d8r"

    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 320
    const-string/jumbo v5, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:319)"

    const v7, 0xe53e412

    const/4 v8, -0x1

    invoke-static {v7, v2, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    sget-object v5, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/16 v31, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    packed-switch v5, :pswitch_data_0

    .line 323
    move v14, v0

    .end local v0    # "$dirty":I
    .local v14, "$dirty":I
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :pswitch_0
    move/from16 v5, v32

    goto :goto_a

    .line 322
    :pswitch_1
    move/from16 v5, v31

    goto :goto_a

    .line 321
    :pswitch_2
    move/from16 v5, v32

    .line 320
    :goto_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_10
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "it":Landroidx/compose/material3/InputPhase;
    .end local v28    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 435
    const/16 v7, 0x180

    const v8, -0x880d1ef

    .line 436
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    shr-int/lit8 v5, v10, 0x9

    and-int/lit8 v5, v5, 0x70

    .local v5, "$changed":I
    check-cast v4, Landroidx/compose/material3/InputPhase;

    .local v4, "it":Landroidx/compose/material3/InputPhase;
    move-object/from16 v21, v15

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    move-object/from16 v7, v21

    const v8, 0xe53e412

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 320
    move-object/from16 v26, v3

    const-string/jumbo v3, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:319)"

    const/4 v11, -0x1

    invoke-static {v8, v5, v11, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_b

    .line 436
    :cond_11
    move-object/from16 v26, v3

    const/4 v11, -0x1

    .line 320
    :goto_b
    sget-object v3, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_1

    .line 323
    move v14, v0

    .end local v0    # "$dirty":I
    .restart local v14    # "$dirty":I
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :pswitch_3
    move/from16 v3, v32

    goto :goto_c

    .line 322
    :pswitch_4
    move/from16 v3, v31

    goto :goto_c

    .line 321
    :pswitch_5
    move/from16 v3, v32

    .line 320
    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "it":Landroidx/compose/material3/InputPhase;
    .end local v5    # "$changed":I
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 436
    move-object/from16 v7, v26

    move-object/from16 v8, v29

    .line 437
    .end local v29    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    .local v8, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v10, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 439
    .local v25, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v10, 0xe

    shl-int/lit8 v5, v10, 0x9

    and-int v5, v5, v23

    or-int/2addr v4, v5

    shl-int/lit8 v5, v10, 0x6

    const/high16 v26, 0x70000

    and-int v5, v5, v26

    or-int v28, v4, v5

    move v5, v11

    move-object/from16 v11, v30

    move-object/from16 v4, v25

    move/from16 p9, v10

    move v10, v5

    .end local v10    # "$changed$iv$iv":I
    .local p9, "$changed$iv$iv":I
    move-object/from16 v5, v20

    move-object v10, v7

    const/16 v27, 0x180

    move-object v7, v15

    move-object/from16 v21, v8

    const v14, -0x880d1ef

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v21, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v8, v28

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 434
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v20    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v22    # "$i$f$animateValue":I
    .end local v25    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local p9    # "$changed$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 316
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v17    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v18    # "$changed$iv":I
    .end local v19    # "$i$f$animateFloat":I
    .end local v21    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v17, v4

    .line 327
    .local v17, "labelProgress$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material3/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 328
    nop

    .line 327
    move-object/from16 v18, v16

    .local v18, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    move-object v8, v1

    .restart local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const-string/jumbo v6, "PlaceholderOpacity"

    .restart local v6    # "label$iv":Ljava/lang/String;
    move/from16 v19, v27

    .local v19, "$changed$iv":I
    const/16 v20, 0x0

    const v1, -0x4fcbfb15

    .local v20, "$i$f$animateFloat":I
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 440
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v21

    .local v21, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v19, 0xe

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int v2, v2, v23

    or-int v22, v1, v2

    .local v22, "$changed$iv$iv":I
    move-object/from16 v1, v18

    .restart local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v25, 0x0

    .local v25, "$i$f$animateValue":I
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v22, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Landroidx/compose/material3/InputPhase;

    .local v2, "it":Landroidx/compose/material3/InputPhase;
    move-object v4, v15

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .local v5, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    const v7, 0x7b3bbb73

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 348
    const-string/jumbo v14, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:347)"

    move/from16 p9, v5

    const/4 v5, -0x1

    .end local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .local p9, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-static {v7, v3, v5, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_d

    .line 441
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    :cond_13
    move/from16 p9, v5

    .line 348
    .end local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    :goto_d
    sget-object v5, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v14

    aget v5, v5, v14

    packed-switch v5, :pswitch_data_2

    .line 351
    move v14, v0

    .end local v0    # "$dirty":I
    .restart local v14    # "$dirty":I
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :pswitch_6
    move/from16 v5, v31

    goto :goto_e

    .line 350
    :pswitch_7
    if-eqz v13, :cond_14

    move/from16 v5, v31

    goto :goto_e

    :cond_14
    move/from16 v5, v32

    goto :goto_e

    .line 349
    :pswitch_8
    move/from16 v5, v32

    .line 348
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Landroidx/compose/material3/InputPhase;
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 441
    nop

    .line 442
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v4, v22, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    check-cast v3, Landroidx/compose/material3/InputPhase;

    .local v3, "it":Landroidx/compose/material3/InputPhase;
    move-object v5, v15

    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .local v14, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 348
    move/from16 p9, v14

    .end local v14    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    const-string/jumbo v14, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:347)"

    const/4 v12, -0x1

    invoke-static {v7, v4, v12, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_f

    .line 442
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local v14    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    :cond_16
    move/from16 p9, v14

    .line 348
    .end local v14    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    :goto_f
    sget-object v7, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v12

    aget v7, v7, v12

    packed-switch v7, :pswitch_data_3

    .line 351
    move v14, v0

    .end local v0    # "$dirty":I
    .local v14, "$dirty":I
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :pswitch_9
    move/from16 v7, v31

    goto :goto_10

    .line 350
    :pswitch_a
    if-eqz v13, :cond_17

    move/from16 v7, v31

    goto :goto_10

    :cond_17
    move/from16 v7, v32

    goto :goto_10

    .line 349
    :pswitch_b
    move/from16 v7, v32

    .line 348
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Landroidx/compose/material3/InputPhase;
    .end local v4    # "$changed":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 442
    nop

    .line 443
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v22, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 445
    .local v12, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v22, 0xe

    shl-int/lit8 v5, v22, 0x9

    and-int v5, v5, v23

    or-int/2addr v4, v5

    shl-int/lit8 v5, v22, 0x6

    and-int v5, v5, v26

    or-int v14, v4, v5

    move-object v4, v12

    move-object/from16 v5, v21

    move-object v7, v15

    move-object/from16 v30, v8

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v30, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move v8, v14

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 440
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v12    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v21    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v22    # "$changed$iv$iv":I
    .end local v25    # "$i$f$animateValue":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 327
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v18    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$animateFloat":I
    .end local v30    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v12, v4

    .line 355
    .local v12, "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material3/TextFieldTransitionScope$Transition$prefixSuffixOpacity$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$prefixSuffixOpacity$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 356
    nop

    .line 355
    move-object/from16 v14, v16

    .local v14, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    move-object v8, v1

    .restart local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v18, v27

    .local v18, "$changed$iv":I
    const-string/jumbo v6, "PrefixSuffixOpacity"

    .restart local v6    # "label$iv":Ljava/lang/String;
    const/16 v19, 0x0

    const v1, -0x4fcbfb15

    .local v19, "$i$f$animateFloat":I
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 446
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v11

    .local v11, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v18, 0xe

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int v2, v2, v23

    or-int v20, v1, v2

    .local v20, "$changed$iv$iv":I
    move-object v1, v14

    .restart local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v21, 0x0

    const v2, -0x880d1ef

    .local v21, "$i$f$animateValue":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v20, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Landroidx/compose/material3/InputPhase;

    .local v2, "it":Landroidx/compose/material3/InputPhase;
    move-object v4, v15

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .local v5, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    const v7, 0x58f519

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 359
    move/from16 p9, v5

    .end local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .local p9, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    const-string/jumbo v5, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:358)"

    move-object/from16 v22, v14

    const/4 v14, -0x1

    .end local v14    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .local v22, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    invoke-static {v7, v3, v14, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_11

    .line 447
    .end local v22    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .restart local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .restart local v14    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    :cond_19
    move/from16 p9, v5

    move-object/from16 v22, v14

    .line 359
    .end local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .end local v14    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .restart local v22    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .restart local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    :goto_11
    sget-object v5, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v14

    aget v5, v5, v14

    packed-switch v5, :pswitch_data_4

    .line 362
    move v14, v0

    .end local v0    # "$dirty":I
    .local v14, "$dirty":I
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :pswitch_c
    move/from16 v5, v32

    goto :goto_12

    .line 361
    :pswitch_d
    if-eqz v13, :cond_1a

    move/from16 v5, v31

    goto :goto_12

    :cond_1a
    move/from16 v5, v32

    goto :goto_12

    .line 360
    :pswitch_e
    move/from16 v5, v32

    .line 359
    :goto_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Landroidx/compose/material3/InputPhase;
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 447
    nop

    .line 448
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v4, v20, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    check-cast v3, Landroidx/compose/material3/InputPhase;

    .local v3, "it":Landroidx/compose/material3/InputPhase;
    move-object v5, v15

    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .local v14, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 359
    move/from16 p9, v14

    .end local v14    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .restart local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    const-string/jumbo v14, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:358)"

    move-object/from16 v24, v12

    const/4 v12, -0x1

    .end local v12    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .local v24, "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    invoke-static {v7, v4, v12, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_13

    .line 448
    .end local v24    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .restart local v12    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .restart local v14    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    :cond_1c
    move-object/from16 v24, v12

    move/from16 p9, v14

    .line 359
    .end local v12    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v14    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    .restart local v24    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .restart local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    :goto_13
    sget-object v7, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v12

    aget v7, v7, v12

    packed-switch v7, :pswitch_data_5

    .line 362
    move v14, v0

    .end local v0    # "$dirty":I
    .local v14, "$dirty":I
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :pswitch_f
    move/from16 v31, v32

    goto :goto_14

    .line 361
    :pswitch_10
    if-eqz v13, :cond_1d

    goto :goto_14

    :cond_1d
    move/from16 v31, v32

    goto :goto_14

    .line 360
    :pswitch_11
    move/from16 v31, v32

    .line 359
    :goto_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1e
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Landroidx/compose/material3/InputPhase;
    .end local v4    # "$changed":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p9    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$prefixSuffixOpacity$3":I
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 448
    nop

    .line 449
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v20, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 451
    .local v12, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v20, 0xe

    shl-int/lit8 v5, v20, 0x9

    and-int v5, v5, v23

    or-int/2addr v4, v5

    shl-int/lit8 v5, v20, 0x6

    and-int v5, v5, v26

    or-int v14, v4, v5

    move-object v4, v12

    move-object v5, v11

    move-object v7, v15

    move-object/from16 v25, v8

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v25, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move v8, v14

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 446
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v11    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v12    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v20    # "$changed$iv$iv":I
    .end local v21    # "$i$f$animateValue":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 355
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v18    # "$changed$iv":I
    .end local v19    # "$i$f$animateFloat":I
    .end local v22    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v25    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v11, v4

    .line 366
    .local v11, "prefixSuffixOpacity$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelTextStyleColor$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelTextStyleColor$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 368
    nop

    .line 366
    move-object/from16 v12, v16

    .local v12, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    const-string v6, "LabelTextStyleColor"

    .restart local v6    # "label$iv":Ljava/lang/String;
    move-object v14, v1

    .local v14, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v18, v27

    .restart local v18    # "$changed$iv":I
    const/16 v19, 0x0

    .local v19, "$i$f$animateColor":I
    const v1, -0x739d657f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v12}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, v18, 0x6

    and-int/lit8 v2, v2, 0x70

    .local v2, "$changed":I
    check-cast v1, Landroidx/compose/material3/InputPhase;

    .local v1, "it":Landroidx/compose/material3/InputPhase;
    move-object v3, v15

    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .local v4, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    const v5, -0x5780e90e

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 370
    const-string/jumbo v7, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:369)"

    const/4 v8, -0x1

    invoke-static {v5, v2, v8, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    sget-object v7, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 371
    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    move-wide/from16 v7, p2

    goto :goto_15

    .line 372
    :cond_20
    move-wide/from16 v7, p4

    .line 370
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_21
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 452
    .end local v1    # "it":Landroidx/compose/material3/InputPhase;
    .end local v2    # "$changed":I
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v8

    .line 453
    .local v8, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const/16 v1, 0x8

    .local v1, "$changed$iv$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, 0x44faf204

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 454
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv$iv":Z
    move-object v4, v15

    .local v4, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 455
    .local v7, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 456
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v3, :cond_23

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v1

    .end local v1    # "$changed$iv$iv":I
    .local v22, "$changed$iv$iv":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_22

    goto :goto_16

    .line 461
    :cond_22
    move-object v1, v5

    goto :goto_17

    .line 456
    .end local v22    # "$changed$iv$iv":I
    .restart local v1    # "$changed$iv$iv":I
    :cond_23
    move/from16 v22, v1

    .line 457
    .end local v1    # "$changed$iv$iv":I
    .restart local v22    # "$changed$iv$iv":I
    :goto_16
    const/4 v1, 0x0

    .line 458
    .local v1, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 v25, v1

    .end local v1    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    .local v25, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    invoke-static/range {v21 .. v21}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverter;

    .line 457
    .end local v25    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 459
    .local v1, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 460
    nop

    .line 456
    .end local v1    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 455
    .end local v5    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 454
    .end local v3    # "invalid$iv$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 453
    .end local v2    # "$i$f$remember":I
    .end local v22    # "$changed$iv$iv":I
    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/animation/core/TwoWayConverter;

    .line 462
    .local v20, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v18, 0xe

    or-int/lit8 v1, v1, 0x40

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int v2, v2, v23

    or-int v21, v1, v2

    .local v21, "$changed$iv$iv":I
    move-object v1, v12

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v22, 0x0

    const v2, -0x880d1ef

    .local v22, "$i$f$animateValue":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v21, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Landroidx/compose/material3/InputPhase;

    .local v2, "it":Landroidx/compose/material3/InputPhase;
    move-object v4, v15

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    const v7, -0x5780e90e

    .local v5, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 370
    move/from16 v25, v5

    .end local v5    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .local v25, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    const-string/jumbo v5, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:369)"

    move-object/from16 v30, v8

    const/4 v8, -0x1

    .end local v8    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v30, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    invoke-static {v7, v3, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_18

    .line 463
    .end local v25    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .end local v30    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .restart local v5    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .restart local v8    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    :cond_24
    move/from16 v25, v5

    move-object/from16 v30, v8

    .line 370
    .end local v5    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .end local v8    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .restart local v25    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .restart local v30    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    :goto_18
    sget-object v5, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v7

    aget v5, v5, v7

    .line 371
    const/4 v7, 0x1

    if-ne v5, v7, :cond_25

    move-wide/from16 v7, p2

    goto :goto_19

    .line 372
    :cond_25
    move-wide/from16 v7, p4

    .line 370
    :goto_19
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_26
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Landroidx/compose/material3/InputPhase;
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    .line 463
    nop

    .line 464
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v4, v21, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    check-cast v3, Landroidx/compose/material3/InputPhase;

    .local v3, "it":Landroidx/compose/material3/InputPhase;
    move-object v5, v15

    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    const v8, -0x5780e90e

    .local v7, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 370
    const-string/jumbo v10, "androidx.compose.material3.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:369)"

    move/from16 p9, v7

    const/4 v7, -0x1

    .end local v7    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .local p9, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static {v8, v4, v7, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1a

    .line 464
    .end local p9    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .restart local v7    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    :cond_27
    move/from16 p9, v7

    .line 370
    .end local v7    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .restart local p9    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    :goto_1a
    sget-object v7, Landroidx/compose/material3/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material3/InputPhase;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 371
    const/4 v8, 0x1

    if-ne v7, v8, :cond_28

    move-wide/from16 v7, p2

    goto :goto_1b

    .line 372
    :cond_28
    move-wide/from16 v7, p4

    .line 370
    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_29
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Landroidx/compose/material3/InputPhase;
    .end local v4    # "$changed":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p9    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    .line 464
    nop

    .line 465
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v21, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 467
    .local v10, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v21, 0xe

    shl-int/lit8 v5, v21, 0x9

    and-int v5, v5, v23

    or-int/2addr v4, v5

    shl-int/lit8 v5, v21, 0x6

    and-int v5, v5, v26

    or-int v8, v4, v5

    move-object v4, v10

    move-object/from16 v5, v20

    move-object v7, v15

    move-object/from16 v25, v30

    .end local v30    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v25, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 462
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v10    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v21    # "$changed$iv$iv":I
    .end local v22    # "$i$f$animateValue":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 366
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v12    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v14    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v18    # "$changed$iv":I
    .end local v19    # "$i$f$animateColor":I
    .end local v20    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v25    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v10, v4

    .line 376
    .local v10, "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelContentColor$2;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope$Transition$labelContentColor$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 378
    and-int/lit16 v2, v0, 0x1c00

    move/from16 v3, v27

    or-int/2addr v2, v3

    .line 376
    move-object v12, v1

    .local v12, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v14, v16

    .local v14, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v18, v2

    .restart local v18    # "$changed$iv":I
    const-string v6, "LabelContentColor"

    .restart local v6    # "label$iv":Ljava/lang/String;
    const/16 v19, 0x0

    .restart local v19    # "$i$f$animateColor":I
    const v1, -0x739d657f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v14}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, v18, 0x6

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v8, p6

    invoke-interface {v8, v1, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v7

    .line 469
    .local v7, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const/16 v1, 0x8

    .local v1, "$changed$iv$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, 0x44faf204

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 470
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv$iv":Z
    move-object v4, v15

    .local v4, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 471
    .local v5, "$i$f$cache":I
    move/from16 p9, v1

    .end local v1    # "$changed$iv$iv":I
    .local p9, "$changed$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 472
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v3, :cond_2b

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v2

    .end local v2    # "$i$f$remember":I
    .local v22, "$i$f$remember":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2a

    goto :goto_1c

    .line 477
    :cond_2a
    move-object/from16 v25, v1

    goto :goto_1d

    .line 472
    .end local v22    # "$i$f$remember":I
    .restart local v2    # "$i$f$remember":I
    :cond_2b
    move/from16 v22, v2

    .line 473
    .end local v2    # "$i$f$remember":I
    .restart local v22    # "$i$f$remember":I
    :goto_1c
    const/4 v2, 0x0

    .line 474
    .local v2, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 v25, v1

    .end local v1    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v25, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverter;

    .line 473
    .end local v2    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 475
    .local v1, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 476
    nop

    .line 472
    .end local v1    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_1d
    nop

    .line 471
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v25    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 470
    .end local v3    # "invalid$iv$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 469
    .end local v22    # "$i$f$remember":I
    .end local p9    # "$changed$iv$iv":I
    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/animation/core/TwoWayConverter;

    .line 478
    .local v20, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v18, 0xe

    or-int/lit8 v1, v1, 0x40

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int v2, v2, v23

    or-int/2addr v2, v1

    .local v2, "$changed$iv$iv":I
    move-object v1, v14

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v21, v2

    .end local v2    # "$changed$iv$iv":I
    .restart local v21    # "$changed$iv$iv":I
    const/16 v22, 0x0

    const v2, -0x880d1ef

    .local v22, "$i$f$animateValue":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v21, 0x9

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 480
    .local v9, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v21, 0x9

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 481
    .local v25, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v3, v21, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 483
    .local v27, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v21, 0xe

    shl-int/lit8 v3, v21, 0x9

    and-int v3, v3, v23

    or-int/2addr v2, v3

    shl-int/lit8 v3, v21, 0x6

    and-int v3, v3, v26

    or-int v23, v2, v3

    move-object v2, v9

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v5, v20

    move-object/from16 v28, v7

    .end local v7    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v28, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v7, v15

    move/from16 v8, v23

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 478
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v9    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v21    # "$changed$iv$iv":I
    .end local v22    # "$i$f$animateValue":I
    .end local v25    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v27    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 376
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v12    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v14    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v18    # "$changed$iv":I
    .end local v19    # "$i$f$animateColor":I
    .end local v20    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v28    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v9, v2

    .line 382
    .local v9, "labelContentColor$delegate":Landroidx/compose/runtime/State;
    nop

    .line 383
    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 384
    invoke-static {v10}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$7(Landroidx/compose/runtime/State;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    .line 385
    invoke-static {v9}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$8(Landroidx/compose/runtime/State;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    .line 386
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 387
    invoke-static {v11}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    and-int v1, v0, v26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 382
    move-object/from16 v1, p8

    invoke-interface/range {v1 .. v8}, Lkotlin/jvm/functions/Function7;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 389
    .end local v9    # "labelContentColor$delegate":Landroidx/compose/runtime/State;
    .end local v10    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    .end local v11    # "prefixSuffixOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v16    # "transition":Landroidx/compose/animation/core/Transition;
    .end local v17    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .end local v24    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    :cond_2c
    :goto_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_2d

    new-instance v12, Landroidx/compose/material3/TextFieldTransitionScope$Transition$1;

    move v14, v0

    .end local v0    # "$dirty":I
    .local v14, "$dirty":I
    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/TextFieldTransitionScope$Transition$1;-><init>(Landroidx/compose/material3/TextFieldTransitionScope;Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;I)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1f

    .end local v14    # "$dirty":I
    .restart local v0    # "$dirty":I
    :cond_2d
    move v14, v0

    .end local v0    # "$dirty":I
    .restart local v14    # "$dirty":I
    :goto_1f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
