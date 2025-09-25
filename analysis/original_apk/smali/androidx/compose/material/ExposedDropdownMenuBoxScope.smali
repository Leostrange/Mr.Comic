.class public interface abstract Landroidx/compose/material/ExposedDropdownMenuBoxScope;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/ExposedDropdownMenuBoxScope$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material/ExposedDropdownMenuBoxScope\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,740:1\n25#2:741\n25#2:748\n1116#3,6:742\n1116#3,6:749\n1116#3,6:756\n74#4:755\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material/ExposedDropdownMenuBoxScope\n*L\n249#1:741\n253#1:748\n249#1:742,6\n253#1:749,6\n258#1:756,6\n254#1:755\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001JU\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030\r\u00a2\u0006\u0002\u0008\u000f\u00a2\u0006\u0002\u0008\u0010H\u0017\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\t*\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0014\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
        "",
        "ExposedDropdownMenu",
        "",
        "expanded",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "exposedDropdownSize",
        "matchTextFieldWidth",
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


# direct methods
.method public static synthetic access$ExposedDropdownMenu$jd(Landroidx/compose/material/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/material/ExposedDropdownMenuBoxScope;
    .param p1, "expanded"    # Z
    .param p2, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .param p8, "$default"    # I

    .line 196
    invoke-super/range {p0 .. p8}, Landroidx/compose/material/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static synthetic exposedDropdownSize$default(Landroidx/compose/material/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 217
    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 218
    move p2, p4

    .line 217
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/material/ExposedDropdownMenuBoxScope;->exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: exposedDropdownSize"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public ExposedDropdownMenu(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p1, "expanded"    # Z
    .param p2, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/ScrollState;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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

    .line 239
    move/from16 v9, p7

    const v0, 0x3cffbe8

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ExposedDropdownMenu)P(1,3,2,4)236@9131L21,248@9631L42,252@9833L51,253@9924L7,261@10224L491:ExposedDropdownMenu.android.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v11, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0xe

    if-nez v2, :cond_2

    move/from16 v11, p1

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
    move/from16 v11, p1

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v12, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v9, 0x70

    if-nez v2, :cond_5

    move-object/from16 v12, p2

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
    move-object/from16 v12, p2

    :goto_3
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v4, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v9, 0x380

    if-nez v4, :cond_8

    move-object/from16 v4, p3

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p3

    :goto_5
    and-int/lit16 v5, v9, 0x1c00

    if-nez v5, :cond_b

    and-int/lit8 v5, p8, 0x8

    if-nez v5, :cond_9

    move-object/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v5, p4

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p4

    :goto_7
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v8, p5

    goto :goto_9

    :cond_c
    const v6, 0xe000

    and-int/2addr v6, v9

    if-nez v6, :cond_e

    move-object/from16 v8, p5

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v1, v6

    goto :goto_9

    :cond_e
    move-object/from16 v8, p5

    :goto_9
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_f

    const/high16 v6, 0x30000

    or-int/2addr v1, v6

    move-object/from16 v7, p0

    goto :goto_b

    :cond_f
    const/high16 v6, 0x70000

    and-int/2addr v6, v9

    if-nez v6, :cond_11

    move-object/from16 v7, p0

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v6, 0x10000

    :goto_a
    or-int/2addr v1, v6

    goto :goto_b

    :cond_11
    move-object/from16 v7, p0

    :goto_b
    const v6, 0x5b6db

    and-int/2addr v6, v1

    const v13, 0x12492

    if-ne v6, v13, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_c

    .line 275
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v13, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto/16 :goto_16

    .line 239
    :cond_13
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v9, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_16

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_d

    .line 237
    :cond_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_15

    and-int/lit16 v1, v1, -0x1c01

    :cond_15
    move v6, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_f

    .line 239
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 236
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 239
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object v2, v4

    .line 236
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_18

    .line 237
    invoke-static {v13, v10, v13, v15}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    .end local p4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v4, "scrollState":Landroidx/compose/foundation/ScrollState;
    and-int/lit16 v1, v1, -0x1c01

    move v6, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    goto :goto_f

    .line 236
    .end local v4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local p4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_18
    move v6, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    .line 237
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v6, "$dirty":I
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "scrollState":Landroidx/compose/foundation/ScrollState;
    :goto_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 239
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.ExposedDropdownMenuBoxScope.ExposedDropdownMenu (ExposedDropdownMenu.android.kt:238)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    nop

    .line 249
    move v0, v13

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x1d58f75c

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 741
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object v14, v10

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 742
    .local v16, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 743
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v15, v3, :cond_1a

    .line 744
    const/4 v3, 0x0

    .line 249
    .local v3, "$i$a$-remember-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$expandedStates$1":I
    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    move/from16 p4, v0

    .end local v0    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 744
    .end local v3    # "$i$a$-remember-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$expandedStates$1":I
    move-object v0, v2

    .line 745
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 746
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_10

    .line 747
    .end local p4    # "$changed$iv":I
    .local v0, "$changed$iv":I
    :cond_1a
    move/from16 p4, v0

    .end local v0    # "$changed$iv":I
    .restart local p4    # "$changed$iv":I
    move-object v0, v15

    .line 743
    :goto_10
    nop

    .line 742
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 741
    .end local v5    # "invalid$iv$iv":Z
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 249
    .end local v1    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    check-cast v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 250
    .local v0, "expandedStates":Landroidx/compose/animation/core/MutableTransitionState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_11

    :cond_1b
    move v13, v6

    goto/16 :goto_15

    .line 253
    :cond_1c
    :goto_11
    move v1, v13

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    const v3, -0x1d58f75c

    .local v2, "$i$f$remember":I
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 748
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, v10

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 749
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 750
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_1d

    .line 751
    const/4 v15, 0x0

    .line 253
    .local v15, "$i$a$-remember-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$transformOriginState$1":I
    sget-object v16, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v16

    move/from16 p3, v1

    .end local v1    # "$changed$iv":I
    .local p3, "$changed$iv":I
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v1

    move/from16 p4, v2

    .end local v2    # "$i$f$remember":I
    .local p4, "$i$f$remember":I
    const/4 v2, 0x0

    move/from16 v16, v3

    const/4 v3, 0x2

    .end local v3    # "invalid$iv$iv":Z
    .local v16, "invalid$iv$iv":Z
    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 751
    .end local v15    # "$i$a$-remember-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$transformOriginState$1":I
    nop

    .line 752
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 753
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_12

    .line 754
    .end local v16    # "invalid$iv$iv":Z
    .end local p3    # "$changed$iv":I
    .end local p4    # "$i$f$remember":I
    .local v1, "$changed$iv":I
    .restart local v2    # "$i$f$remember":I
    .restart local v3    # "invalid$iv$iv":Z
    :cond_1d
    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 v16, v3

    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    .end local v3    # "invalid$iv$iv":Z
    .restart local v16    # "invalid$iv$iv":Z
    .restart local p3    # "$changed$iv":I
    .restart local p4    # "$i$f$remember":I
    move-object v1, v13

    .line 750
    :goto_12
    nop

    .line 749
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 748
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v16    # "invalid$iv$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 253
    .end local p3    # "$changed$iv":I
    .end local p4    # "$i$f$remember":I
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 254
    .local v5, "transformOriginState":Landroidx/compose/runtime/MutableState;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 755
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 254
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object/from16 v22, v4

    check-cast v22, Landroidx/compose/ui/unit/Density;

    .line 255
    .local v22, "density":Landroidx/compose/ui/unit/Density;
    nop

    .line 256
    sget-object v1, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/DpOffset$Companion;->getZero-RKDOV3M()J

    move-result-wide v14

    .line 257
    const v1, 0x4a3df51d    # 3112263.2f

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    move-object v2, v10

    .local v1, "invalid$iv":Z
    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 756
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 757
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_1f

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v1

    .end local v1    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_1e

    goto :goto_13

    .line 761
    :cond_1e
    move-object v1, v4

    goto :goto_14

    .line 757
    .end local p3    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_1f
    move/from16 p3, v1

    .line 758
    .end local v1    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    :goto_13
    const/4 v1, 0x0

    .line 258
    .local v1, "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1":I
    move/from16 p4, v1

    .end local v1    # "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1":I
    .local p4, "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1":I
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v1, v5}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 758
    .end local p4    # "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1":I
    nop

    .line 759
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 760
    nop

    .line 757
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 756
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 258
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v18, 0x0

    .line 255
    new-instance v1, Landroidx/compose/material/DropdownMenuPositionProvider;

    move-object v13, v1

    move-object/from16 v16, v22

    invoke-direct/range {v13 .. v18}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v1

    .line 263
    .local v23, "popupPositionProvider":Landroidx/compose/material/DropdownMenuPositionProvider;
    nop

    .line 264
    move-object/from16 v2, v23

    check-cast v2, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 265
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;

    move-object v13, v1

    move-object v14, v0

    const/4 v3, 0x1

    move-object v15, v5

    move-object/from16 v16, v21

    move-object/from16 v17, p0

    move-object/from16 v18, v20

    move-object/from16 v19, p5

    invoke-direct/range {v13 .. v19}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/material/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)V

    const v4, 0x3baf5f8e

    invoke-static {v10, v4, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v6, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v13, v1, 0x180

    const/4 v14, 0x0

    .line 262
    move-object/from16 v1, p2

    move-object v4, v10

    .end local v5    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .local v15, "transformOriginState":Landroidx/compose/runtime/MutableState;
    move v5, v13

    move v13, v6

    .end local v6    # "$dirty":I
    .local v13, "$dirty":I
    move v6, v14

    invoke-static/range {v1 .. v6}, Landroidx/compose/material/internal/ExposedDropdownMenuPopup_androidKt;->ExposedDropdownMenuPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .end local v15    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .end local v22    # "density":Landroidx/compose/ui/unit/Density;
    .end local v23    # "popupPositionProvider":Landroidx/compose/material/DropdownMenuPositionProvider;
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 275
    .end local v0    # "expandedStates":Landroidx/compose/animation/core/MutableTransitionState;
    :cond_20
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_21

    new-instance v15, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method public abstract exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;
.end method
