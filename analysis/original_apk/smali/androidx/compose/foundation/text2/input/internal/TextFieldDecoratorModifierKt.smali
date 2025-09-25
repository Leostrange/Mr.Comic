.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierKt;
.super Ljava/lang/Object;
.source "TextFieldDecoratorModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "withDefaultsFrom",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "defaults",
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
.method public static final withDefaultsFrom(Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardOptions;)Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 9
    .param p0, "$this$withDefaultsFrom"    # Landroidx/compose/foundation/text/KeyboardOptions;
    .param p1, "defaults"    # Landroidx/compose/foundation/text/KeyboardOptions;

    .line 531
    if-nez p1, :cond_0

    return-object p0

    .line 532
    :cond_0
    new-instance v8, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 533
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getCapitalization-IUNYP9k()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getNone-IUNYP9k()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getCapitalization-IUNYP9k()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/KeyboardOptions;->getCapitalization-IUNYP9k()I

    move-result v0

    move v1, v0

    .line 538
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getAutoCorrect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/KeyboardOptions;->getAutoCorrect()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    .line 539
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getKeyboardType-PjHm6EE()I

    move-result v0

    sget-object v3, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 540
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getKeyboardType-PjHm6EE()I

    move-result v0

    move v3, v0

    goto :goto_2

    .line 542
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/KeyboardOptions;->getKeyboardType-PjHm6EE()I

    move-result v0

    move v3, v0

    .line 544
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getImeAction-eUduSuo()I

    move-result v0

    sget-object v4, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardOptions;->getImeAction-eUduSuo()I

    move-result v0

    move v4, v0

    goto :goto_3

    .line 547
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/KeyboardOptions;->getImeAction-eUduSuo()I

    move-result v0

    move v4, v0

    .line 532
    :goto_3
    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
