.class public final Landroidx/compose/foundation/text2/input/internal/AndroidTextFieldKeyEventHandler;
.super Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
.source "TextFieldKeyEventHandler.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J:\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/AndroidTextFieldKeyEventHandler;",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;",
        "()V",
        "onPreKeyEvent",
        "",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textFieldSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "focusManager",
        "Landroidx/compose/ui/focus/FocusManager;",
        "keyboardController",
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "onPreKeyEvent-MyFupTE",
        "(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z",
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


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreKeyEvent-MyFupTE(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p3, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p4, "focusManager"    # Landroidx/compose/ui/focus/FocusManager;
    .param p5, "keyboardController"    # Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 53
    nop

    .line 54
    nop

    .line 49
    invoke-super/range {p0 .. p5}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->onPreKeyEvent-MyFupTE(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 59
    .local v0, "device":Landroid/view/InputDevice;
    nop

    .line 60
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    .line 63
    :cond_1
    const/16 v3, 0x201

    invoke-virtual {v0, v3}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto/16 :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto/16 :goto_0

    .line 69
    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v3

    sget-object v4, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 71
    :cond_4
    const/16 v3, 0x13

    invoke-static {p1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->access$isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v1

    invoke-interface {p4, v1}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    move-result v1

    goto :goto_0

    .line 72
    :cond_5
    const/16 v3, 0x14

    invoke-static {p1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->access$isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v1

    invoke-interface {p4, v1}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    move-result v1

    goto :goto_0

    .line 73
    :cond_6
    const/16 v3, 0x15

    invoke-static {p1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->access$isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v1

    invoke-interface {p4, v1}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    move-result v1

    goto :goto_0

    .line 74
    :cond_7
    const/16 v3, 0x16

    invoke-static {p1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->access$isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v1

    invoke-interface {p4, v1}, Landroidx/compose/ui/focus/FocusManager;->moveFocus-3ESFkO8(I)Z

    move-result v1

    goto :goto_0

    .line 75
    :cond_8
    const/16 v3, 0x17

    invoke-static {p1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->access$isKeyCode-YhN2O0w(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 77
    invoke-interface {p5}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->show()V

    .line 78
    goto :goto_0

    .line 80
    :cond_9
    move v1, v2

    .line 59
    :goto_0
    return v1
.end method
