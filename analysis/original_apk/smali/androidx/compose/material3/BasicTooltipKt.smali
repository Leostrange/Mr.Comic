.class public final Landroidx/compose/material3/BasicTooltipKt;
.super Ljava/lang/Object;
.source "BasicTooltip.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTooltip.kt\nandroidx/compose/material3/BasicTooltipKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,248:1\n1116#2,6:249\n*S KotlinDebug\n*F\n+ 1 BasicTooltip.kt\nandroidx/compose/material3/BasicTooltipKt\n*L\n88#1:249,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a&\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0001\u001a+\u0010\u0007\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "BasicTooltipState",
        "Landroidx/compose/material3/BasicTooltipState;",
        "initialIsVisible",
        "",
        "isPersistent",
        "mutatorMutex",
        "Landroidx/compose/foundation/MutatorMutex;",
        "rememberBasicTooltipState",
        "(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BasicTooltipState;",
        "material3_release"
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
.method public static final BasicTooltipState(ZZLandroidx/compose/foundation/MutatorMutex;)Landroidx/compose/material3/BasicTooltipState;
    .locals 1
    .param p0, "initialIsVisible"    # Z
    .param p1, "isPersistent"    # Z
    .param p2, "mutatorMutex"    # Landroidx/compose/foundation/MutatorMutex;

    .line 118
    new-instance v0, Landroidx/compose/material3/BasicTooltipStateImpl;

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 118
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/material3/BasicTooltipStateImpl;-><init>(ZZLandroidx/compose/foundation/MutatorMutex;)V

    check-cast v0, Landroidx/compose/material3/BasicTooltipState;

    .line 122
    return-object v0
.end method

.method public static synthetic BasicTooltipState$default(ZZLandroidx/compose/foundation/MutatorMutex;ILjava/lang/Object;)Landroidx/compose/material3/BasicTooltipState;
    .locals 0

    .line 113
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 114
    const/4 p0, 0x0

    .line 113
    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    .line 115
    const/4 p1, 0x1

    .line 113
    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    .line 116
    sget-object p2, Landroidx/compose/material3/BasicTooltipDefaults;->INSTANCE:Landroidx/compose/material3/BasicTooltipDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/BasicTooltipDefaults;->getGlobalMutatorMutex()Landroidx/compose/foundation/MutatorMutex;

    move-result-object p2

    .line 113
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/BasicTooltipKt;->BasicTooltipState(ZZLandroidx/compose/foundation/MutatorMutex;)Landroidx/compose/material3/BasicTooltipState;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberBasicTooltipState(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BasicTooltipState;
    .locals 6
    .param p0, "initialIsVisible"    # Z
    .param p1, "isPersistent"    # Z
    .param p2, "mutatorMutex"    # Landroidx/compose/foundation/MutatorMutex;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const v0, -0x52a3415c

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBasicTooltipState)87@3884L237:BasicTooltip.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 84
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 85
    const/4 p1, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 86
    sget-object p5, Landroidx/compose/material3/BasicTooltipDefaults;->INSTANCE:Landroidx/compose/material3/BasicTooltipDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/BasicTooltipDefaults;->getGlobalMutatorMutex()Landroidx/compose/foundation/MutatorMutex;

    move-result-object p2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 88
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.material3.rememberBasicTooltipState (BasicTooltip.kt:87)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const p5, -0x1b665180

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(remember):BasicTooltip.kt#9igjgp"

    invoke-static {p3, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p5, p4, 0x70

    xor-int/lit8 p5, p5, 0x30

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-le p5, v1, :cond_4

    .line 89
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result p5

    if-nez p5, :cond_5

    :cond_4
    and-int/lit8 p5, p4, 0x30

    if-ne p5, v1, :cond_6

    :cond_5
    move p5, v2

    goto :goto_0

    :cond_6
    move p5, v0

    :goto_0
    and-int/lit16 v1, p4, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v3, 0x100

    if-le v1, v3, :cond_7

    .line 90
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    and-int/lit16 v1, p4, 0x180

    if-ne v1, v3, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    or-int/2addr p5, v0

    .line 88
    move-object v0, p3

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p5, "invalid$iv":Z
    const/4 v1, 0x0

    .line 249
    .local v1, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 250
    .local v3, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p5, :cond_b

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_a

    goto :goto_1

    .line 254
    :cond_a
    move-object v4, v2

    goto :goto_2

    .line 251
    :cond_b
    :goto_1
    const/4 v4, 0x0

    .line 92
    .local v4, "$i$a$-cache-BasicTooltipKt$rememberBasicTooltipState$1":I
    new-instance v5, Landroidx/compose/material3/BasicTooltipStateImpl;

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 92
    invoke-direct {v5, p0, p1, p2}, Landroidx/compose/material3/BasicTooltipStateImpl;-><init>(ZZLandroidx/compose/foundation/MutatorMutex;)V

    .line 251
    .end local v4    # "$i$a$-cache-BasicTooltipKt$rememberBasicTooltipState$1":I
    move-object v4, v5

    .line 252
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    nop

    .line 250
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 249
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 88
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v1    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v4, Landroidx/compose/material3/BasicTooltipStateImpl;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Landroidx/compose/material3/BasicTooltipState;

    return-object v4
.end method
