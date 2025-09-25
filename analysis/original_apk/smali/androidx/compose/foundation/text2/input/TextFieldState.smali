.class public final Landroidx/compose/foundation/text2/input/TextFieldState;
.super Ljava/lang/Object;
.source "TextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;,
        Landroidx/compose/foundation/text2/input/TextFieldState$Saver;,
        Landroidx/compose/foundation/text2/input/TextFieldState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,569:1\n1208#2:570\n1187#2,2:571\n81#3:573\n107#3,2:574\n460#4,11:576\n*S KotlinDebug\n*F\n+ 1 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n*L\n406#1:570\n406#1:571,2\n107#1:573\n107#1:574,2\n412#1:576,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001:\u0002JKB\u001b\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0015\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008)J\u0010\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0001J*\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00162\u0008\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\"\u00105\u001a\u00020\'2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\'07\u00a2\u0006\u0002\u00088H\u0086\u0008JE\u00109\u001a\u00020\'2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u0008\u0002\u00101\u001a\u0002022\u0008\u0008\u0002\u00103\u001a\u0002042\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\'07\u00a2\u0006\u0002\u00088H\u0080\u0008\u00a2\u0006\u0002\u0008:J\'\u0010;\u001a\u00020\'2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\'07\u00a2\u0006\u0002\u00088H\u0080\u0008\u00a2\u0006\u0002\u0008<J\u0018\u0010=\u001a\u00020\'2\u0006\u0010>\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u0016H\u0002J(\u0010?\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u00162\u0006\u0010A\u001a\u00020B2\u0006\u00103\u001a\u000204H\u0002J\u0015\u0010C\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008DJ\u0015\u0010E\u001a\u00020\'2\u0006\u0010+\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008FJ\u0010\u0010G\u001a\u00020,2\u0006\u0010H\u001a\u00020\u0016H\u0001J\u0008\u0010I\u001a\u00020\u0003H\u0016R$\u0010\n\u001a\u00020\u000b8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u00020\"8GX\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008#\u0010\r\u001a\u0004\u0008$\u0010%\u00a8\u0006L"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "",
        "initialText",
        "",
        "initialSelectionInChars",
        "Landroidx/compose/ui/text/TextRange;",
        "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "initialTextUndoManager",
        "Landroidx/compose/foundation/text2/input/TextUndoManager;",
        "(Ljava/lang/String;JLandroidx/compose/foundation/text2/input/TextUndoManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "mainBuffer",
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "getMainBuffer$foundation_release$annotations",
        "()V",
        "getMainBuffer$foundation_release",
        "()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "setMainBuffer$foundation_release",
        "(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V",
        "notifyImeListeners",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;",
        "<set-?>",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "text",
        "getText",
        "()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "setText",
        "(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V",
        "text$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "textUndoManager",
        "getTextUndoManager$foundation_release",
        "()Landroidx/compose/foundation/text2/input/TextUndoManager;",
        "undoState",
        "Landroidx/compose/foundation/text2/input/UndoState;",
        "getUndoState$annotations",
        "getUndoState",
        "()Landroidx/compose/foundation/text2/input/UndoState;",
        "addNotifyImeListener",
        "",
        "notifyImeListener",
        "addNotifyImeListener$foundation_release",
        "commitEdit",
        "newValue",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer;",
        "commitEditAsUser",
        "previousValue",
        "inputTransformation",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "notifyImeOfChanges",
        "",
        "undoBehavior",
        "Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;",
        "edit",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "editAsUser",
        "editAsUser$foundation_release",
        "editWithNoSideEffects",
        "editWithNoSideEffects$foundation_release",
        "notifyIme",
        "oldValue",
        "recordEditForUndo",
        "postValue",
        "changes",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;",
        "removeNotifyImeListener",
        "removeNotifyImeListener$foundation_release",
        "resetStateAndNotifyIme",
        "resetStateAndNotifyIme$foundation_release",
        "startEdit",
        "value",
        "toString",
        "NotifyImeListener",
        "Saver",
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
.field private mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

.field private final notifyImeListeners:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final text$delegate:Landroidx/compose/runtime/MutableState;

.field private final textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

