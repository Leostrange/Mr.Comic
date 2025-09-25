.class public final Landroidx/compose/ui/text/input/RecordingInputConnection;
.super Ljava/lang/Object;
.source "RecordingInputConnection.android.kt"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordingInputConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordingInputConnection.android.kt\nandroidx/compose/ui/text/input/RecordingInputConnection\n*L\n1#1,453:1\n81#1,5:454\n81#1,5:459\n81#1,5:464\n81#1,5:469\n81#1,5:474\n81#1,5:479\n81#1,5:484\n81#1,5:489\n81#1,5:494\n81#1,5:499\n81#1,5:504\n81#1,5:509\n81#1,5:514\n81#1,5:519\n81#1,5:524\n81#1,5:529\n81#1,5:534\n*S KotlinDebug\n*F\n+ 1 RecordingInputConnection.android.kt\nandroidx/compose/ui/text/input/RecordingInputConnection\n*L\n140#1:454,5\n176#1:459,5\n181#1:464,5\n187#1:469,5\n195#1:474,5\n206#1:479,5\n212#1:484,5\n218#1:489,5\n224#1:494,5\n260#1:499,5\n344#1:504,5\n370#1:509,5\n393#1:514,5\n403#1:519,5\n415#1:524,5\n435#1:529,5\n444#1:534,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0016J\u0008\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000cH\u0016J\u0008\u0010\"\u001a\u00020\u001cH\u0016J\u0012\u0010#\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\"\u0010&\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000c2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u001a\u0010/\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u000cH\u0016J\u0018\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0018\u00105\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0008\u00106\u001a\u00020\u0007H\u0016J\u0008\u00107\u001a\u00020\u0007H\u0002J\u0017\u00108\u001a\u00020\u00072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u001c0:H\u0082\u0008J\u0008\u0010;\u001a\u00020\u0007H\u0016J\u0010\u0010<\u001a\u00020\u000c2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u001a\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010)\u001a\u00020\u000cH\u0016J\n\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0012\u0010D\u001a\u0004\u0018\u0001002\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010E\u001a\u0002002\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010G\u001a\u0002002\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u000cH\u0016J\u0010\u0010M\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u000cH\u0016J\u001c\u0010O\u001a\u00020\u00072\u0008\u0010P\u001a\u0004\u0018\u00010J2\u0008\u0010Q\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010R\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u000cH\u0016J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u000cH\u0002J\u0018\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000cH\u0016J\u001a\u0010^\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u000cH\u0016J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000cH\u0016J\u0016\u0010`\u001a\u00020\u001c2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006d"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/RecordingInputConnection;",
        "Landroid/view/inputmethod/InputConnection;",
        "initState",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "eventCallback",
        "Landroidx/compose/ui/text/input/InputEventCallback2;",
        "autoCorrect",
        "",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V",
        "getAutoCorrect",
        "()Z",
        "batchDepth",
        "",
        "currentExtractedTextRequestToken",
        "editCommands",
        "",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "getEventCallback",
        "()Landroidx/compose/ui/text/input/InputEventCallback2;",
        "extractedTextMonitorMode",
        "isActive",
        "value",
        "mTextFieldValue",
        "getMTextFieldValue$ui_release",
        "()Landroidx/compose/ui/text/input/TextFieldValue;",
        "setMTextFieldValue$ui_release",
        "(Landroidx/compose/ui/text/input/TextFieldValue;)V",
        "addEditCommandWithBatch",
        "",
        "editCommand",
        "beginBatchEdit",
        "beginBatchEditInternal",
        "clearMetaKeyStates",
        "states",
        "closeConnection",
        "commitCompletion",
        "text",
        "Landroid/view/inputmethod/CompletionInfo;",
        "commitContent",
        "inputContentInfo",
        "Landroid/view/inputmethod/InputContentInfo;",
        "flags",
        "opts",
        "Landroid/os/Bundle;",
        "commitCorrection",
        "correctionInfo",
        "Landroid/view/inputmethod/CorrectionInfo;",
        "commitText",
        "",
        "newCursorPosition",
        "deleteSurroundingText",
        "beforeLength",
        "afterLength",
        "deleteSurroundingTextInCodePoints",
        "endBatchEdit",
        "endBatchEditInternal",
        "ensureActive",
        "block",
        "Lkotlin/Function0;",
        "finishComposingText",
        "getCursorCapsMode",
        "reqModes",
        "getExtractedText",
        "Landroid/view/inputmethod/ExtractedText;",
        "request",
        "Landroid/view/inputmethod/ExtractedTextRequest;",
        "getHandler",
        "Landroid/os/Handler;",
        "getSelectedText",
        "getTextAfterCursor",
        "maxChars",
        "getTextBeforeCursor",
        "logDebug",
        "message",
        "",
        "performContextMenuAction",
        "id",
        "performEditorAction",
        "editorAction",
        "performPrivateCommand",
        "action",
        "data",
        "reportFullscreenMode",
        "enabled",
        "requestCursorUpdates",
        "cursorUpdateMode",
        "sendKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "sendSynthesizedKeyEvent",
        "code",
        "setComposingRegion",
        "start",
        "end",
        "setComposingText",
        "setSelection",
        "updateInputState",
        "state",
        "inputMethodManager",
        "Landroidx/compose/ui/text/input/InputMethodManager;",
        "ui_release"
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
.field private final autoCorrect:Z

