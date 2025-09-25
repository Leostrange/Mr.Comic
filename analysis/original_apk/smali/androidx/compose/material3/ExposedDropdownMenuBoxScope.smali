.class public abstract Landroidx/compose/material3/ExposedDropdownMenuBoxScope;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material3/ExposedDropdownMenuBoxScope\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,1091:1\n1116#2,6:1092\n1116#2,6:1098\n1116#2,6:1105\n74#3:1104\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material3/ExposedDropdownMenuBoxScope\n*L\n279#1:1092,6\n283#1:1098,6\n285#1:1105,6\n284#1:1104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JU\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\n*\u00020\n2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0006H&J\u000c\u0010\u0015\u001a\u00020\n*\u00020\nH&\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
        "",
        "()V",
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
        "menuAnchor",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method public static synthetic exposedDropdownSize$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 247
    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 248
    move p2, p4

    .line 247
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: exposedDropdownSize"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ExposedDropdownMenu(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 30
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

    .line 269
    move/from16 v9, p7

    const v0, 0x6716d61b

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ExposedDropdownMenu)P(1,3,2,4)266@12013L21,278@12512L42,282@12711L51,283@12802L7,284@12850L309,293@13173L489:ExposedDropdownMenu.android.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v11, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0x6

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
    and-int/lit8 v2, v9, 0x30

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
    and-int/lit16 v4, v9, 0x180

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
    and-int/lit16 v5, v9, 0xc00

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
    and-int/lit16 v6, v9, 0x6000

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

    const/high16 v7, 0x30000

    if-eqz v6, :cond_f

    or-int/2addr v1, v7

    move-object/from16 v7, p0

    goto :goto_b

    :cond_f
    and-int v6, v9, v7

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
    const v6, 0x12493

    and-int/2addr v6, v1

    const v13, 0x12492

    if-ne v6, v13, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_c

    .line 307
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v13, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto/16 :goto_16

    .line 269
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

    .line 267
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

    .line 269
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 266
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 269
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object v2, v4

    .line 266
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_18

    .line 267
    invoke-static {v13, v10, v13, v15}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    .end local p4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .local v4, "scrollState":Landroidx/compose/foundation/ScrollState;
    and-int/lit16 v1, v1, -0x1c01

    move v6, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    goto :goto_f

    .line 266
    .end local v4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    .restart local p4    # "scrollState":Landroidx/compose/foundation/ScrollState;
    :cond_18
    move v6, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    .line 267
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

    .line 269
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ExposedDropdownMenuBoxScope.ExposedDropdownMenu (ExposedDropdownMenu.android.kt:268)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    const v0, 0x743b15a8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):ExposedDropdownMenu.android.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 279
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v2, v13

    .local v2, "invalid$iv":Z
    const/4 v4, 0x0

    .line 1092
    .local v4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1093
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v5, v15, :cond_1a

    .line 1094
    const/4 v15, 0x0

    .line 279
    .local v15, "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$expandedState$1":I
    new-instance v3, Landroidx/compose/animation/core/MutableTransitionState;

    move/from16 p3, v2

    .end local v2    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 1094
    .end local v15    # "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$expandedState$1":I
    move-object v2, v3

    .line 1095
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1096
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_10

    .line 1097
    .end local p3    # "invalid$iv":Z
    .local v2, "invalid$iv":Z
    :cond_1a
    move/from16 p3, v2

    .end local v2    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    move-object v2, v5

    .line 1093
    :goto_10
    nop

    .line 1092
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 279
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object v5, v2

    check-cast v5, Landroidx/compose/animation/core/MutableTransitionState;

    .local v5, "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 280
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v5}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v5}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_11

    :cond_1b
    move-object/from16 v16, v5

    move v13, v6

    goto/16 :goto_15

    :cond_1c
    :goto_11
    const v1, 0x743b166f

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 283
    move v1, v13

    .local v1, "invalid$iv":Z
    move-object v2, v10

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1098
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1099
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v4, v14, :cond_1d

    .line 1100
    const/4 v14, 0x0

    .line 283
    .local v14, "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$transformOriginState$1":I
    sget-object v15, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v15

    move/from16 p3, v1

    .end local v1    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    const/4 v1, 0x0

    move/from16 p4, v3

    const/4 v3, 0x2

    .end local v3    # "$i$f$cache":I
    .local p4, "$i$f$cache":I
    invoke-static {v15, v1, v3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 1100
    .end local v14    # "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$transformOriginState$1":I
    nop

    .line 1101
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1102
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_12

    .line 1103
    .end local p3    # "invalid$iv":Z
    .end local p4    # "$i$f$cache":I
    .local v1, "invalid$iv":Z
    .restart local v3    # "$i$f$cache":I
    :cond_1d
    move/from16 p3, v1

    move/from16 p4, v3

    .end local v1    # "invalid$iv":Z
    .end local v3    # "$i$f$cache":I
    .restart local p3    # "invalid$iv":Z
    .restart local p4    # "$i$f$cache":I
    move-object v1, v4

    .line 1099
    :goto_12
    nop

    .line 1098
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 283
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "invalid$iv":Z
    .end local p4    # "$i$f$cache":I
    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/MutableState;

    .local v4, "transformOriginState":Landroidx/compose/runtime/MutableState;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 284
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 1104
    .local v3, "$i$f$getCurrent":I
    const v13, 0x789c5f52

    const-string v14, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 284
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v3, v13

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .local v3, "density":Landroidx/compose/ui/unit/Density;
    const v1, 0x743b16fa

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 285
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 1105
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1106
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1f

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_1e

    goto :goto_13

    .line 1110
    :cond_1e
    move/from16 p3, v0

    move-object v0, v13

    goto :goto_14

    .line 1107
    :cond_1f
    :goto_13
    const/4 v15, 0x0

    .line 286
    .local v15, "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1":I
    new-instance v16, Landroidx/compose/material3/DropdownMenuPositionProvider;

    .line 287
    sget-object v17, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/unit/DpOffset$Companion;->getZero-RKDOV3M()J

    move-result-wide v23

    .line 288
    nop

    .line 286
    const/16 v26, 0x0

    .line 289
    move/from16 p3, v0

    .end local v0    # "invalid$iv":Z
    .restart local p3    # "invalid$iv":Z
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v0, v4}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v27, v0

    check-cast v27, Lkotlin/jvm/functions/Function2;

    .line 286
    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v22, v16

    move-object/from16 v25, v3

    invoke-direct/range {v22 .. v29}, Landroidx/compose/material3/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1107
    .end local v15    # "$i$a$-cache-ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1":I
    move-object/from16 v0, v16

    .line 1108
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1109
    nop

    .line 1106
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 1105
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 285
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    check-cast v0, Landroidx/compose/material3/DropdownMenuPositionProvider;

    .local v0, "popupPositionProvider":Landroidx/compose/material3/DropdownMenuPositionProvider;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 295
    nop

    .line 296
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 297
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;

    move-object v13, v1

    move-object v14, v5

    move-object/from16 p3, v0

    const/4 v0, 0x1

    .end local v0    # "popupPositionProvider":Landroidx/compose/material3/DropdownMenuPositionProvider;
    .local p3, "popupPositionProvider":Landroidx/compose/material3/DropdownMenuPositionProvider;
    move-object v15, v4

    move-object/from16 v16, v21

    move-object/from16 v17, p0

    move-object/from16 v18, v20

    move-object/from16 v19, p5

    invoke-direct/range {v13 .. v19}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)V

    const v13, 0x2b23e735

    invoke-static {v10, v13, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v6, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v13, v1, 0x180

    const/4 v14, 0x0

    .line 294
    move-object/from16 v1, p2

    move-object v15, v3

    .end local v3    # "density":Landroidx/compose/ui/unit/Density;
    .local v15, "density":Landroidx/compose/ui/unit/Density;
    move-object v3, v0

    move-object v0, v4

    .end local v4    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .local v0, "transformOriginState":Landroidx/compose/runtime/MutableState;
    move-object v4, v10

    move-object/from16 v16, v5

    .end local v5    # "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    .local v16, "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    move v5, v13

    move v13, v6

    .end local v6    # "$dirty":I
    .local v13, "$dirty":I
    move v6, v14

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/internal/ExposedDropdownMenuPopup_androidKt;->ExposedDropdownMenuPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .end local v0    # "transformOriginState":Landroidx/compose/runtime/MutableState;
    .end local v15    # "density":Landroidx/compose/ui/unit/Density;
    .end local p3    # "popupPositionProvider":Landroidx/compose/material3/DropdownMenuPositionProvider;
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 307
    .end local v16    # "expandedState":Landroidx/compose/animation/core/MutableTransitionState;
    :cond_20
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_21

    new-instance v15, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method public abstract exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;
.end method

.method public abstract menuAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end method
