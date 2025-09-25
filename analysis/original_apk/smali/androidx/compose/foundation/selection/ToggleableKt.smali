.class public final Landroidx/compose/foundation/selection/ToggleableKt;
.super Ljava/lang/Object;
.source "Toggleable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToggleable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Toggleable.kt\nandroidx/compose/foundation/selection/ToggleableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,228:1\n135#2:229\n135#2:230\n146#2:231\n135#2:232\n135#2:233\n146#2:234\n*S KotlinDebug\n*F\n+ 1 Toggleable.kt\nandroidx/compose/foundation/selection/ToggleableKt\n*L\n59#1:229\n108#1:230\n107#1:231\n156#1:232\n208#1:233\n207#1:234\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aV\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000e\u001aD\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000f\u001aP\u0010\u0010\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0015\u001a>\u0010\u0010\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0016\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "toggleable",
        "Landroidx/compose/ui/Modifier;",
        "value",
        "",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "indication",
        "Landroidx/compose/foundation/Indication;",
        "enabled",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "onValueChange",
        "Lkotlin/Function1;",
        "",
        "toggleable-O2vRcR0",
        "toggleable-XHw0xAI",
        "triStateToggleable",
        "state",
        "Landroidx/compose/ui/state/ToggleableState;",
        "onClick",
        "Lkotlin/Function0;",
        "triStateToggleable-O2vRcR0",
        "triStateToggleable-XHw0xAI",
        "foundation_release"
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
.method public static final toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 15
    .param p0, "$this$toggleable_u2dO2vRcR0"    # Landroidx/compose/ui/Modifier;
    .param p1, "value"    # Z
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "indication"    # Landroidx/compose/foundation/Indication;
    .param p4, "enabled"    # Z
    .param p5, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p6, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 107
    nop

    .line 108
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 107
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    move-object v0, v1

    .local v0, "inspectorInfo$iv":Lkotlin/jvm/functions/Function1;
    move-object v1, p0

    .local v1, "$this$inspectable$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    .line 231
    .local v2, "$i$f$inspectable":I
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .local v3, "$this$toggleable_O2vRcR0_u24lambda_u242":Landroidx/compose/ui/Modifier;
    const/4 v4, 0x0

    .line 118
    .local v4, "$i$a$-inspectable-ToggleableKt$toggleable$4":I
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 119
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/state/ToggleableStateKt;->ToggleableState(Z)Landroidx/compose/ui/state/ToggleableState;

    move-result-object v7

    .line 118
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 119
    nop

    .line 121
    nop

    .line 122
    nop

    .line 120
    nop

    .line 123
    nop

    .line 118
    new-instance v5, Landroidx/compose/foundation/selection/ToggleableKt$toggleable$4$1;

    move/from16 v13, p1

    move-object/from16 v14, p6

    invoke-direct {v5, v14, v13}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable$4$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 231
    .end local v3    # "$this$toggleable_O2vRcR0_u24lambda_u242":Landroidx/compose/ui/Modifier;
    .end local v4    # "$i$a$-inspectable-ToggleableKt$toggleable$4":I
    invoke-static {v1, v0, v3}, Landroidx/compose/ui/platform/InspectableValueKt;->inspectableWrapper(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 126
    .end local v0    # "inspectorInfo$iv":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$this$inspectable$iv":Landroidx/compose/ui/Modifier;
    .end local v2    # "$i$f$inspectable":I
    return-object v0
.end method

.method public static synthetic toggleable-O2vRcR0$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 100
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 104
    const/4 p4, 0x1

    move v4, p4

    goto :goto_0

    .line 100
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 105
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_1

    .line 100
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final toggleable-XHw0xAI(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$toggleable_u2dXHw0xAI"    # Landroidx/compose/ui/Modifier;
    .param p1, "value"    # Z
    .param p2, "enabled"    # Z
    .param p3, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p4, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 58
    nop

    .line 59
    const/4 v0, 0x0

    .line 229
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-XHw0xAI$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-XHw0xAI$$inlined$debugInspectorInfo$1;-><init>(ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 58
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable$2;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable$2;-><init>(ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public static synthetic toggleable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 53
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 55
    const/4 p2, 0x1

    .line 53
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 56
    const/4 p3, 0x0

    .line 53
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-XHw0xAI(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final triStateToggleable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 14
    .param p0, "$this$triStateToggleable_u2dO2vRcR0"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/ui/state/ToggleableState;
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "indication"    # Landroidx/compose/foundation/Indication;
    .param p4, "enabled"    # Z
    .param p5, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p6, "onClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 207
    nop

    .line 208
    const/4 v0, 0x0

    .line 233
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable-O2vRcR0$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move-object v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable-O2vRcR0$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 207
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    move-object v0, v1

    .local v0, "inspectorInfo$iv":Lkotlin/jvm/functions/Function1;
    move-object v1, p0

    .local v1, "$this$inspectable$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    .line 234
    .local v2, "$i$f$inspectable":I
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .local v3, "$this$triStateToggleable_O2vRcR0_u24lambda_u245":Landroidx/compose/ui/Modifier;
    const/4 v13, 0x0

    .line 218
    .local v13, "$i$a$-inspectable-ToggleableKt$triStateToggleable$4":I
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 218
    const/4 v8, 0x0

    .line 222
    nop

    .line 223
    nop

    .line 218
    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v4, v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v12}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 224
    new-instance v5, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable$4$1;

    move-object v6, p1

    invoke-direct {v5, p1}, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable$4$1;-><init>(Landroidx/compose/ui/state/ToggleableState;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v9, v5, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 234
    .end local v3    # "$this$triStateToggleable_O2vRcR0_u24lambda_u245":Landroidx/compose/ui/Modifier;
    .end local v13    # "$i$a$-inspectable-ToggleableKt$triStateToggleable$4":I
    invoke-static {v1, v0, v3}, Landroidx/compose/ui/platform/InspectableValueKt;->inspectableWrapper(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 227
    .end local v0    # "inspectorInfo$iv":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$this$inspectable$iv":Landroidx/compose/ui/Modifier;
    .end local v2    # "$i$f$inspectable":I
    return-object v0
.end method

.method public static synthetic triStateToggleable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 200
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 204
    const/4 p4, 0x1

    move v4, p4

    goto :goto_0

    .line 200
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 205
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_1

    .line 200
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final triStateToggleable-XHw0xAI(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$triStateToggleable_u2dXHw0xAI"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/ui/state/ToggleableState;
    .param p2, "enabled"    # Z
    .param p3, "role"    # Landroidx/compose/ui/semantics/Role;
    .param p4, "onClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Z",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 155
    nop

    .line 156
    const/4 v0, 0x0

    .line 232
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable-XHw0xAI$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable-XHw0xAI$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 155
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable$2;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/selection/ToggleableKt$triStateToggleable$2;-><init>(Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public static synthetic triStateToggleable-XHw0xAI$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 150
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 152
    const/4 p2, 0x1

    .line 150
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 153
    const/4 p3, 0x0

    .line 150
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-XHw0xAI(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