.field private batchDepth:I

.field private currentExtractedTextRequestToken:I

.field private final editCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

.field private extractedTextMonitorMode:Z

.field private isActive:Z

.field private mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V
    .locals 1
    .param p1, "initState"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "eventCallback"    # Landroidx/compose/ui/text/input/InputEventCallback2;
    .param p3, "autoCorrect"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    .line 47
    iput-boolean p3, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    .line 54
    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    .line 44
    return-void
.end method

.method private final addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V
    .locals 1
    .param p1, "editCommand"    # Landroidx/compose/ui/text/input/EditCommand;

    .line 128
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->beginBatchEditInternal()Z

    .line 129
    nop

    .line 130
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    throw v0
.end method

.method private final beginBatchEditInternal()Z
    .locals 2

    .line 146
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    .line 147
    return v1
.end method

.method private final endBatchEditInternal()Z
    .locals 3

    .line 156
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    .line 157
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    iget-object v2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/text/input/InputEventCallback2;->onEditCommands(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    :cond_0
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final ensureActive(Lkotlin/jvm/functions/Function0;)Z
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    .local v0, "$i$f$ensureActive":I
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v2, v1

    .local v2, "applying":Z
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$a$-also-RecordingInputConnection$ensureActive$1":I
    if-eqz v2, :cond_0

    .line 83
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 85
    :cond_0
    nop

    .line 81
    .end local v2    # "applying":Z
    .end local v3    # "$i$a$-also-RecordingInputConnection$ensureActive$1":I
    return v1
.end method

.method private final logDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 450
    nop

    .line 451
    return-void
.end method

.method private final sendSynthesizedKeyEvent(I)V
    .locals 2
    .param p1, "code"    # I

    .line 366
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 367
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 368
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 6

    .line 140
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 454
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 455
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 456
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$beginBatchEdit$1":I
    nop

    .line 142
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->beginBatchEditInternal()Z

    move-result v5

    return v5

    .line 458
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$beginBatchEdit$1":I
    :cond_0
    nop

    .line 454
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 143
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public clearMetaKeyStates(I)Z
    .locals 6
    .param p1, "states"    # I

    .line 415
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 524
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 525
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 526
    const/4 v2, 0x0

    .line 416
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$clearMetaKeyStates$1":I
    nop

    .line 422
    const/4 v5, 0x0

    return v5

    .line 528
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$clearMetaKeyStates$1":I
    :cond_0
    nop

    .line 524
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 423
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public closeConnection()V
    .locals 1

    .line 165
    nop

    .line 166
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    .line 168
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    .line 169
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/InputEventCallback2;->onConnectionClosed(Landroidx/compose/ui/text/input/RecordingInputConnection;)V

    .line 170
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 6
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 393
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 514
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 515
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 516
    const/4 v2, 0x0

    .line 394
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$commitCompletion$1":I
    nop

    .line 400
    const/4 v5, 0x0

    return v5

    .line 518
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$commitCompletion$1":I
    :cond_0
    nop

    .line 514
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 401
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 444
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 534
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 535
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 536
    const/4 v2, 0x0

    .line 445
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$commitContent$1":I
    nop

    .line 446
    const/4 v5, 0x0

    return v5

    .line 538
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$commitContent$1":I
    :cond_0
    nop

    .line 534
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 447
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 6
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 403
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 519
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 520
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 521
    const/4 v2, 0x0

    .line 404
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$commitCorrection$1":I
    nop

    .line 407
    iget-boolean v5, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    return v5

    .line 523
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$commitCorrection$1":I
    :cond_0
    nop

    .line 519
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 408
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 176
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 459
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 460
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 461
    const/4 v5, 0x0

    .line 177
    .local v5, "$i$a$-ensureActive-RecordingInputConnection$commitText$1":I
    nop

    .line 178
    new-instance v6, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p2}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast v6, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 179
    nop

    .line 461
    .end local v5    # "$i$a$-ensureActive-RecordingInputConnection$commitText$1":I
    nop

    .line 463
    :cond_0
    nop

    .line 459
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 179
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public deleteSurroundingText(II)Z
    .locals 6
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 206
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 479
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 480
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 481
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$deleteSurroundingText$1":I
    nop

    .line 208
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    invoke-direct {v5, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    check-cast v5, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v5}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 209
    const/4 v5, 0x1

    return v5

    .line 483
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$deleteSurroundingText$1":I
    :cond_0
    nop

    .line 479
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 210
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 6
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 195
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 474
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 475
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 476
    const/4 v2, 0x0

    .line 196
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$deleteSurroundingTextInCodePoints$1":I
    nop

    .line 199
    nop

    .line 200
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    invoke-direct {v5, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;-><init>(II)V

    check-cast v5, Landroidx/compose/ui/text/input/EditCommand;

    .line 199
    invoke-direct {p0, v5}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 202
    const/4 v5, 0x1

    return v5

    .line 478
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$deleteSurroundingTextInCodePoints$1":I
    :cond_0
    nop

    .line 474
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 203
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 151
    nop

    .line 152
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 6

    .line 218
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 489
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 490
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 491
    const/4 v2, 0x0

    .line 219
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$finishComposingText$1":I
    nop

    .line 220
    new-instance v5, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    invoke-direct {v5}, Landroidx/compose/ui/text/input/FinishComposingTextCommand;-><init>()V

    check-cast v5, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v5}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 221
    const/4 v5, 0x1

    return v5

    .line 493
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$finishComposingText$1":I
    :cond_0
    nop

    .line 489
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 222
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public final getAutoCorrect()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 3
    .param p1, "reqModes"    # I

    .line 431
    nop

    .line 432
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public final getEventCallback()Landroidx/compose/ui/text/input/InputEventCallback2;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 315
    nop

    .line 316
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    .line 317
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    if-eqz v0, :cond_2

    .line 318
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->currentExtractedTextRequestToken:I

    .line 321
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v0}, Landroidx/compose/ui/text/input/InputState_androidKt;->toExtractedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 323
    .local v0, "extractedText":Landroid/view/inputmethod/ExtractedText;
    nop

    .line 337
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 411
    nop

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMTextFieldValue$ui_release()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "flags"    # I

    .line 250
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v0}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 250
    :goto_0
    nop

    .line 256
    .local v0, "result":Ljava/lang/CharSequence;
    nop

    .line 257
    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "maxChars"    # I
    .param p2, "flags"    # I

    .line 243
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "result":Ljava/lang/String;
    nop

    .line 245
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "maxChars"    # I
    .param p2, "flags"    # I

    .line 236
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "result":Ljava/lang/String;
    nop

    .line 238
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1
.end method

