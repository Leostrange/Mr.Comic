.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;
.super Ljava/lang/Object;
.source "TextFieldSelectionManager.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\u00a8\u0006\u0008\u00b2\u0006\n\u0010\t\u001a\u00020\nX\u008a\u008e\u0002"
    }
    d2 = {
        "isShiftPressed",
        "",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;)Z",
        "textFieldMagnifier",
        "Landroidx/compose/ui/Modifier;",
        "manager",
        "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
        "foundation_release",
        "magnifierSize",
        "Landroidx/compose/ui/unit/IntSize;"
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
.method public static final isShiftPressed(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 1
    .param p0, "$this$isShiftPressed"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static final textFieldMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0, "$this$textFieldMagnifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/Magnifier_androidKt;->isPlatformMagnifierSupported$default(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-object p0

    .line 45
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
