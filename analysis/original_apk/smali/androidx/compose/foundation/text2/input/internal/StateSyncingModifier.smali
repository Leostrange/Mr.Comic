.class final Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "StateSyncingModifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0013\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\u000c\u0010\u0015\u001a\u00020\t*\u00020\u0016H\u0016R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChanged",
        "Lkotlin/Function1;",
        "",
        "writeSelectionFromTextFieldValue",
        "",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)V",
        "create",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "update",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "foundation_release"
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
.field private final onValueChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/text2/input/TextFieldState;

.field private final value:Landroidx/compose/ui/text/input/TextFieldValue;

.field private final writeSelectionFromTextFieldValue:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .param p1, "state"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p2, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p3, "onValueChanged"    # Lkotlin/jvm/functions/Function1;
    .param p4, "writeSelectionFromTextFieldValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 60
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 61
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->onValueChanged:Lkotlin/jvm/functions/Function1;

    .line 62
    iput-boolean p4, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->writeSelectionFromTextFieldValue:Z

    .line 58
    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;
    .locals 4

    .line 66
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->onValueChanged:Lkotlin/jvm/functions/Function1;

    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->writeSelectionFromTextFieldValue:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function1;Z)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->create()Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->hashCode()I

    move-result v0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0
    .param p1, "$this$inspectableProperties"    # Landroidx/compose/ui/platform/InspectorInfo;

    .line 84
    return-void
.end method

.method public update(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;)V
    .locals 2
    .param p1, "node"    # Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;

    .line 69
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->onValueChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->update(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V

    .line 70
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 57
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifier;->update(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;)V

    return-void
.end method