.method public performContextMenuAction(I)Z
    .locals 8
    .param p1, "id"    # I

    .line 344
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 504
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 505
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 506
    const/4 v2, 0x0

    .line 345
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$performContextMenuAction$1":I
    nop

    .line 346
    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    const/16 v6, 0x117

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    .line 352
    :pswitch_1
    const/16 v6, 0x116

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    .line 351
    :pswitch_2
    const/16 v6, 0x115

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    .line 348
    :pswitch_3
    new-instance v6, Landroidx/compose/ui/text/input/SetSelectionCommand;

    iget-object v7, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v7}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v5, v7}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    check-cast v6, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 362
    :goto_0
    return v5

    .line 508
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$performContextMenuAction$1":I
    :cond_0
    nop

    .line 504
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 363
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "editorAction"    # I

    .line 370
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 509
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 510
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 511
    const/4 v2, 0x0

    .line 371
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$performEditorAction$1":I
    nop

    .line 372
    packed-switch p1, :pswitch_data_0

    .line 381
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IME sends unsupported Editor Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RecordingIC"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 377
    :pswitch_1
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getPrevious-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 374
    :pswitch_2
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 378
    :pswitch_3
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 375
    :pswitch_4
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 376
    :pswitch_5
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 379
    :pswitch_6
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getGo-eUduSuo()I

    move-result v5

    goto :goto_0

    .line 373
    :pswitch_7
    sget-object v5, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v5

    .line 372
    :goto_0
    nop

    .line 385
    .local v5, "imeAction":I
    iget-object v6, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface {v6, v5}, Landroidx/compose/ui/text/input/InputEventCallback2;->onImeAction-KlQnJC8(I)V

    .line 386
    const/4 v6, 0x1

    return v6

    .line 513
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$performEditorAction$1":I
    .end local v5    # "imeAction":I
    :cond_0
    nop

    .line 509
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 387
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 435
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 529
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 530
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 531
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$performPrivateCommand$1":I
    nop

    .line 437
    const/4 v5, 0x1

    return v5

    .line 533
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$performPrivateCommand$1":I
    :cond_0
    nop

    .line 529
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 438
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 426
    nop

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 17
    .param p1, "cursorUpdateMode"    # I

    .line 260
    move-object/from16 v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 499
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 500
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_a

    .line 501
    const/4 v2, 0x0

    .line 261
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$requestCursorUpdates$1":I
    and-int/lit8 v5, p1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v6

    .line 262
    .local v9, "immediate":Z
    :goto_0
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v6

    .line 263
    .local v10, "monitor":Z
    :goto_1
    nop

    .line 271
    const/4 v5, 0x1

    .line 272
    .local v5, "includeInsertionMarker":Z
    const/4 v8, 0x1

    .line 273
    .local v8, "includeCharacterBounds":Z
    const/4 v11, 0x0

    .line 274
    .local v11, "includeEditorBounds":Z
    const/4 v12, 0x0

    .line 275
    .local v12, "includeLineBounds":Z
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x21

    if-lt v13, v14, :cond_9

    .line 277
    and-int/lit8 v13, p1, 0x10

    if-eqz v13, :cond_2

    move v13, v7

    goto :goto_2

    :cond_2
    move v13, v6

    .line 276
    :goto_2
    move v5, v13

    .line 279
    and-int/lit8 v13, p1, 0x8

    if-eqz v13, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    move v13, v6

    .line 278
    :goto_3
    move v8, v13

    .line 281
    and-int/lit8 v13, p1, 0x4

    if-eqz v13, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    move v13, v6

    .line 280
    :goto_4
    move v11, v13

    .line 282
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x22

    if-lt v13, v14, :cond_6

    .line 284
    and-int/lit8 v13, p1, 0x20

    if-eqz v13, :cond_5

    move v6, v7

    .line 283
    :cond_5
    move v12, v6

    .line 288
    :cond_6
    nop

    .line 289
    if-nez v5, :cond_8

    .line 290
    if-nez v8, :cond_8

    .line 291
    if-nez v11, :cond_8

    .line 292
    if-nez v12, :cond_8

    .line 294
    const/4 v5, 0x1

    .line 295
    const/4 v8, 0x1

    .line 296
    const/4 v11, 0x1

    .line 297
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v14, :cond_7

    .line 298
    const/4 v12, 0x1

    move v6, v8

    move v15, v11

    move/from16 v16, v12

    goto :goto_5

    .line 297
    :cond_7
    move v6, v8

    move v15, v11

    move/from16 v16, v12

    goto :goto_5

    .line 303
    :cond_8
    move v6, v8

    move v15, v11

    move/from16 v16, v12

    goto :goto_5

    .line 275
    :cond_9
    move v6, v8

    move v15, v11

    move/from16 v16, v12

    .line 303
    .end local v8    # "includeCharacterBounds":Z
    .end local v11    # "includeEditorBounds":Z
    .end local v12    # "includeLineBounds":Z
    .local v6, "includeCharacterBounds":Z
    .local v15, "includeEditorBounds":Z
    .local v16, "includeLineBounds":Z
    :goto_5
    move-object/from16 v14, p0

    iget-object v8, v14, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    .line 304
    nop

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 303
    move v11, v5

    move v12, v6

    move v13, v15

    move/from16 v14, v16

    invoke-interface/range {v8 .. v14}, Landroidx/compose/ui/text/input/InputEventCallback2;->onRequestCursorAnchorInfo(ZZZZZZ)V

    .line 311
    return v7

    .line 503
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$requestCursorUpdates$1":I
    .end local v5    # "includeInsertionMarker":Z
    .end local v6    # "includeCharacterBounds":Z
    .end local v9    # "immediate":Z
    .end local v10    # "monitor":Z
    .end local v15    # "includeEditorBounds":Z
    .end local v16    # "includeLineBounds":Z
    :cond_a
    nop

    .line 499
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 312
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 224
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 494
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 495
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 496
    const/4 v2, 0x0

    .line 225
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$sendKeyEvent$1":I
    nop

    .line 226
    iget-object v5, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface {v5, p1}, Landroidx/compose/ui/text/input/InputEventCallback2;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 227
    const/4 v5, 0x1

    return v5

    .line 498
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$sendKeyEvent$1":I
    :cond_0
    nop

    .line 494
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 228
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public setComposingRegion(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 181
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 464
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 465
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 466
    const/4 v5, 0x0

    .line 182
    .local v5, "$i$a$-ensureActive-RecordingInputConnection$setComposingRegion$1":I
    nop

    .line 183
    new-instance v6, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    invoke-direct {v6, p1, p2}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;-><init>(II)V

    check-cast v6, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 184
    nop

    .line 466
    .end local v5    # "$i$a$-ensureActive-RecordingInputConnection$setComposingRegion$1":I
    nop

    .line 468
    :cond_0
    nop

    .line 464
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 184
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 187
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 469
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 471
    const/4 v5, 0x0

    .line 188
    .local v5, "$i$a$-ensureActive-RecordingInputConnection$setComposingText$1":I
    nop

    .line 191
    new-instance v6, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p2}, Landroidx/compose/ui/text/input/SetComposingTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast v6, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v6}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 192
    nop

    .line 471
    .end local v5    # "$i$a$-ensureActive-RecordingInputConnection$setComposingText$1":I
    nop

    .line 473
    :cond_0
    nop

    .line 469
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 192
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public final setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .param p1, "value"    # Landroidx/compose/ui/text/input/TextFieldValue;

    .line 56
    nop

    .line 57
    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 58
    return-void
