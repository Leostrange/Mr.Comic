.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;
.super Ljava/lang/Object;
.source "TextFieldKeyEventHandler.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u001a\u001e\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\t"
    }
    d2 = {
        "createTextFieldKeyEventHandler",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;",
        "isKeyCode",
        "",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "keyCode",
        "",
        "isKeyCode-YhN2O0w",
        "(Landroid/view/KeyEvent;I)Z",
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
.method public static final synthetic access$isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "$receiver"    # Landroid/view/KeyEvent;
    .param p1, "keyCode"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public static final createTextFieldKeyEventHandler()Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .locals 1

    .line 36
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/AndroidTextFieldKeyEventHandler;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/internal/AndroidTextFieldKeyEventHandler;-><init>()V

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;

    return-object v0
.end method

.method private static final isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p0, "$this$isKeyCode_u2dYhN2O0w"    # Landroid/view/KeyEvent;
    .param p1, "keyCode"    # I

    .line 86
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/Key_androidKt;->getNativeKeyCode-YVgTNJs(J)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
