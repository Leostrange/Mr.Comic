.class public final Landroidx/compose/material/ripple/RippleKt;
.super Ljava/lang/Object;
.source "Ripple.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRipple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ripple.kt\nandroidx/compose/material/ripple/RippleKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,364:1\n50#2:365\n49#2:366\n1116#3,6:367\n*S KotlinDebug\n*F\n+ 1 Ripple.kt\nandroidx/compose/material/ripple/RippleKt\n*L\n83#1:365\n83#1:366\n83#1:367,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u001a0\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "DefaultTweenSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "incomingStateLayerAnimationSpecFor",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "interaction",
        "Landroidx/compose/foundation/interaction/Interaction;",
        "outgoingStateLayerAnimationSpecFor",
        "rememberRipple",
        "Landroidx/compose/foundation/Indication;",
        "bounded",
        "",
        "radius",
        "Landroidx/compose/ui/unit/Dp;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "rememberRipple-9IZ8Weo",
        "(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;",
        "material-ripple_release"
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
.field private static final DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 363
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final synthetic access$incomingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .param p0, "interaction"    # Landroidx/compose/foundation/interaction/Interaction;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleKt;->incomingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$outgoingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .param p0, "interaction"    # Landroidx/compose/foundation/interaction/Interaction;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleKt;->outgoingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method private static final incomingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 7
    .param p0, "interaction"    # Landroidx/compose/foundation/interaction/Interaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 340
    nop

    .line 341
    instance-of v0, p0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 342
    :cond_0
    instance-of v0, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 343
    :cond_1
    instance-of v0, p0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 344
    :cond_2
    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    .line 340
    :goto_0
    return-object v0
.end method

.method private static final outgoingStateLayerAnimationSpecFor(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 7
    .param p0, "interaction"    # Landroidx/compose/foundation/interaction/Interaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 352
    nop

    .line 353
    instance-of v0, p0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 354
    :cond_0
    instance-of v0, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 355
    :cond_1
    instance-of v0, p0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    .line 356
    :cond_2
    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    .line 352
    :goto_0
    return-object v0
.end method

.method public static final rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;
    .locals 17
    .param p0, "bounded"    # Z
    .param p1, "radius"    # F
    .param p2, "color"    # J
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    move-object/from16 v0, p4

    move/from16 v1, p5

    const v2, 0x61769d80

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberRipple)P(!1,2:c#ui.unit.Dp,1:c#ui.graphics.Color)81@3890L27,82@3929L85:Ripple.kt#vhb33q"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x1

    .end local p0    # "bounded":Z
    .local v3, "bounded":Z
    goto :goto_0

    .line 0
    .end local v3    # "bounded":Z
    .restart local p0    # "bounded":Z
    :cond_0
    move/from16 v3, p0

    .line 78
    .end local p0    # "bounded":Z
    .restart local v3    # "bounded":Z
    :goto_0
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_1

    .line 79
    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v4

    .end local p1    # "radius":F
    .local v4, "radius":F
    goto :goto_1

    .line 78
    .end local v4    # "radius":F
    .restart local p1    # "radius":F
    :cond_1
    move/from16 v4, p1

    .line 79
    .end local p1    # "radius":F
    .restart local v4    # "radius":F
    :goto_1
    and-int/lit8 v5, p6, 0x4

    if-eqz v5, :cond_2

    .line 80
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    .end local p2    # "color":J
    .local v5, "color":J
    goto :goto_2

    .line 79
    .end local v5    # "color":J
    .restart local p2    # "color":J
    :cond_2
    move-wide/from16 v5, p2

    .line 80
    .end local p2    # "color":J
    .restart local v5    # "color":J
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material.ripple.rememberRipple (Ripple.kt:80)"

    invoke-static {v2, v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 82
    :cond_3
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0xe

    invoke-static {v2, v0, v7}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    .local v2, "colorState":Landroidx/compose/runtime/State;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v8

    and-int/lit8 v9, v1, 0xe

    and-int/lit8 v10, v1, 0x70

    or-int/2addr v9, v10

    .line 83
    nop

    .local v7, "key1$iv":Ljava/lang/Object;
    .local v8, "key2$iv":Ljava/lang/Object;
    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$remember":I
    const v11, 0x1e7b2b64

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    .line 366
    nop

    .local v11, "invalid$iv$iv":Z
    move-object/from16 v12, p4

    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 367
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 368
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v11, :cond_5

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_4

    goto :goto_3

    .line 372
    :cond_4
    move-object v0, v14

    goto :goto_4

    .line 369
    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 84
    .local v0, "$i$a$-remember-RippleKt$rememberRipple$1":I
    move/from16 p0, v0

    .end local v0    # "$i$a$-remember-RippleKt$rememberRipple$1":I
    .local p0, "$i$a$-remember-RippleKt$rememberRipple$1":I
    new-instance v0, Landroidx/compose/material/ripple/PlatformRipple;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Landroidx/compose/material/ripple/PlatformRipple;-><init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 369
    .end local p0    # "$i$a$-remember-RippleKt$rememberRipple$1":I
    nop

    .line 370
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 371
    nop

    .line 368
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 367
    .end local v14    # "it$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 366
    .end local v11    # "invalid$iv$iv":Z
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    .end local v7    # "key1$iv":Ljava/lang/Object;
    .end local v8    # "key2$iv":Ljava/lang/Object;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/material/ripple/PlatformRipple;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/Indication;

    return-object v0
.end method