.end method

.method public setSelection(II)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 212
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    const/4 v1, 0x0

    .line 484
    .local v1, "$i$f$ensureActive":I
    iget-boolean v2, v0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 485
    .local v4, "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    if-eqz v3, :cond_0

    .line 486
    const/4 v2, 0x0

    .line 213
    .local v2, "$i$a$-ensureActive-RecordingInputConnection$setSelection$1":I
    nop

    .line 214
    new-instance v5, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v5, p1, p2}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    check-cast v5, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v5}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 215
    const/4 v5, 0x1

    return v5

    .line 488
    .end local v2    # "$i$a$-ensureActive-RecordingInputConnection$setSelection$1":I
    :cond_0
    nop

    .line 484
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-RecordingInputConnection$ensureActive$1$iv":I
    nop

    .line 216
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/RecordingInputConnection;
    .end local v1    # "$i$f$ensureActive":I
    return v2
.end method

.method public final updateInputState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputMethodManager;)V
    .locals 5
    .param p1, "state"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "inputMethodManager"    # Landroidx/compose/ui/text/input/InputMethodManager;

    .line 98
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    nop

    .line 102
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 104
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    if-eqz v0, :cond_1

    .line 105
    nop

    .line 106
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->currentExtractedTextRequestToken:I

    .line 107
    invoke-static {p1}, Landroidx/compose/ui/text/input/InputState_androidKt;->toExtractedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 105
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/text/input/InputMethodManager;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 113
    .local v0, "compositionStart":I
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    .line 114
    .local v1, "compositionEnd":I
    :cond_3
    nop

    .line 121
    nop

    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    .line 121
    invoke-interface {p2, v2, v3, v0, v1}, Landroidx/compose/ui/text/input/InputMethodManager;->updateSelection(IIII)V

    .line 124
    return-void
.end method
