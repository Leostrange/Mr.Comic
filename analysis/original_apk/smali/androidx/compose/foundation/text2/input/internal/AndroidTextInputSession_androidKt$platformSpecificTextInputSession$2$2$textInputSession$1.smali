.class public final Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;
.super Ljava/lang/Object;
.source "AndroidTextInputSession.android.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/internal/TextInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidTextInputSession.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidTextInputSession.android.kt\nandroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1\n+ 2 TransformedTextFieldState.kt\nandroidx/compose/foundation/text2/input/internal/TransformedTextFieldState\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n*L\n1#1,208:1\n201#2,2:209\n206#2:231\n186#3,20:211\n*S KotlinDebug\n*F\n+ 1 AndroidTextInputSession.android.kt\nandroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1\n*L\n81#1:209,2\n81#1:231\n81#1:211,20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u000c\u001a\u00020\u00072\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00070\u000e\u00a2\u0006\u0002\u0008\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "androidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1",
        "Landroidx/compose/foundation/text2/input/internal/TextInputSession;",
        "text",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "getText",
        "()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "onImeAction",
        "",
        "imeAction",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "onImeAction-KlQnJC8",
        "(I)V",
        "requestEdit",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "Lkotlin/ExtensionFunctionType;",
        "sendKeyEvent",
        "keyEvent",
        "Landroid/view/KeyEvent;",
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
.field final synthetic $composeImm:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

.field final synthetic $onImeAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "$state"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "$composeImm"    # Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;
    .param p3, "$onImeAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$composeImm:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$onImeAction:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onImeAction-KlQnJC8(I)V
    .locals 2
    .param p1, "imeAction"    # I

    .line 92
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$onImeAction:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/text/input/ImeAction;->box-impl(I)Landroidx/compose/ui/text/input/ImeAction;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-void
.end method

.method public requestEdit(Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 82
    nop

    .line 81
    nop

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    const/4 v1, 0x0

    .local v1, "notifyImeOfChanges$iv":Z
    const/4 v2, 0x0

    .line 209
    .local v2, "$i$f$editUntransformedTextAsUser":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v3

    .line 210
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v4

    .line 209
    nop

    .line 211
    .local v3, "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .local v4, "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 214
    sget-object v5, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 211
    .local v5, "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v6, 0x0

    .line 217
    .local v6, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v7

    .line 219
    .local v7, "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 220
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 223
    invoke-interface {v7}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v8

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    invoke-interface {v7}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 226
    goto :goto_0

    .line 229
    :cond_0
    invoke-static {v3, v7, v4, v1, v5}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 230
    nop

    .line 231
    .end local v3    # "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v4    # "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v5    # "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v6    # "$i$f$editAsUser$foundation_release":I
    .end local v7    # "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    nop

    .line 85
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .end local v1    # "notifyImeOfChanges$iv":Z
    .end local v2    # "$i$f$editUntransformedTextAsUser":I
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 88
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2$2$textInputSession$1;->$composeImm:Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 89
    return-void
.end method
