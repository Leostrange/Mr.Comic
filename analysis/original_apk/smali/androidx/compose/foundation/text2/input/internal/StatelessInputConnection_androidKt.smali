.class public final Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection_androidKt;
.super Ljava/lang/Object;
.source "StatelessInputConnection.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\tH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "DEBUG_CLASS",
        "",
        "SIC_DEBUG",
        "",
        "getSIC_DEBUG$annotations",
        "()V",
        "TAG",
        "toExtractedText",
        "Landroid/view/inputmethod/ExtractedText;",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
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


# static fields
.field private static final DEBUG_CLASS:Ljava/lang/String; = "StatelessInputConnection"

.field public static final SIC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatelessIC"


# direct methods
.method public static final synthetic access$toExtractedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/StatelessInputConnection_androidKt;->toExtractedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getSIC_DEBUG$annotations()V
    .locals 0

    return-void
.end method

.method private static final toExtractedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroid/view/inputmethod/ExtractedText;
    .locals 6
    .param p0, "$this$toExtractedText"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 362
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 363
    .local v0, "res":Landroid/view/inputmethod/ExtractedText;
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 364
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 365
    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 366
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 367
    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 368
    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 369
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v2, v5, v1, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 370
    return-object v0
.end method
