.class final Landroidx/compose/material/DefaultFloatingActionButtonElevation;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"

# interfaces
.implements Landroidx/compose/material/FloatingActionButtonElevation;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/DefaultFloatingActionButtonElevation\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,413:1\n36#2:414\n1116#3,6:415\n*S KotlinDebug\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/DefaultFloatingActionButtonElevation\n*L\n271#1:414\n271#1:415,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u001b\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0017\u00a2\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0008\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/material/DefaultFloatingActionButtonElevation;",
        "Landroidx/compose/material/FloatingActionButtonElevation;",
        "defaultElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "pressedElevation",
        "hoveredElevation",
        "focusedElevation",
        "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "F",
        "elevation",
        "Landroidx/compose/runtime/State;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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


# instance fields
.field private final defaultElevation:F

.field private final focusedElevation:F

.field private final hoveredElevation:F

.field private final pressedElevation:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0
    .param p1, "defaultElevation"    # F
    .param p2, "pressedElevation"    # F
    .param p3, "hoveredElevation"    # F
    .param p4, "focusedElevation"    # F

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    .line 265
    iput p2, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    .line 266
    iput p3, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    .line 267
    iput p4, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    .line 263
    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;-><init>(FFFF)V

    return-void
.end method

.method public static final synthetic access$getDefaultElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    .line 262
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    return v0
.end method

.method public static final synthetic access$getFocusedElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    .line 262
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    return v0
.end method

.method public static final synthetic access$getHoveredElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    .line 262
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    return v0
.end method

.method public static final synthetic access$getPressedElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    .line 262
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    return v0
.end method


# virtual methods
.method public elevation(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 19
    .param p1, "interactionSource"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const v4, -0x1c84f447

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(elevation)270@11429L317,279@11756L297,288@12063L1352:FloatingActionButton.kt#jmzs0o"

    invoke-static {v2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.DefaultFloatingActionButtonElevation.elevation (FloatingActionButton.kt:269)"

    invoke-static {v4, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v4, v3, 0xe

    .line 271
    nop

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, 0x44faf204

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 414
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "invalid$iv$iv":Z
    move-object/from16 v7, p2

    .local v7, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 415
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 416
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v6, :cond_2

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_1

    goto :goto_0

    .line 420
    :cond_1
    move-object v11, v9

    goto :goto_1

    .line 417
    :cond_2
    :goto_0
    const/4 v11, 0x0

    .line 272
    .local v11, "$i$a$-remember-DefaultFloatingActionButtonElevation$elevation$animatable$1":I
    new-instance v18, Landroidx/compose/material/FloatingActionButtonElevationAnimatable;

    .line 273
    invoke-static/range {p0 .. p0}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->access$getDefaultElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F

    move-result v13

    .line 274
    invoke-static/range {p0 .. p0}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->access$getPressedElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F

    move-result v14

    .line 275
    invoke-static/range {p0 .. p0}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->access$getHoveredElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F

    move-result v15

    .line 276
    invoke-static/range {p0 .. p0}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->access$getFocusedElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F

    move-result v16

    const/16 v17, 0x0

    .line 272
    move-object/from16 v12, v18

    invoke-direct/range {v12 .. v17}, Landroidx/compose/material/FloatingActionButtonElevationAnimatable;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 417
    .end local v11    # "$i$a$-remember-DefaultFloatingActionButtonElevation$elevation$animatable$1":I
    move-object/from16 v11, v18

    .line 418
    .local v11, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    nop

    .line 416
    .end local v11    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 415
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 414
    .end local v6    # "invalid$iv$iv":Z
    .end local v7    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 271
    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    move-object v4, v11

    check-cast v4, Landroidx/compose/material/FloatingActionButtonElevationAnimatable;

    .line 280
    .local v4, "animatable":Landroidx/compose/material/FloatingActionButtonElevationAnimatable;
    new-instance v5, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$1;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v0, v6}, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$1;-><init>(Landroidx/compose/material/FloatingActionButtonElevationAnimatable;Landroidx/compose/material/DefaultFloatingActionButtonElevation;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v7, v3, 0x3

    and-int/lit8 v7, v7, 0xe

    or-int/lit8 v7, v7, 0x40

    invoke-static {v0, v5, v2, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 289
    new-instance v5, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$2;

    invoke-direct {v5, v1, v4, v6}, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$2;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/FloatingActionButtonElevationAnimatable;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v6, v3, 0xe

    or-int/lit8 v6, v6, 0x40

    invoke-static {v1, v5, v2, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 322
    invoke-virtual {v4}, Landroidx/compose/material/FloatingActionButtonElevationAnimatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 326
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 327
    :cond_0
    instance-of v0, p1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 329
    :cond_1
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    move-object v2, p1

    check-cast v2, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    iget v2, v2, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 330
    :cond_2
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    move-object v2, p1

    check-cast v2, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    iget v2, v2, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 331
    :cond_3
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    move-object v2, p1

    check-cast v2, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    iget v2, v2, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 332
    :cond_4
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    move-object v1, p1

    check-cast v1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    iget v1, v1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 336
    iget v0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    .line 337
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 338
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 339
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 340
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
