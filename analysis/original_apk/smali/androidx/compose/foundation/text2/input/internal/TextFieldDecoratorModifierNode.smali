.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "TextFieldDecoratorModifier.kt"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cb\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001)\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\nBO\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010N\u001a\u000205H\u0002J\u0008\u0010O\u001a\u000205H\u0016J\u0008\u0010P\u001a\u000205H\u0016J\u0008\u0010Q\u001a\u000205H\u0016J\u0010\u0010R\u001a\u0002052\u0006\u0010S\u001a\u00020TH\u0016J\u0010\u0010U\u001a\u0002052\u0006\u0010V\u001a\u00020WH\u0016J\u001a\u0010X\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020ZH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008[\u0010\\J\u0008\u0010]\u001a\u000205H\u0016J*\u0010^\u001a\u0002052\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020b2\u0006\u0010c\u001a\u00020dH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008e\u0010fJ\u001a\u0010g\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020ZH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010\\J\u0008\u0010i\u001a\u00020jH\u0002J\u0008\u0010k\u001a\u000205H\u0002J\u0008\u0010l\u001a\u000205H\u0002JP\u0010m\u001a\u0002052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0014J\u000c\u0010n\u001a\u000205*\u00020oH\u0016R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001dR\u0010\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010/\u001a\u00020\u0017@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u001a\u00102\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020503X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u001d\"\u0004\u00089\u0010\u001fR\u0014\u0010:\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u001dR\u001a\u0010\u001a\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u001d\"\u0004\u0008=\u0010\u001fR\u000e\u0010>\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u0010\u0010L\u001a\u0004\u0018\u00010MX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006p"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/platform/PlatformTextInputModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/focus/FocusRequesterModifierNode;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/input/key/KeyInputModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textLayoutState",
        "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
        "textFieldSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "filter",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "enabled",
        "",
        "readOnly",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "singleLine",
        "(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/InputTransformation;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Z)V",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "getFilter",
        "()Landroidx/compose/foundation/text2/input/InputTransformation;",
        "setFilter",
        "(Landroidx/compose/foundation/text2/input/InputTransformation;)V",
        "inputSessionJob",
        "Lkotlinx/coroutines/Job;",
        "isElementFocused",
        "isFocused",
        "keyboardActionScope",
        "androidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;",
        "getKeyboardActions",
        "()Landroidx/compose/foundation/text/KeyboardActions;",
        "setKeyboardActions",
        "(Landroidx/compose/foundation/text/KeyboardActions;)V",
        "<set-?>",
        "getKeyboardOptions",
        "()Landroidx/compose/foundation/text/KeyboardOptions;",
        "onImeActionPerformed",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "",
        "pointerInputNode",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;",
        "getReadOnly",
        "setReadOnly",
        "shouldMergeDescendantSemantics",
        "getShouldMergeDescendantSemantics",
        "getSingleLine",
        "setSingleLine",
        "textFieldKeyEventHandler",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;",
        "getTextFieldSelectionState",
        "()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "setTextFieldSelectionState",
        "(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V",
        "getTextFieldState",
        "()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "setTextFieldState",
        "(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)V",
        "getTextLayoutState",
        "()Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
        "setTextLayoutState",
        "(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)V",
        "windowInfo",
        "Landroidx/compose/ui/platform/WindowInfo;",
        "disposeInputSession",
        "onAttach",
        "onCancelPointerInput",
        "onDetach",
        "onFocusEvent",
        "focusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "onGloballyPositioned",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "onKeyEvent",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "onKeyEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "onObservedReadsChanged",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "onPreKeyEvent",
        "onPreKeyEvent-ZmokQxo",
        "requireKeyboardController",
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "startInputSession",
        "startOrDisposeInputSessionOnWindowFocusChange",
        "updateNode",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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


# instance fields
.field private enabled:Z

.field private filter:Landroidx/compose/foundation/text2/input/InputTransformation;

.field private inputSessionJob:Lkotlinx/coroutines/Job;

.field private isElementFocused:Z

.field private final keyboardActionScope:Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;

.field private keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

.field private keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field private final onImeActionPerformed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private readOnly:Z

.field private singleLine:Z

.field private final textFieldKeyEventHandler:Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;

.field private textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

.field private textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

.field private textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

