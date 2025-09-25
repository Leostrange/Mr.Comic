.class final Landroidx/compose/material/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldTransitionScope\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,369:1\n1166#2:370\n1083#2,5:371\n1166#2:376\n1083#2,5:377\n1083#2,5:393\n1083#2,5:409\n69#3,2:382\n71#3:388\n74#3:392\n69#3,2:398\n71#3:404\n74#3:408\n36#4:384\n36#4:400\n1116#5,3:385\n1119#5,3:389\n1116#5,3:401\n1119#5,3:405\n81#6:414\n81#6:415\n81#6:416\n81#6:417\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldTransitionScope\n*L\n273#1:370\n273#1:371,5\n284#1:376\n284#1:377,5\n312#1:393,5\n322#1:409,5\n312#1:382,2\n312#1:388\n312#1:392\n322#1:398,2\n322#1:404\n322#1:408\n312#1:384\n322#1:400\n312#1:385,3\n312#1:389,3\n322#1:401,3\n322#1:405,3\n273#1:414\n284#1:415\n312#1:416\n322#1:417\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u00b2\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u000b\u00a2\u0006\u0002\u0008\u000c2\u0006\u0010\r\u001a\u00020\u000e2e\u0010\u000f\u001aa\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00040\u0010\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001a\u00b2\u0006\n\u0010\u0014\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0017\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0008X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0016\u001a\u00020\u0008X\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/material/TextFieldTransitionScope;",
        "",
        "()V",
        "Transition",
        "",
        "inputState",
        "Landroidx/compose/material/InputPhase;",
        "focusedTextStyleColor",
        "Landroidx/compose/ui/graphics/Color;",
        "unfocusedTextStyleColor",
        "contentColor",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "showLabel",
        "",
        "content",
        "Lkotlin/Function4;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "labelProgress",
        "labelTextStyleColor",
        "labelContentColor",
        "placeholderOpacity",
        "Transition-DTcfvLk",
        "(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;Landroidx/compose/runtime/Composer;I)V",
        "material_release"
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
.field public static final INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope;

    invoke-direct {v0}, Landroidx/compose/material/TextFieldTransitionScope;-><init>()V

    sput-object v0, Landroidx/compose/material/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 253
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

    .line 273
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 414
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

    .line 273
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

    .line 284
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 415
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

    .line 284
    return v0
.end method

.method private static final Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)J
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

    .line 312
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 416
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

    .line 312
    return-wide v0
.end method

.method private static final Transition_DTcfvLk$lambda$6(Landroidx/compose/runtime/State;)J
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

    .line 322
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 417
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

    .line 322
    return-wide v0
.end method