.field private final undoState:Landroidx/compose/foundation/text2/input/UndoState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .param p1, "initialText"    # Ljava/lang/String;
    .param p2, "initialSelectionInChars"    # J

    .line 72
    new-instance v4, Landroidx/compose/foundation/text2/input/TextUndoManager;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v4, v0, v0, v1, v0}, Landroidx/compose/foundation/text2/input/TextUndoManager;-><init>(Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;Landroidx/compose/foundation/text2/input/internal/undo/UndoManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLandroidx/compose/foundation/text2/input/TextUndoManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 69
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 70
    const-string p1, ""

    .line 69
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p2

    .line 69
    :cond_1
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLandroidx/compose/foundation/text2/input/TextUndoManager;)V
    .locals 6
    .param p1, "initialText"    # Ljava/lang/String;
    .param p2, "initialSelectionInChars"    # J
    .param p4, "initialTextUndoManager"    # Landroidx/compose/foundation/text2/input/TextUndoManager;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p4, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

    .line 84
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    .line 85
    nop

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, p3, v2, v1}, Landroidx/compose/ui/text/TextRangeKt;->coerceIn-8ffj60Q(JII)J

    move-result-wide v3

    .line 84
    const/4 v1, 0x0

    invoke-direct {v0, p1, v3, v4, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    .line 107
    nop

    .line 108
    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-FDrldGo(Ljava/lang/String;J)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 107
    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->text$delegate:Landroidx/compose/runtime/MutableState;

    .line 141
    new-instance v0, Landroidx/compose/foundation/text2/input/UndoState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/UndoState;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->undoState:Landroidx/compose/foundation/text2/input/UndoState;

    .line 406
    const/4 v0, 0x0

    .line 570
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 571
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v3, 0x0

    .line 572
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v1, [Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;

    invoke-direct {v4, v5, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 570
    .end local v1    # "capacity$iv$iv":I
    .end local v3    # "$i$f$MutableVector":I
    nop

    .line 406
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v4, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyImeListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 63
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLandroidx/compose/foundation/text2/input/TextUndoManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLandroidx/compose/foundation/text2/input/TextUndoManager;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "previousValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p3, "notifyImeOfChanges"    # Z
    .param p4, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    return-void
.end method

.method public static final synthetic access$notifyIme(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "oldValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "newValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyIme(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    return-void
.end method

.method public static final synthetic access$setText(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 61
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldState;->setText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    return-void
.end method

.method private final commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V
    .locals 6
    .param p1, "previousValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p3, "notifyImeOfChanges"    # Z
    .param p4, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 240
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 241
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    .line 242
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    .line 239
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 245
    .local v0, "afterEditValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    if-nez p2, :cond_1

    .line 246
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 247
    .local v1, "oldValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->setText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 248
    if-eqz p3, :cond_0

    .line 249
    invoke-direct {p0, v1, v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyIme(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    invoke-direct {p0, p1, v2, v3, p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->recordEditForUndo(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 252
    return-void

    .line 255
    .end local v1    # "oldValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 258
    .restart local v1    # "oldValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->setText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 262
    if-eqz p3, :cond_2

    .line 263
    invoke-direct {p0, v1, v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyIme(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 265
    :cond_2
    return-void

    .line 271
    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v2

    .line 268
    new-instance v3, Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 269
    nop

    .line 271
    nop

    .line 270
    nop

    .line 268
    invoke-direct {v3, v0, v2, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;-><init>(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/ChangeTracker;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    move-object v2, v3

    .line 273
    .local v2, "mutableValue":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    nop

    .line 274
    nop

    .line 275
    nop

    .line 273
    invoke-interface {p2, v1, v2}, Landroidx/compose/foundation/text2/input/InputTransformation;->transformInput(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 279
    nop

    .line 280
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->toTextFieldCharSequence-OEnZFl4$foundation_release(Landroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v3

    .line 282
    .local v3, "afterFilterValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 283
    invoke-direct {p0, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->setText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 284
    if-eqz p3, :cond_5

    .line 285
    invoke-direct {p0, v1, v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyIme(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    goto :goto_0

    .line 288
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->resetStateAndNotifyIme$foundation_release(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 291
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5, p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->recordEditForUndo(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 292
    return-void
.end method

.method public static synthetic editAsUser$foundation_release$default(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 4
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p2, "notifyImeOfChanges"    # Z
    .param p3, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;

    .line 186
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 188
    const/4 p2, 0x1

    .line 186
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 189
    sget-object p3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 186
    :cond_1
    const/4 p5, 0x0

    .line 192
    .local p5, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object p6

    .line 194
    .local p6, "previousValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 195
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-interface {p6}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-interface {p6}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    return-void

    .line 204
    :cond_2
    invoke-static {p0, p6, p1, p2, p3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 205
    return-void
.end method

.method public static synthetic getMainBuffer$foundation_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUndoState$annotations()V
    .locals 0

    return-void
.end method

.method private final notifyIme(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 7
    .param p1, "oldValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "newValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 412
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyImeListeners:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 576
    .local v1, "$i$f$forEach":I
    nop

    .line 577
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 578
    .local v2, "size$iv":I
    if-lez v2, :cond_1

    .line 579
    const/4 v3, 0x0

    .line 580
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 582
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;

    .local v5, "it":Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;
    const/4 v6, 0x0

    .line 412
    .local v6, "$i$a$-forEach-TextFieldState$notifyIme$1":I
    invoke-interface {v5, p1, p2}, Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;->onChange(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 582
    .end local v5    # "it":Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;
    .end local v6    # "$i$a$-forEach-TextFieldState$notifyIme$1":I
    nop

    .line 583
    add-int/lit8 v3, v3, 0x1

    .line 584
    if-lt v3, v2, :cond_0

    .line 586
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 413
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    return-void
.end method

.method private final recordEditForUndo(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V
    .locals 2
    .param p1, "previousValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "postValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p3, "changes"    # Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;
    .param p4, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 304
    sget-object v0, Landroidx/compose/foundation/text2/input/TextFieldState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

    .line 318
    nop

    .line 319
    nop

    .line 320
    nop

    .line 321
    nop

    .line 317
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/text2/input/TextUndoManagerKt;->recordChanges(Landroidx/compose/foundation/text2/input/TextUndoManager;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;Z)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 309
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/text2/input/TextUndoManagerKt;->recordChanges(Landroidx/compose/foundation/text2/input/TextUndoManager;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;Z)V

    goto :goto_0

    .line 306
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextUndoManager;->clearHistory()V

    .line 325
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 107
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->text$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 574
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 575
    nop

    .line 107
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method


# virtual methods
.method public final addNotifyImeListener$foundation_release(Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;)V
    .locals 1
    .param p1, "notifyImeListener"    # Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;

    .line 328
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyImeListeners:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public final commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V
    .locals 6
    .param p1, "newValue"    # Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 158
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getChangeCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "textChanged":Z
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 160
    .local v2, "selectionChanged":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    .line 161
    :cond_1
    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->toTextFieldCharSequence-OEnZFl4$foundation_release$default(Landroidx/compose/foundation/text2/input/TextFieldBuffer;Landroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 162
    .local v1, "finalValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->resetStateAndNotifyIme$foundation_release(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 164
    .end local v1    # "finalValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextUndoManager;->clearHistory()V

    .line 165
    return-void
.end method

.method public final edit(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/TextFieldBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    .local v0, "$i$f$edit":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    move-result-object v1

    .line 124
    .local v1, "mutableValue":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 126
    return-void
.end method

.method public final editAsUser$foundation_release(Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p2, "notifyImeOfChanges"    # Z
    .param p3, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Z",
            "Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 194
    .local v1, "previousValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 195
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    invoke-static {p0, v1, p1, p2, p3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 205
    return-void
.end method

.method public final editWithNoSideEffects$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 6
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

    const/4 v0, 0x0

    .line 218
    .local v0, "$i$f$editWithNoSideEffects$foundation_release":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 220
    .local v1, "previousValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 221
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 225
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    .line 226
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    .line 223
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    .line 229
    .local v2, "afterEditValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-static {p0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$setText(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 230
    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$notifyIme(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 231
    return-void
.end method

.method public final getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    return-object v0
.end method

.method public final getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 3

    .line 107
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->text$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 573
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 107
    return-object v0
.end method

.method public final getTextUndoManager$foundation_release()Landroidx/compose/foundation/text2/input/TextUndoManager;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->textUndoManager:Landroidx/compose/foundation/text2/input/TextUndoManager;

    return-object v0
.end method

.method public final getUndoState()Landroidx/compose/foundation/text2/input/UndoState;
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->undoState:Landroidx/compose/foundation/text2/input/UndoState;

    return-object v0
.end method

.method public final removeNotifyImeListener$foundation_release(Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;)V
    .locals 1
    .param p1, "notifyImeListener"    # Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;

    .line 332
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyImeListeners:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public final resetStateAndNotifyIme$foundation_release(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V
    .locals 9
    .param p1, "newValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 360
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 361
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    .line 362
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    .line 359
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 365
    .local v0, "bufferState":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    const/4 v1, 0x0

    .line 366
    .local v1, "textChanged":Z
    const/4 v2, 0x0

    .line 367
    .local v2, "selectionChanged":Z
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 369
    .local v3, "compositionChanged":Z
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    new-instance v4, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    .line 371
    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    .line 375
    const/4 v1, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v4

    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 378
    const/4 v2, 0x1

    .line 381
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v4

    .line 382
    .local v4, "composition":Landroidx/compose/ui/text/TextRange;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 385
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v6

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setComposition(II)V

    goto :goto_2

    .line 383
    :cond_3
    :goto_1
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 388
    :goto_2
    if-nez v1, :cond_4

    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 389
    :cond_4
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 393
    :cond_5
    if-eqz v1, :cond_6

    move-object v5, p1

    goto :goto_3

    :cond_6
    move-object v5, v0

    :goto_3
    check-cast v5, Ljava/lang/CharSequence;

    .line 394
    iget-object v6, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v6

    .line 395
    iget-object v8, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v8

    .line 392
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 401
    .local v5, "finalValue":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-direct {p0, v5}, Landroidx/compose/foundation/text2/input/TextFieldState;->setText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 403
    invoke-direct {p0, v0, v5}, Landroidx/compose/foundation/text2/input/TextFieldState;->notifyIme(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 404
    return-void
.end method

.method public final setMainBuffer$foundation_release(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    .line 84
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/TextFieldState;->mainBuffer:Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    .line 87
    return-void
.end method

.method public final startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    .locals 7
    .param p1, "value"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 146
    new-instance v6, Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;-><init>(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/ChangeTracker;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TextFieldState(selectionInChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