.field private windowInfo:Landroidx/compose/ui/platform/WindowInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/InputTransformation;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Z)V
    .locals 2
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p3, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p4, "filter"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p5, "enabled"    # Z
    .param p6, "readOnly"    # Z
    .param p7, "keyboardOptions"    # Landroidx/compose/foundation/text/KeyboardOptions;
    .param p8, "keyboardActions"    # Landroidx/compose/foundation/text/KeyboardActions;
    .param p9, "singleLine"    # Z

    .line 145
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 136
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 137
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 138
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 139
    iput-object p4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->filter:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 140
    iput-boolean p5, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    .line 141
    iput-boolean p6, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    .line 143
    iput-object p8, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 144
    iput-boolean p9, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->singleLine:Z

    .line 156
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$pointerInputNode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$pointerInputNode$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 169
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->filter:Landroidx/compose/foundation/text2/input/InputTransformation;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/InputTransformation;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v1

    :cond_0
    invoke-static {p7, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierKt;->withDefaultsFrom(Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardOptions;)Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 189
    invoke-static {}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler_androidKt;->createTextFieldKeyEventHandler()Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldKeyEventHandler:Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;

    .line 191
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardActionScope:Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;

    .line 212
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$onImeActionPerformed$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$onImeActionPerformed$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 135
    return-void
.end method

.method public static final synthetic access$getKeyboardActionScope$p(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;

    .line 134
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardActionScope:Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$keyboardActionScope$1;

    return-object v0
.end method

.method public static final synthetic access$getOnImeActionPerformed$p(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;

    .line 134
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$isFocused(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;

    .line 134
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isFocused()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$requireKeyboardController(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;

    .line 134
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->requireKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setWindowInfo$p(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;Landroidx/compose/ui/platform/WindowInfo;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;
    .param p1, "<set-?>"    # Landroidx/compose/ui/platform/WindowInfo;

    .line 134
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    return-void
.end method

.method public static final synthetic access$startOrDisposeInputSessionOnWindowFocusChange(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;

    .line 134
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->startOrDisposeInputSessionOnWindowFocusChange()V

    return-void
.end method

.method private final disposeInputSession()V
    .locals 3

    .line 495
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->inputSessionJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 496
    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->inputSessionJob:Lkotlinx/coroutines/Job;

    .line 497
    return-void
.end method

.method private final isFocused()Z
    .locals 3

    .line 183
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isElementFocused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private final requireKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .locals 2

    .line 509
    nop

    .line 510
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalSoftwareKeyboardController()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No software keyboard controller"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final startInputSession()V
    .locals 6

    .line 476
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$startInputSession$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$startInputSession$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->inputSessionJob:Lkotlinx/coroutines/Job;

    .line 492
    return-void
.end method

.method private final startOrDisposeInputSessionOnWindowFocusChange()V
    .locals 3

    .line 500
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isElementFocused:Z

    if-eqz v0, :cond_2

    .line 502
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->startInputSession()V

    goto :goto_0

    .line 504
    :cond_2
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->disposeInputSession()V

    .line 506
    :goto_0
    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 12
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 298
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getUntransformedText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 299
    .local v0, "text":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    .line 300
    .local v1, "selection":J
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v9}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 301
    invoke-static {p1, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTextSelectionRange-FDrldGo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;J)V

    .line 303
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->getTextLayoutResult$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 306
    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    if-nez v3, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 308
    :cond_0
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$2;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$2;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 315
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$3;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$3;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setSelection$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 354
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$4;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$4;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->insertTextAtCursor$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 362
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/KeyboardOptions;->getImeAction-eUduSuo()I

    move-result v7

    const/4 v8, 0x0

    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$5;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$5;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onImeAction-9UiTYpY$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 366
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$6;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$6;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 376
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$7;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$7;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onLongClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 383
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$8;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$8;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->copyText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 388
    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    if-nez v3, :cond_1

    .line 389
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$9;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$9;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->cutText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 395
    :cond_1
    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    if-nez v3, :cond_2

    .line 396
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$10;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$applySemantics$10;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pasteText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 401
    :cond_2
    return-void
.end method

.method public final getEnabled()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    return v0
.end method

.method public final getFilter()Landroidx/compose/foundation/text2/input/InputTransformation;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->filter:Landroidx/compose/foundation/text2/input/InputTransformation;

    return-object v0
.end method

.method public final getKeyboardActions()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    return-object v0
.end method

.method public final getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    return-object v0
.end method

.method public final getReadOnly()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    return v0
.end method

.method public getShouldMergeDescendantSemantics()Z
    .locals 1

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public final getSingleLine()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->singleLine:Z

    return v0
.end method

.method public final getTextFieldSelectionState()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    return-object v0
.end method

.method public final getTextFieldState()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public final getTextLayoutState()Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    return-object v0
.end method

.method public onAttach()V
    .locals 0

    .line 423
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->onObservedReadsChanged()V

    .line 424
    return-void
.end method

.method public onCancelPointerInput()V
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onCancelPointerInput()V

    .line 444
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 427
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->disposeInputSession()V

    .line 428
    return-void
.end method

.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 2
    .param p1, "focusState"    # Landroidx/compose/ui/focus/FocusState;

    .line 404
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isElementFocused:Z

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isElementFocused:Z

    .line 408
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setFocused(Z)V

    .line 410
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    if-nez v0, :cond_2

    .line 413
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->startInputSession()V

    goto :goto_0

    .line 417
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->disposeInputSession()V

    .line 418
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->collapseSelectionToMax()V

    .line 420
    :cond_2
    :goto_0
    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 431
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->setDecoratorNodeCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 432
    return-void
.end method

.method public onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 457
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldKeyEventHandler:Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;

    .line 458
    nop

    .line 459
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 460
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 461
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 462
    iget-boolean v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    .line 463
    iget-boolean v6, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->singleLine:Z

    .line 457
    new-instance v1, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$onKeyEvent$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->onKeyEvent-6ptp14s(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;ZZLkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public onObservedReadsChanged()V
    .locals 2

    .line 469
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    new-instance v1, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$onObservedReadsChanged$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode$onObservedReadsChanged$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 473
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "bounds"    # J

    .line 439
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 440
    return-void
.end method

.method public onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 447
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldKeyEventHandler:Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;

    .line 448
    nop

    .line 449
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 450
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 451
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v4}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/focus/FocusManager;

    .line 452
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->requireKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v5

    .line 447
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->onPreKeyEvent-MyFupTE(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z

    move-result v0

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 140
    iput-boolean p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    return-void
.end method

.method public final setFilter(Landroidx/compose/foundation/text2/input/InputTransformation;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 139
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->filter:Landroidx/compose/foundation/text2/input/InputTransformation;

    return-void
.end method

.method public final setKeyboardActions(Landroidx/compose/foundation/text/KeyboardActions;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/KeyboardActions;

    .line 143
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    return-void
.end method

.method public final setReadOnly(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 141
    iput-boolean p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    return-void
.end method

.method public final setSingleLine(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 144
    iput-boolean p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->singleLine:Z

    return-void
.end method

.method public final setTextFieldSelectionState(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 138
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    return-void
.end method

.method public final setTextFieldState(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 136
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    return-void
.end method

.method public final setTextLayoutState(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 137
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    return-void
.end method

.method public final updateNode(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/InputTransformation;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Z)V
    .locals 17
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p3, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p4, "filter"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p5, "enabled"    # Z
    .param p6, "readOnly"    # Z
    .param p7, "keyboardOptions"    # Landroidx/compose/foundation/text/KeyboardOptions;
    .param p8, "keyboardActions"    # Landroidx/compose/foundation/text/KeyboardActions;
    .param p9, "singleLine"    # Z

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    iget-boolean v7, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    .line 249
    .local v7, "previousWriteable":Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    .line 251
    .local v8, "writeable":Z
    :goto_1
    iget-boolean v9, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    .line 252
    .local v9, "previousEnabled":Z
    iget-object v10, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 253
    .local v10, "previousTextFieldState":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    iget-object v11, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 254
    .local v11, "previousKeyboardOptions":Landroidx/compose/foundation/text/KeyboardOptions;
    iget-object v12, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 255
    .local v12, "previousTextFieldSelectionState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    iget-object v13, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->filter:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 258
    .local v13, "previousFilter":Landroidx/compose/foundation/text2/input/InputTransformation;
    iput-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 259
    move-object/from16 v14, p2

    iput-object v14, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 260
    iput-object v2, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 261
    iput-object v3, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->filter:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 262
    iput-boolean v4, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->enabled:Z

    .line 263
    iput-boolean v5, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->readOnly:Z

    .line 264
    if-eqz v3, :cond_2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/foundation/text2/input/InputTransformation;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    invoke-static {v6, v15}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierKt;->withDefaultsFrom(Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardOptions;)Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v15

    iput-object v15, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 265
    move-object/from16 v15, p8

    iput-object v15, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 266
    move/from16 v5, p9

    iput-boolean v5, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->singleLine:Z

    .line 270
    if-ne v8, v7, :cond_3

    .line 271
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 272
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 273
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 275
    :cond_3
    if-eqz v8, :cond_4

    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->isFocused()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 277
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->startInputSession()V

    goto :goto_3

    .line 278
    :cond_4
    if-nez v8, :cond_5

    .line 280
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->disposeInputSession()V

    .line 284
    :cond_5
    :goto_3
    if-eq v9, v4, :cond_6

    .line 285
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 288
    :cond_6
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 289
    iget-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldDecoratorModifierNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    .line 291
    :cond_7
    return-void
.end method