# virtual methods
.method public final Transition-DTcfvLk(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;Landroidx/compose/runtime/Composer;I)V
    .locals 34
    .param p1, "inputState"    # Landroidx/compose/material/InputPhase;
    .param p2, "focusedTextStyleColor"    # J
    .param p4, "unfocusedTextStyleColor"    # J
    .param p6, "contentColor"    # Lkotlin/jvm/functions/Function3;
    .param p7, "showLabel"    # Z
    .param p8, "content"    # Lkotlin/jvm/functions/Function6;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/InputPhase;",
            "JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/InputPhase;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
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

    .line 267
    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p10

    const v0, 0x76899c6a

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Transition)P(3,2:c#ui.graphics.Color,5:c#ui.graphics.Color,1,4)270@10987L59,272@11088L325,283@11460L1101,311@12609L299,321@12954L186,327@13150L140:TextFieldImpl.kt#jmzs0o"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

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

    move-wide/from16 v9, p2

    invoke-interface {v15, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    goto :goto_2

    :cond_3
    move-wide/from16 v9, p2

    :goto_2
    and-int/lit16 v2, v14, 0x380

    if-nez v2, :cond_5

    move-wide/from16 v7, p4

    invoke-interface {v15, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    goto :goto_4

    :cond_5
    move-wide/from16 v7, p4

    :goto_4
    and-int/lit16 v2, v14, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_5

    :cond_6
    const/16 v2, 0x400

    :goto_5
    or-int/2addr v1, v2

    :cond_7
    const v16, 0xe000

    and-int v2, v14, v16

    if-nez v2, :cond_9

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_6

    :cond_8
    const/16 v2, 0x2000

    :goto_6
    or-int/2addr v1, v2

    :cond_9
    const/high16 v17, 0x70000

    and-int v2, v14, v17

    if-nez v2, :cond_b

    move-object/from16 v5, p8

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v2, 0x10000

    :goto_7
    or-int/2addr v1, v2

    goto :goto_8

    :cond_b
    move-object/from16 v5, p8

    :goto_8
    move v4, v1

    .end local v1    # "$dirty":I
    .local v4, "$dirty":I
    const v1, 0x5b6db

    and-int/2addr v1, v4

    const v2, 0x12492

    if-ne v1, v2, :cond_d

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    .line 334
    :cond_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v13, v4

    goto/16 :goto_18

    .line 267
    :cond_d
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "androidx.compose.material.TextFieldTransitionScope.Transition (TextFieldImpl.kt:266)"

    invoke-static {v0, v4, v3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 271
    :cond_e
    and-int/lit8 v0, v4, 0xe

    or-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const-string/jumbo v2, "TextFieldInputState"

    invoke-static {v11, v2, v15, v0, v1}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 273
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v1, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 274
    nop

    .line 273
    move-object v2, v1

    .local v2, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v18, v0

    .local v18, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const-string v6, "LabelProgress"

    .local v6, "label$iv":Ljava/lang/String;
    const/16 v1, 0x180

    move/from16 v19, v1

    .local v19, "$changed$iv":I
    const/16 v20, 0x0

    .local v20, "$i$f$animateFloat":I
    const v1, -0x4fcbfb15

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateFloat)P(2)1165@46369L78:Transition.kt#pdpnli"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 370
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v21

    .local v21, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v19, 0xe

    shl-int/lit8 v3, v19, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v1, v3

    shl-int/lit8 v3, v19, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v1, v3

    shl-int/lit8 v3, v19, 0x3

    and-int v3, v3, v16

    or-int/2addr v3, v1

    const/16 v23, 0x180

    .local v3, "$changed$iv$iv":I
    move-object/from16 v1, v18

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v24, v3

    .end local v3    # "$changed$iv$iv":I
    .local v24, "$changed$iv$iv":I
    const/16 v25, 0x0

    .local v25, "$i$f$animateValue":I
    const v3, -0x880d1ef

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    shr-int/lit8 v26, v24, 0x9

    and-int/lit8 v3, v26, 0x70

    .local v3, "$changed":I
    check-cast v10, Landroidx/compose/material/InputPhase;

    .local v10, "it":Landroidx/compose/material/InputPhase;
    move-object/from16 v26, v15

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    move/from16 v28, v4

    .end local v4    # "$dirty":I
    .local v27, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    .local v28, "$dirty":I
    const v4, -0x4505bda8

    move-object/from16 v29, v2

    move-object/from16 v2, v26

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C:TextFieldImpl.kt#jmzs0o"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 277
    const-string/jumbo v5, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:276)"

    const v7, -0x4505bda8

    const/4 v8, -0x1

    invoke-static {v7, v3, v8, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    sget-object v5, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    packed-switch v5, :pswitch_data_0

    .line 280
    new-instance v4, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v4}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v4

    :pswitch_0
    move/from16 v5, v31

    goto :goto_a

    .line 279
    :pswitch_1
    move/from16 v5, v30

    goto :goto_a

    .line 278
    :pswitch_2
    move/from16 v5, v31

    .line 277
    :goto_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v3    # "$changed":I
    .end local v10    # "it":Landroidx/compose/material/InputPhase;
    .end local v27    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 371
    move-object/from16 v10, v29

    .line 372
    .end local v29    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    .local v10, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v5, v24, 0x9

    and-int/lit8 v5, v5, 0x70

    .local v5, "$changed":I
    check-cast v3, Landroidx/compose/material/InputPhase;

    .local v3, "it":Landroidx/compose/material/InputPhase;
    move-object v7, v15

    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    move/from16 v27, v8

    const v8, -0x4505bda8

    .restart local v27    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 277
    move-object/from16 v26, v4

    const-string/jumbo v4, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:276)"

    const/4 v11, -0x1

    invoke-static {v8, v5, v11, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_b

    .line 372
    :cond_11
    move-object/from16 v26, v4

    const/4 v11, -0x1

    .line 277
    :goto_b
    sget-object v4, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_1

    .line 280
    move-object/from16 v23, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .local v23, "transition":Landroidx/compose/animation/core/Transition;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v23    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :pswitch_3
    move/from16 v4, v31

    goto :goto_c

    .line 279
    :pswitch_4
    move/from16 v4, v30

    goto :goto_c

    .line 278
    :pswitch_5
    move/from16 v4, v31

    .line 277
    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Landroidx/compose/material/InputPhase;
    .end local v5    # "$changed":I
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$labelProgress$3":I
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 372
    move v8, v11

    const v11, -0x880d1ef

    .line 373
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v24, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 375
    .local v22, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v24, 0xe

    shl-int/lit8 v5, v24, 0x9

    and-int v5, v5, v16

    or-int/2addr v4, v5

    shl-int/lit8 v5, v24, 0x6

    and-int v5, v5, v17

    or-int v27, v4, v5

    move-object/from16 v5, v26

    move/from16 v7, v28

    .end local v28    # "$dirty":I
    .local v7, "$dirty":I
    move-object/from16 v4, v22

    move-object/from16 v32, v5

    move-object/from16 v5, v21

    move/from16 v33, v7

    .end local v7    # "$dirty":I
    .local v33, "$dirty":I
    move-object v7, v15

    move/from16 v8, v27

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 370
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v21    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v22    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v24    # "$changed$iv$iv":I
    .end local v25    # "$i$f$animateValue":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 273
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v10    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v18    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$animateFloat":I
    move-object v10, v4

    .line 284
    .local v10, "labelProgress$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 285
    nop

    .line 284
    move-object/from16 v18, v0

    .restart local v18    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    move-object v8, v1

    .local v8, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const-string/jumbo v6, "PlaceholderOpacity"

    .restart local v6    # "label$iv":Ljava/lang/String;
    move/from16 v19, v23

    .restart local v19    # "$changed$iv":I
    const/16 v20, 0x0

    .restart local v20    # "$i$f$animateFloat":I
    const v1, -0x4fcbfb15

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateFloat)P(2)1165@46369L78:Transition.kt#pdpnli"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 376
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v21

    .restart local v21    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v19, 0xe

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int v2, v2, v16

    or-int v22, v1, v2

    .local v22, "$changed$iv$iv":I
    move-object/from16 v1, v18

    .restart local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v24, 0x0

    .local v24, "$i$f$animateValue":I
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v22, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Landroidx/compose/material/InputPhase;

    .local v2, "it":Landroidx/compose/material/InputPhase;
    move-object v4, v15

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .local v5, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    const v7, -0x52068529

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v11, v32

    invoke-static {v4, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 305
    move/from16 v25, v5

    .end local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .local v25, "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    const-string/jumbo v5, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:304)"

    const/4 v14, -0x1

    invoke-static {v7, v3, v14, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_d

    .line 377
    .end local v25    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    :cond_13
    move/from16 v25, v5

    const/4 v14, -0x1

    .line 305
    .end local v5    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    .restart local v25    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    :goto_d
    sget-object v5, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v26

    aget v5, v5, v26

    packed-switch v5, :pswitch_data_2

    .line 308
    move-object/from16 v23, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v23    # "transition":Landroidx/compose/animation/core/Transition;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v23    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :pswitch_6
    move/from16 v5, v30

    goto :goto_e

    .line 307
    :pswitch_7
    if-eqz v13, :cond_14

    move/from16 v5, v30

    goto :goto_e

    :cond_14
    move/from16 v5, v31

    goto :goto_e

    .line 306
    :pswitch_8
    move/from16 v5, v31

    .line 305
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Landroidx/compose/material/InputPhase;
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 377
    nop

    .line 378
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v4, v22, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    check-cast v3, Landroidx/compose/material/InputPhase;

    .local v3, "it":Landroidx/compose/material/InputPhase;
    move-object v5, v15

    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .restart local v25    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_16

    .line 305
    move-object/from16 v26, v10

    .end local v10    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .local v26, "labelProgress$delegate":Landroidx/compose/runtime/State;
    const-string/jumbo v10, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:304)"

    invoke-static {v7, v4, v14, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_f

    .line 378
    .end local v26    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .restart local v10    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    :cond_16
    move-object/from16 v26, v10

    .line 305
    .end local v10    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    .restart local v26    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    :goto_f
    sget-object v7, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_3

    .line 308
    move-object/from16 v23, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v23    # "transition":Landroidx/compose/animation/core/Transition;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .end local v23    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v0    # "transition":Landroidx/compose/animation/core/Transition;
    :pswitch_9
    goto :goto_10

    .line 307
    :pswitch_a
    if-eqz v13, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v30, v31

    goto :goto_10

    .line 306
    :pswitch_b
    move/from16 v30, v31

    .line 305
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Landroidx/compose/material/InputPhase;
    .end local v4    # "$changed":I
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-animateFloat-TextFieldTransitionScope$Transition$placeholderOpacity$3":I
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 378
    nop

    .line 379
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v22, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 381
    .local v10, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v22, 0xe

    shl-int/lit8 v5, v22, 0x9

    and-int v5, v5, v16

    or-int/2addr v4, v5

    shl-int/lit8 v5, v22, 0x6

    and-int v5, v5, v17

    or-int v25, v4, v5

    move-object v4, v10

    move-object/from16 v5, v21

    move-object v7, v15

    move-object/from16 v27, v8

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v27, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v8, v25

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 376
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v10    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v21    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v22    # "$changed$iv$iv":I
    .end local v24    # "$i$f$animateValue":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 284
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v18    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$animateFloat":I
    .end local v27    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v10, v4

    .line 312
    .local v10, "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 314
    nop

    .line 312
    move-object/from16 v18, v0

    .local v18, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    move-object v8, v1

    .restart local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v19, v23

    .restart local v19    # "$changed$iv":I
    const-string v6, "LabelTextStyleColor"

    .restart local v6    # "label$iv":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "$i$f$animateColor":I
    const v1, -0x739d657f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, v19, 0x6

    and-int/lit8 v2, v2, 0x70

    .local v2, "$changed":I
    check-cast v1, Landroidx/compose/material/InputPhase;

    .local v1, "it":Landroidx/compose/material/InputPhase;
    move-object v3, v15

    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .local v4, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    const v5, -0x58d2cc88

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    const-string/jumbo v5, "androidx.compose.material.TextFieldTransitionScope.Transition.<anonymous> (TextFieldImpl.kt:315)"

    if-eqz v7, :cond_19

    .line 316
    const v7, -0x58d2cc88

    invoke-static {v7, v2, v14, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    sget-object v7, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v22

    aget v7, v7, v22

    .line 317
    const/4 v14, 0x1

    if-ne v7, v14, :cond_1a

    move-wide/from16 v24, p2

    goto :goto_11

    .line 318
    :cond_1a
    move-wide/from16 v24, p4

    .line 316
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 382
    .end local v1    # "it":Landroidx/compose/material/InputPhase;
    .end local v2    # "$changed":I
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v7

    .line 383
    .local v7, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const/16 v1, 0x8

    .local v1, "$changed$iv$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, 0x44faf204

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 384
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv$iv":Z
    move-object v4, v15

    .local v4, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 385
    .local v22, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 386
    .local v25, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v3, :cond_1d

    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v1

    .end local v1    # "$changed$iv$iv":I
    .local v28, "$changed$iv$iv":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_1c

    goto :goto_12

    .line 391
    :cond_1c
    move-object v1, v14

    goto :goto_13

    .line 386
    .end local v28    # "$changed$iv$iv":I
    .restart local v1    # "$changed$iv$iv":I
    :cond_1d
    move/from16 v28, v1

    .line 387
    .end local v1    # "$changed$iv$iv":I
    .restart local v28    # "$changed$iv$iv":I
    :goto_12
    const/4 v1, 0x0

    .line 388
    .local v1, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v27, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 v29, v1

    .end local v1    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    .local v29, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    invoke-static/range {v27 .. v27}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverter;

    .line 387
    .end local v29    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 389
    .local v1, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 390
    nop

    .line 386
    .end local v1    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 385
    .end local v14    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 384
    .end local v3    # "invalid$iv$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 383
    .end local v2    # "$i$f$remember":I
    .end local v28    # "$changed$iv$iv":I
    move-object v14, v1

    check-cast v14, Landroidx/compose/animation/core/TwoWayConverter;

    .line 392
    .local v14, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v19, 0xe

    or-int/lit8 v1, v1, 0x40

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v19, 0x3

    and-int v2, v2, v16

    or-int/2addr v2, v1

    .local v2, "$changed$iv$iv":I
    move-object/from16 v1, v18

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v22, v2

    .end local v2    # "$changed$iv$iv":I
    .local v22, "$changed$iv$iv":I
    const/16 v25, 0x0

    const v2, -0x880d1ef

    .local v25, "$i$f$animateValue":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v22, 0x9

    and-int/lit8 v3, v3, 0x70

    .local v3, "$changed":I
    check-cast v2, Landroidx/compose/material/InputPhase;

    .local v2, "it":Landroidx/compose/material/InputPhase;
    move-object v4, v15

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    move-object/from16 v28, v7

    const v7, -0x58d2cc88

    .end local v7    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v27, "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    .local v28, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 316
    const/4 v13, -0x1

    invoke-static {v7, v3, v13, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1e
    sget-object v7, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v13

    aget v7, v7, v13

    .line 317
    const/4 v13, 0x1

    if-ne v7, v13, :cond_1f

    move-wide/from16 v29, p2

    goto :goto_14

    .line 318
    :cond_1f
    move-wide/from16 v29, p4

    .line 316
    :goto_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "it":Landroidx/compose/material/InputPhase;
    .end local v3    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    .line 393
    nop

    .line 394
    .local v2, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    shr-int/lit8 v4, v22, 0x9

    and-int/lit8 v4, v4, 0x70

    .local v4, "$changed":I
    check-cast v3, Landroidx/compose/material/InputPhase;

    .local v3, "it":Landroidx/compose/material/InputPhase;
    move-object v7, v15

    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    move/from16 v27, v13

    const v13, -0x58d2cc88

    .restart local v27    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 316
    const/4 v11, -0x1

    invoke-static {v13, v4, v11, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    sget-object v5, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material/InputPhase;->ordinal()I

    move-result v11

    aget v5, v5, v11

    .line 317
    const/4 v11, 0x1

    if-ne v5, v11, :cond_22

    move-wide/from16 v29, p2

    goto :goto_15

    .line 318
    :cond_22
    move-wide/from16 v29, p4

    .line 316
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_23
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v3    # "it":Landroidx/compose/material/InputPhase;
    .end local v4    # "$changed":I
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-animateColor-TextFieldTransitionScope$Transition$labelTextStyleColor$3":I
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    .line 394
    nop

    .line 395
    .local v3, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    shr-int/lit8 v5, v22, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v15, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 397
    .local v11, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v4, v22, 0xe

    shl-int/lit8 v5, v22, 0x9

    and-int v5, v5, v16

    or-int/2addr v4, v5

    shl-int/lit8 v5, v22, 0x6

    and-int v5, v5, v17

    or-int v13, v4, v5

    move-object v4, v11

    move-object v5, v14

    move-object/from16 v21, v28

    .end local v28    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v21, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v7, v15

    move-object/from16 v24, v8

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v24, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move v8, v13

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 392
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v2    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v11    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v22    # "$changed$iv$iv":I
    .end local v25    # "$i$f$animateValue":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 312
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v14    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v18    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$animateColor":I
    .end local v21    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .end local v24    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v11, v4

    .line 322
    .local v11, "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 324
    move/from16 v13, v33

    .end local v33    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit16 v2, v13, 0x1c00

    move/from16 v3, v23

    or-int/2addr v2, v3

    .line 322
    move-object v14, v0

    .local v14, "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    const-string v6, "LabelContentColor"

    .restart local v6    # "label$iv":Ljava/lang/String;
    move-object v8, v1

    .restart local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v18, v2

    .local v18, "$changed$iv":I
    const/16 v19, 0x0

    .local v19, "$i$f$animateColor":I
    const v1, -0x739d657f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v14}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, v18, 0x6

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v1, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v7

    .line 399
    .local v7, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    const/16 v1, 0x8

    .local v1, "$changed$iv$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, 0x44faf204

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 400
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv$iv":Z
    move-object v4, v15

    .local v4, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 401
    .local v5, "$i$f$cache":I
    move-object/from16 v23, v0

    .end local v0    # "transition":Landroidx/compose/animation/core/Transition;
    .restart local v23    # "transition":Landroidx/compose/animation/core/Transition;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 402
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    if-nez v3, :cond_25

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v1

    .end local v1    # "$changed$iv$iv":I
    .restart local v22    # "$changed$iv$iv":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_24

    goto :goto_16

    .line 407
    :cond_24
    move-object/from16 v24, v0

    goto :goto_17

    .line 402
    .end local v22    # "$changed$iv$iv":I
    .restart local v1    # "$changed$iv$iv":I
    :cond_25
    move/from16 v22, v1

    .line 403
    .end local v1    # "$changed$iv$iv":I
    .restart local v22    # "$changed$iv$iv":I
    :goto_16
    const/4 v1, 0x0

    .line 404
    .local v1, "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 v24, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v24, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverter;

    .line 403
    .end local v1    # "$i$a$-remember-TransitionKt$animateColor$typeConverter$1$iv":I
    nop

    .line 405
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 406
    nop

    .line 402
    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 401
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v24    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 400
    .end local v3    # "invalid$iv$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 399
    .end local v2    # "$i$f$remember":I
    .end local v22    # "$changed$iv$iv":I
    check-cast v0, Landroidx/compose/animation/core/TwoWayConverter;

    .line 408
    .local v0, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, v18, 0xe

    or-int/lit8 v1, v1, 0x40

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, v18, 0x3

    and-int v2, v2, v16

    or-int v20, v1, v2

    .local v20, "$changed$iv$iv":I
    move-object v1, v14

    .local v1, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    const/16 v21, 0x0

    const v2, -0x880d1ef

    .local v21, "$i$f$animateValue":I
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v20, 0x9

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 410
    .local v9, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v3, v20, 0x9

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 411
    .local v22, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v3, v20, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 413
    .local v24, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v20, 0xe

    shl-int/lit8 v3, v20, 0x9

    and-int v3, v3, v16

    or-int/2addr v2, v3

    shl-int/lit8 v3, v20, 0x6

    and-int v3, v3, v17

    or-int v17, v2, v3

    move-object v2, v9

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    move-object v5, v0

    move-object/from16 v25, v7

    .end local v7    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .local v25, "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    move-object v7, v15

    move-object/from16 v27, v8

    .end local v8    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v27, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v8, v17

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 408
    .end local v1    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v9    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v20    # "$changed$iv$iv":I
    .end local v21    # "$i$f$animateValue":I
    .end local v22    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v24    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 322
    .end local v0    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v6    # "label$iv":Ljava/lang/String;
    .end local v14    # "$this$animateColor$iv":Landroidx/compose/animation/core/Transition;
    .end local v18    # "$changed$iv":I
    .end local v19    # "$i$f$animateColor":I
    .end local v25    # "colorSpace$iv":Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .end local v27    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    move-object v0, v2

    .line 328
    .local v0, "labelContentColor$delegate":Landroidx/compose/runtime/State;
    nop

    .line 329
    invoke-static/range {v26 .. v26}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 330
    invoke-static {v11}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$5(Landroidx/compose/runtime/State;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    .line 331
    invoke-static {v0}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$6(Landroidx/compose/runtime/State;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    .line 332
    invoke-static {v10}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    shr-int/lit8 v1, v13, 0x3

    and-int v1, v1, v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 328
    move-object/from16 v1, p8

    move-object v6, v15

    invoke-interface/range {v1 .. v7}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 334
    .end local v0    # "labelContentColor$delegate":Landroidx/compose/runtime/State;
    .end local v10    # "placeholderOpacity$delegate":Landroidx/compose/runtime/State;
    .end local v11    # "labelTextStyleColor$delegate":Landroidx/compose/runtime/State;
    .end local v23    # "transition":Landroidx/compose/animation/core/Transition;
    .end local v26    # "labelProgress$delegate":Landroidx/compose/runtime/State;
    :cond_26
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_27

    new-instance v14, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;-><init>(Landroidx/compose/material/TextFieldTransitionScope;Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function6;I)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_27
    return-void

    nop

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
.end method
