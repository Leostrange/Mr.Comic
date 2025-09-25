.class public final synthetic Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

.field public final synthetic f$1:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic f$2:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

    iput-object p4, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/input/ImeOptions;

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2;->$r8$lambda$8hxjcEpm2eUd0tVgbLG60nam3qE(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;Lkotlin/jvm/functions/Function1;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method
