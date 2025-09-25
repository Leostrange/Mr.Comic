.class final Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "StateSyncingModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateSyncingModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateSyncingModifier.kt\nandroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n*L\n1#1,171:1\n1#2:172\n123#3,4:173\n*S KotlinDebug\n*F\n+ 1 StateSyncingModifier.kt\nandroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode\n*L\n142#1:173,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B)\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u0012\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bH\u0002J\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\tH\u0016J\"\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00082\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0008H\u0002R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "state",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "onValueChanged",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "",
        "writeSelectionFromTextFieldValue",
        "",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function1;Z)V",
        "isFocused",
        "lastValueWhileFocused",
        "shouldAutoInvalidate",
        "getShouldAutoInvalidate",
        "()Z",
        "observeTextState",
        "fireOnValueChanged",
        "onAttach",
        "onFocusEvent",
        "focusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "onObservedReadsChanged",
        "update",
        "value",
        "updateState",
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
.field private isFocused:Z

.field private lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

.field private onValueChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/text2/input/TextFieldState;

.field private final writeSelectionFromTextFieldValue:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .param p1, "state"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p2, "onValueChanged"    # Lkotlin/jvm/functions/Function1;
    .param p3, "writeSelectionFromTextFieldValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 90
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->onValueChanged:Lkotlin/jvm/functions/Function1;

    .line 91
    iput-boolean p3, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->writeSelectionFromTextFieldValue:Z

    .line 88
    return-void
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;)Landroidx/compose/foundation/text2/input/TextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;

    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    return-object v0
.end method

.method private final observeTextState(Z)V
    .locals 9
    .param p1, "fireOnValueChanged"    # Z

    .line 154
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 155
    .local v0, "text":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode$observeTextState$1;

    invoke-direct {v2, v0, p0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode$observeTextState$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 161
    if-eqz p1, :cond_3

    .line 162
    new-instance v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 163
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "text"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v5, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    :goto_1
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    .line 165
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v7, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    :goto_2
    invoke-interface {v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    const/4 v8, 0x0

    .line 162
    move-object v3, v1

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .local v1, "newValue":Landroidx/compose/ui/text/input/TextFieldValue;
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->onValueChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v1    # "newValue":Landroidx/compose/ui/text/input/TextFieldValue;
    :cond_3
    return-void
.end method

.method static synthetic observeTextState$default(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;ZILjava/lang/Object;)V
    .locals 0

    .line 153
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->observeTextState(Z)V

    return-void
.end method

.method private final updateState(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 7
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->state:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    move-result-object v2

    .line 174
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    move-object v3, v2

    .local v3, "$this$updateState_u24lambda_u240":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 144
    .local v4, "$i$a$-edit-StateSyncingModifierNode$updateState$1":I
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->setTextIfChanged$foundation_release(Ljava/lang/CharSequence;)V

    .line 147
    iget-boolean v5, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->writeSelectionFromTextFieldValue:Z

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->selectCharsIn-5zc-tL8(J)V

    .line 150
    :cond_0
    nop

    .line 174
    .end local v3    # "$this$updateState_u24lambda_u240":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-StateSyncingModifierNode$updateState$1":I
    nop

    .line 175
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 176
    nop

    .line 151
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    return-void
.end method


# virtual methods
.method public getShouldAutoInvalidate()Z
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->observeTextState(Z)V

    .line 125
    return-void
.end method

.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 2
    .param p1, "focusState"    # Landroidx/compose/ui/focus/FocusState;

    .line 128
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->isFocused:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz v0, :cond_0

    .line 172
    .local v0, "p0":Landroidx/compose/ui/text/input/TextFieldValue;
    const/4 v1, 0x0

    .line 130
    .local v1, "$i$a$-let-StateSyncingModifierNode$onFocusEvent$1":I
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 131
    .end local v0    # "p0":Landroidx/compose/ui/text/input/TextFieldValue;
    .end local v1    # "$i$a$-let-StateSyncingModifierNode$onFocusEvent$1":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 133
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->isFocused:Z

    .line 134
    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 3

    .line 138
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->observeTextState$default(Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;ZILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public final update(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "onValueChanged"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->onValueChanged:Lkotlin/jvm/functions/Function1;

    .line 115
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->isFocused:Z

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;)V

    goto :goto_0

    .line 118
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/StateSyncingModifierNode;->lastValueWhileFocused:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 120
    :goto_0
    return-void
.end method
