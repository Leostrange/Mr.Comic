.class public final synthetic Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

.field public final synthetic f$1:Landroidx/compose/ui/text/input/ImeOptions;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$1$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/input/ImeOptions;

    return-void
.end method


# virtual methods
.method public final onChange(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$1$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/input/ImeOptions;

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$1;->$r8$lambda$XB8AOf4NV8qVa9ZmrDvCu9TOEQs(Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    return-void
.end method
