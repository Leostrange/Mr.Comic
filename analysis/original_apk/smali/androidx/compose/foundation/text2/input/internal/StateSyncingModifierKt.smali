.class public final Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierKt;
.super Ljava/lang/Object;
.source "StateSyncingModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "syncTextFieldState",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChanged",
        "Lkotlin/Function1;",
        "",
        "writeSelectionFromTextFieldValue",
        "",
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
.method public static final syncTextFieldState(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$syncTextFieldState"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p2, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "onValueChanged"    # Lkotlin/jvm/functions/Function1;
    .param p4, "writeSelectionFromTextFieldValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 48
    nop

    .line 49
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 53
    nop

    .line 49
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 48
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 55
    return-object v0
.end method
