.class abstract Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;
.super Ljava/lang/Object;
.source "ComposeInputMethodManager.android.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeInputMethodManager.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeInputMethodManager.android.kt\nandroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1#2:173\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0004J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J(\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0013H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;",
        "Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManager;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "imm",
        "Landroid/view/inputmethod/InputMethodManager;",
        "softwareKeyboardControllerCompat",
        "Landroidx/core/view/SoftwareKeyboardControllerCompat;",
        "getView",
        "()Landroid/view/View;",
        "createImm",
        "hideSoftInput",
        "",
        "requireImm",
        "restartInput",
        "showSoftInput",
        "updateExtractedText",
        "token",
        "",
        "extractedText",
        "Landroid/view/inputmethod/ExtractedText;",
        "updateSelection",
        "selectionStart",
        "selectionEnd",
        "compositionStart",
        "compositionEnd",
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
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private final softwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    .line 106
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat;

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    invoke-direct {v0, v1}, Landroidx/core/view/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 100
    return-void
.end method

.method private final createImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method protected final getView()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    return-object v0
.end method

.method public hideSoftInput()V
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->hide()V

    .line 118
    return-void
.end method

.method protected final requireImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->createImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    move-object v1, v0

    .line 173
    .local v1, "it":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$a$-also-ComposeInputMethodManagerImpl$requireImm$1":I
    iput-object v1, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->imm:Landroid/view/inputmethod/InputMethodManager;

    .end local v1    # "it":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "$i$a$-also-ComposeInputMethodManagerImpl$requireImm$1":I
    :cond_0
    return-object v0
.end method

.method public restartInput()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->requireImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public showSoftInput()V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->softwareKeyboardControllerCompat:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-virtual {v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->show()V

    .line 114
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .line 124
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->requireImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 125
    return-void
.end method

.method public updateSelection(IIII)V
    .locals 6
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "compositionStart"    # I
    .param p4, "compositionEnd"    # I

    .line 133
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->requireImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 134
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/ComposeInputMethodManagerImpl;->view:Landroid/view/View;

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 133
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 140
    return-void
.end method
