.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextPreparedSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,432:1\n159#1,7:444\n159#1,7:451\n155#1,11:458\n155#1,11:469\n155#1,11:480\n155#1,11:491\n155#1,11:502\n155#1,11:513\n155#1,11:524\n155#1,11:535\n155#1,11:546\n155#1,11:557\n155#1,11:568\n155#1,11:579\n155#1,11:590\n155#1,11:601\n155#1,11:612\n155#1,11:623\n159#1,7:634\n159#1,7:641\n155#1,11:648\n155#1,11:659\n155#1,11:670\n155#1,11:681\n159#1,7:692\n495#2,4:433\n500#2:442\n129#3,5:437\n1#4:443\n*S KotlinDebug\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection\n*L\n114#1:444,7\n121#1:451,7\n175#1:458,11\n179#1:469,11\n183#1:480,11\n191#1:491,11\n202#1:502,11\n217#1:513,11\n240#1:524,11\n245#1:535,11\n250#1:546,11\n254#1:557,11\n258#1:568,11\n266#1:579,11\n276#1:590,11\n282#1:601,11\n286#1:612,11\n294#1:623,11\n302#1:634,7\n306#1:641,7\n312#1:648,11\n318#1:659,11\n322#1:670,11\n330#1:681,11\n339#1:692,7\n87#1:433,4\n87#1:442\n87#1:437,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008*\u0008\u0000\u0018\u0000 O2\u00020\u0001:\u0001OB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ,\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0017\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0002\u0008\u001eH\u0082\u0008J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0002J\u001f\u0010\"\u001a\u00020\u00002\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0002\u0008\u001eJ\u001f\u0010$\u001a\u00020\u00002\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0002\u0008\u001eJ\u0019\u0010%\u001a\u00020\u001d2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100&H\u0086\u0008J\u0006\u0010\'\u001a\u00020\u0000J\u0006\u0010(\u001a\u00020 J\u0006\u0010)\u001a\u00020 J\u0006\u0010*\u001a\u00020 J\u0006\u0010+\u001a\u00020 J\u0006\u0010,\u001a\u00020 J\u0006\u0010-\u001a\u00020 J\u0008\u0010.\u001a\u00020\u001aH\u0002J\u0010\u0010/\u001a\u00020 2\u0006\u00100\u001a\u00020 H\u0002J\u0006\u00101\u001a\u00020\u0000J\u0006\u00102\u001a\u00020\u0000J\u0006\u00103\u001a\u00020\u0000J\u0006\u00104\u001a\u00020\u0000J\u0008\u00105\u001a\u00020\u0000H\u0002J\u0006\u00106\u001a\u00020\u0000J\u0008\u00107\u001a\u00020\u0000H\u0002J\u0008\u00108\u001a\u00020\u0000H\u0002J\u0006\u00109\u001a\u00020\u0000J\u0008\u0010:\u001a\u00020\u0000H\u0002J\u0006\u0010;\u001a\u00020\u0000J\u0006\u0010<\u001a\u00020\u0000J\u0006\u0010=\u001a\u00020\u0000J\u0006\u0010>\u001a\u00020\u0000J\u0006\u0010?\u001a\u00020\u0000J\u0006\u0010@\u001a\u00020\u0000J\u0006\u0010A\u001a\u00020\u0000J\u0006\u0010B\u001a\u00020\u0000J\u0006\u0010C\u001a\u00020\u0000J\u0006\u0010D\u001a\u00020\u0000J\u0006\u0010E\u001a\u00020\u0000J\u0006\u0010F\u001a\u00020\u0000J\u0010\u0010G\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020 H\u0002J\u0016\u0010H\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0002J\u0016\u0010J\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0002J\u0017\u0010K\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0082\u0010J\u0017\u0010L\u001a\u00020 *\u00020\u00052\u0008\u0008\u0002\u0010I\u001a\u00020 H\u0082\u0010J\u0014\u0010M\u001a\u00020 *\u00020\u00052\u0006\u0010N\u001a\u00020 H\u0002R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006P"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
        "",
        "state",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "visibleTextLayoutHeight",
        "",
        "textPreparedSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;",
        "(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;FLandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;)V",
        "initialValue",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "getInitialValue",
        "()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "getSelection-d9O1mEE",
        "()J",
        "setSelection-5zc-tL8",
        "(J)V",
        "J",
        "text",
        "",
        "applyIfNotEmpty",
        "resetCachedX",
        "",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "charOffset",
        "",
        "offset",
        "collapseLeftOr",
        "or",
        "collapseRightOr",
        "deleteIfSelectedOr",
        "Lkotlin/Function0;",
        "deselect",
        "getLineEndByOffset",
        "getLineStartByOffset",
        "getNextCharacterIndex",
        "getNextWordOffset",
        "getPrecedingCharacterIndex",
        "getPreviousWordOffset",
        "isLtr",
        "jumpByPagesOffset",
        "pagesAmount",
        "moveCursorDownByLine",
        "moveCursorDownByPage",
        "moveCursorLeft",
        "moveCursorLeftByWord",
        "moveCursorNext",
        "moveCursorNextByParagraph",
        "moveCursorNextByWord",
        "moveCursorPrev",
        "moveCursorPrevByParagraph",
        "moveCursorPrevByWord",
        "moveCursorRight",
        "moveCursorRightByWord",
        "moveCursorToEnd",
        "moveCursorToHome",
        "moveCursorToLineEnd",
        "moveCursorToLineLeftSide",
        "moveCursorToLineRightSide",
        "moveCursorToLineStart",
        "moveCursorUpByLine",
        "moveCursorUpByPage",
        "selectAll",
        "selectMovement",
        "setCursor",
        "getLineEndByOffsetForLayout",
        "currentOffset",
        "getLineStartByOffsetForLayout",
        "getNextWordOffsetForLayout",
        "getPrevWordOffsetForLayout",
        "jumpByLinesOffset",
        "linesAmount",
        "Companion",
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

.field public static final Companion:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;

.field public static final NoCharacterFound:I = -0x1


# instance fields
.field private final initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

.field private selection:J

.field private final state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

.field private final text:Ljava/lang/String;

.field private final textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

.field private final visibleTextLayoutHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->Companion:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;FLandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;)V
    .locals 8
    .param p1, "state"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p3, "visibleTextLayoutHeight"    # F
    .param p4, "textPreparedSelectionState"    # Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 77
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 78
    iput p3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    .line 79
    iput-object p4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    .line 87
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v1, 0x0

    .line 433
    .local v1, "$i$f$withoutReadObservation":I
    nop

    .line 434
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 435
    .local v2, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 436
    move-object v3, v2

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v4, 0x0

    .line 437
    .local v4, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 438
    .local v5, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 439
    const/4 v6, 0x0

    .line 87
    .local v6, "$i$a$-withoutReadObservation-TextFieldPreparedSelection$initialValue$1":I
    :try_start_1
    iget-object v7, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    .end local v6    # "$i$a$-withoutReadObservation-TextFieldPreparedSelection$initialValue$1":I
    nop

    .line 441
    :try_start_2
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 439
    nop

    .line 442
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 436
    nop

    .line 87
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v1    # "$i$f$withoutReadObservation":I
    .end local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    iput-object v7, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 92
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    .line 97
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    .line 75
    return-void

    .line 441
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v1    # "$i$f$withoutReadObservation":I
    .restart local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "$i$f$enter":I
    .restart local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v1    # "$i$f$withoutReadObservation":I
    .end local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local p1    # "state":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .end local p2    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local p3    # "visibleTextLayoutHeight":F
    .end local p4    # "textPreparedSelectionState":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v1    # "$i$f$withoutReadObservation":I
    .restart local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p1    # "state":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .restart local p2    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local p3    # "visibleTextLayoutHeight":F
    .restart local p4    # "textPreparedSelectionState":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v3
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public static final synthetic access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    return-object v0
.end method

.method private final applyIfNotEmpty(ZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 2
    .param p1, "resetCachedX"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    .local v0, "$i$f$applyIfNotEmpty":I
    if-eqz p1, :cond_0

    .line 160
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 162
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 163
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_2
    return-object p0
.end method

.method static synthetic applyIfNotEmpty$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .param p1, "resetCachedX"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 155
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 156
    const/4 p1, 0x1

    .line 155
    :cond_0
    const/4 p3, 0x0

    .line 159
    .local p3, "$i$f$applyIfNotEmpty":I
    if-eqz p1, :cond_1

    .line 160
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 162
    :cond_1
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_3

    .line 163
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3
    return-object p0
.end method

.method private final charOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 420
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    return v0
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 2
    .param p1, "$this$getLineEndByOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 386
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 387
    .local v0, "currentLine":I
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v1

    return v1
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 383
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 384
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p2

    .line 383
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 2
    .param p1, "$this$getLineStartByOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 379
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 380
    .local v0, "currentLine":I
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v1

    return v1
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 376
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 377
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p2

    .line 376
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3
    .param p1, "$this$getNextWordOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 351
    nop

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result v0

    return v0

    .line 354
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 355
    .local v0, "currentWord":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    .line 356
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    .line 355
    return v2
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 348
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 349
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 348
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3
    .param p1, "$this$getPrevWordOffsetForLayout"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "currentOffset"    # I

    .line 365
    nop

    :goto_0
    if-gtz p2, :cond_0

    .line 366
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 369
    .local v0, "currentWord":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 370
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    .line 369
    return v2
.end method

.method static synthetic getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    .line 362
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 363
    iget-wide p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 362
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final isLtr()Z
    .locals 3

    .line 344
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    .line 345
    .local v0, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 8
    .param p1, "$this$jumpByLinesOffset"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p2, "linesAmount"    # I

    .line 391
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 393
    .local v0, "currentOffset":I
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->setCachedX(F)V

    .line 397
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 398
    .local v1, "targetLine":I
    nop

    .line 399
    if-gez v1, :cond_1

    .line 400
    const/4 v2, 0x0

    return v2

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 404
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    return v2

    .line 408
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v2

    const/4 v3, 0x1

    int-to-float v4, v3

    sub-float/2addr v2, v4

    .line 409
    .local v2, "y":F
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v4

    move v5, v4

    .local v5, "it":F
    const/4 v6, 0x0

    .line 410
    .local v6, "$i$a$-also-TextFieldPreparedSelection$jumpByLinesOffset$x$1":I
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v7

    cmpl-float v7, v5, v7

    if-gez v7, :cond_4

    .line 411
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v7

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_5

    .line 413
    :cond_4
    invoke-virtual {p1, v1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result v3

    return v3

    .line 415
    :cond_5
    nop

    .line 409
    .end local v5    # "it":F
    .end local v6    # "$i$a$-also-TextFieldPreparedSelection$jumpByLinesOffset$x$1":I
    move v3, v4

    .line 417
    .local v3, "x":F
    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v4

    return v4
.end method

.method private final jumpByPagesOffset(I)I
    .locals 8
    .param p1, "pagesAmount"    # I

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 133
    .local v0, "currentOffset":I
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 134
    .local v1, "currentPos":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 135
    nop

    .line 136
    iget v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 139
    .local v2, "newPos":Landroidx/compose/ui/geometry/Rect;
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v3

    .line 140
    .local v3, "topLine":I
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v4

    .line 141
    .local v4, "lineSeparator":F
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 143
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    goto :goto_0

    .line 146
    :cond_0
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottomLeft-F1C5BW0()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    .line 141
    :goto_0
    return v5
.end method

.method private final moveCursorNext()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6

    .line 245
    nop

    .line 535
    nop

    .line 536
    const/4 v0, 0x1

    .line 535
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 539
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 540
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 542
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 543
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorNext_u24lambda_u2411":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorNext$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextCharacterIndex()I

    move-result v4

    .line 247
    .local v4, "next":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 248
    :cond_1
    nop

    .line 543
    .end local v2    # "$this$moveCursorNext_u24lambda_u2411":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorNext$1":I
    .end local v4    # "next":I
    nop

    .line 545
    :cond_2
    nop

    .line 248
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method private final moveCursorNextByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 276
    nop

    .line 590
    nop

    .line 591
    const/4 v0, 0x1

    .line 590
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 594
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 595
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 597
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 598
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorNextByWord_u24lambda_u2416":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 277
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorNextByWord$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffset()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 278
    nop

    .line 598
    .end local v2    # "$this$moveCursorNextByWord_u24lambda_u2416":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorNextByWord$1":I
    nop

    .line 600
    :cond_1
    nop

    .line 278
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method private final moveCursorPrev()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6

    .line 240
    nop

    .line 524
    nop

    .line 525
    const/4 v0, 0x1

    .line 524
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 528
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 529
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 531
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 532
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorPrev_u24lambda_u2410":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 241
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorPrev$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v4

    .line 242
    .local v4, "prev":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 243
    :cond_1
    nop

    .line 532
    .end local v2    # "$this$moveCursorPrev_u24lambda_u2410":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorPrev$1":I
    .end local v4    # "prev":I
    nop

    .line 534
    :cond_2
    nop

    .line 243
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method private final moveCursorPrevByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 282
    nop

    .line 601
    nop

    .line 602
    const/4 v0, 0x1

    .line 601
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 605
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 606
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 608
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 609
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorPrevByWord_u24lambda_u2417":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 283
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorPrevByWord$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPreviousWordOffset()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 284
    nop

    .line 609
    .end local v2    # "$this$moveCursorPrevByWord_u24lambda_u2417":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorPrevByWord$1":I
    nop

    .line 611
    :cond_1
    nop

    .line 284
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method private final setCursor(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 172
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    .line 173
    return-void
.end method


# virtual methods
.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6
    .param p1, "or"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;"
        }
    .end annotation

    .line 202
    nop

    .line 502
    nop

    .line 503
    const/4 v0, 0x1

    .line 502
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 506
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 507
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 509
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 510
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$collapseLeftOr_u24lambda_u248":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 203
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$collapseLeftOr$1":I
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 206
    :cond_1
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    goto :goto_1

    .line 209
    :cond_2
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 212
    :goto_1
    nop

    .line 510
    .end local v2    # "$this$collapseLeftOr_u24lambda_u248":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$collapseLeftOr$1":I
    nop

    .line 512
    :cond_3
    nop

    .line 212
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6
    .param p1, "or"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;"
        }
    .end annotation

    .line 217
    nop

    .line 513
    nop

    .line 514
    const/4 v0, 0x1

    .line 513
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 517
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 518
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 520
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 521
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$collapseRightOr_u24lambda_u249":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 218
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$collapseRightOr$1":I
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_1
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    goto :goto_1

    .line 224
    :cond_2
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 227
    :goto_1
    nop

    .line 521
    .end local v2    # "$this$collapseRightOr_u24lambda_u249":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$collapseRightOr$1":I
    nop

    .line 523
    :cond_3
    nop

    .line 227
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final deleteIfSelectedOr(Lkotlin/jvm/functions/Function0;)V
    .locals 12
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextRange;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$deleteIfSelectedOr":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 105
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextRange;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v10

    .line 443
    .local v10, "it":J
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1":I
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 109
    .end local v1    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1":I
    .end local v10    # "it":J
    :cond_1
    :goto_0
    return-void
.end method

.method public final deselect()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6

    .line 179
    nop

    .line 469
    nop

    .line 470
    const/4 v0, 0x1

    .line 469
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 473
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 474
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 476
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 477
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$deselect_u24lambda_u245":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 180
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$deselect$1":I
    iget-wide v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 181
    nop

    .line 477
    .end local v2    # "$this$deselect_u24lambda_u245":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$deselect$1":I
    nop

    .line 479
    :cond_1
    nop

    .line 181
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final getInitialValue()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    return-object v0
.end method

.method public final getLineEndByOffset()I
    .locals 4

    .line 316
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getLineStartByOffset()I
    .locals 4

    .line 310
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    .line 238
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getNextWordOffset()I
    .locals 4

    .line 274
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    .line 232
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPreviousWordOffset()I
    .locals 4

    .line 280
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 92
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    return-wide v0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 7

    .line 306
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v2, 0x0

    .line 641
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 644
    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 645
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v3, "$this$moveCursorDownByLine_u24lambda_u2421":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v5, 0x0

    .line 307
    .local v5, "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorDownByLine$1":I
    iget-object v6, v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-direct {v3, v6, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 308
    nop

    .line 645
    .end local v3    # "$this$moveCursorDownByLine_u24lambda_u2421":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v5    # "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorDownByLine$1":I
    nop

    .line 647
    :cond_1
    nop

    .line 308
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final moveCursorDownByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6

    .line 121
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v2, 0x0

    .line 451
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 454
    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 455
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v3, "$this$moveCursorDownByPage_u24lambda_u243":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v5, 0x0

    .line 122
    .local v5, "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorDownByPage$1":I
    invoke-direct {v3, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByPagesOffset(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 123
    nop

    .line 455
    .end local v3    # "$this$moveCursorDownByPage_u24lambda_u243":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v5    # "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorDownByPage$1":I
    nop

    .line 457
    :cond_1
    nop

    .line 123
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final moveCursorLeft()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 183
    nop

    .line 480
    nop

    .line 481
    const/4 v0, 0x1

    .line 480
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 484
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 485
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 487
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 488
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorLeft_u24lambda_u246":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 184
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorLeft$1":I
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_1

    .line 187
    :cond_1
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 189
    :goto_1
    nop

    .line 488
    .end local v2    # "$this$moveCursorLeft_u24lambda_u246":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorLeft$1":I
    nop

    .line 490
    :cond_2
    nop

    .line 189
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 258
    nop

    .line 568
    nop

    .line 569
    const/4 v0, 0x1

    .line 568
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 572
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 573
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 575
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 576
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorLeftByWord_u24lambda_u2414":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 259
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorLeftByWord$1":I
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_1

    .line 262
    :cond_1
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 264
    :goto_1
    nop

    .line 576
    .end local v2    # "$this$moveCursorLeftByWord_u24lambda_u2414":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorLeftByWord$1":I
    nop

    .line 578
    :cond_2
    nop

    .line 264
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 7

    .line 294
    nop

    .line 623
    nop

    .line 624
    const/4 v0, 0x1

    .line 623
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 627
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 628
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 630
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 631
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorNextByParagraph_u24lambda_u2419":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 295
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorNextByParagraph$1":I
    iget-object v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    iget-wide v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 296
    .local v4, "paragraphEnd":I
    iget-wide v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 297
    iget-object v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 299
    :cond_1
    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 300
    nop

    .line 631
    .end local v2    # "$this$moveCursorNextByParagraph_u24lambda_u2419":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorNextByParagraph$1":I
    .end local v4    # "paragraphEnd":I
    nop

    .line 633
    :cond_2
    nop

    .line 300
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 7

    .line 286
    nop

    .line 612
    nop

    .line 613
    const/4 v0, 0x1

    .line 612
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 617
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 619
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 620
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorPrevByParagraph_u24lambda_u2418":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorPrevByParagraph$1":I
    iget-object v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    iget-wide v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 288
    .local v4, "paragraphStart":I
    iget-wide v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    if-ne v4, v5, :cond_1

    if-eqz v4, :cond_1

    .line 289
    iget-object v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 291
    :cond_1
    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 292
    nop

    .line 620
    .end local v2    # "$this$moveCursorPrevByParagraph_u24lambda_u2418":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorPrevByParagraph$1":I
    .end local v4    # "paragraphStart":I
    nop

    .line 622
    :cond_2
    nop

    .line 292
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorRight()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 191
    nop

    .line 491
    nop

    .line 492
    const/4 v0, 0x1

    .line 491
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 495
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 496
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 498
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 499
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorRight_u24lambda_u247":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 192
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorRight$1":I
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_1

    .line 195
    :cond_1
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 197
    :goto_1
    nop

    .line 499
    .end local v2    # "$this$moveCursorRight_u24lambda_u247":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorRight$1":I
    nop

    .line 501
    :cond_2
    nop

    .line 197
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 266
    nop

    .line 579
    nop

    .line 580
    const/4 v0, 0x1

    .line 579
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 583
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 584
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 586
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 587
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorRightByWord_u24lambda_u2415":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 267
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorRightByWord$1":I
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_1

    .line 270
    :cond_1
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 272
    :goto_1
    nop

    .line 587
    .end local v2    # "$this$moveCursorRightByWord_u24lambda_u2415":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorRightByWord$1":I
    nop

    .line 589
    :cond_2
    nop

    .line 272
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 254
    nop

    .line 557
    nop

    .line 558
    const/4 v0, 0x1

    .line 557
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 561
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 562
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 564
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 565
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorToEnd_u24lambda_u2413":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 255
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToEnd$1":I
    iget-object v4, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 256
    nop

    .line 565
    .end local v2    # "$this$moveCursorToEnd_u24lambda_u2413":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToEnd$1":I
    nop

    .line 567
    :cond_1
    nop

    .line 256
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 250
    nop

    .line 546
    nop

    .line 547
    const/4 v0, 0x1

    .line 546
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 550
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 551
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 553
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 554
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorToHome_u24lambda_u2412":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v4, 0x0

    .line 251
    .local v4, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToHome$1":I
    invoke-direct {v2, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 252
    nop

    .line 554
    .end local v2    # "$this$moveCursorToHome_u24lambda_u2412":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v4    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToHome$1":I
    nop

    .line 556
    :cond_1
    nop

    .line 252
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 318
    nop

    .line 659
    nop

    .line 660
    const/4 v0, 0x1

    .line 659
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 663
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 664
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 666
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 667
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorToLineEnd_u24lambda_u2423":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 319
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineEnd$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffset()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 320
    nop

    .line 667
    .end local v2    # "$this$moveCursorToLineEnd_u24lambda_u2423":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineEnd$1":I
    nop

    .line 669
    :cond_1
    nop

    .line 320
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 322
    nop

    .line 670
    nop

    .line 671
    const/4 v0, 0x1

    .line 670
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 674
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 675
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 677
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 678
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorToLineLeftSide_u24lambda_u2424":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 323
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineLeftSide$1":I
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_1

    .line 326
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 328
    :goto_1
    nop

    .line 678
    .end local v2    # "$this$moveCursorToLineLeftSide_u24lambda_u2424":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineLeftSide$1":I
    nop

    .line 680
    :cond_2
    nop

    .line 328
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 330
    nop

    .line 681
    nop

    .line 682
    const/4 v0, 0x1

    .line 681
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 685
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 686
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 688
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 689
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorToLineRightSide_u24lambda_u2425":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 331
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineRightSide$1":I
    invoke-direct {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    goto :goto_1

    .line 334
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 336
    :goto_1
    nop

    .line 689
    .end local v2    # "$this$moveCursorToLineRightSide_u24lambda_u2425":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineRightSide$1":I
    nop

    .line 691
    :cond_2
    nop

    .line 336
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 5

    .line 312
    nop

    .line 648
    nop

    .line 649
    const/4 v0, 0x1

    .line 648
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 652
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 653
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 655
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 656
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$moveCursorToLineStart_u24lambda_u2422":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineStart$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffset()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 314
    nop

    .line 656
    .end local v2    # "$this$moveCursorToLineStart_u24lambda_u2422":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$moveCursorToLineStart$1":I
    nop

    .line 658
    :cond_1
    nop

    .line 314
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 7

    .line 302
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v2, 0x0

    .line 634
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 637
    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 638
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v3, "$this$moveCursorUpByLine_u24lambda_u2420":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v4, 0x0

    .line 303
    .local v4, "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorUpByLine$1":I
    iget-object v5, v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v5

    invoke-direct {v3, v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 304
    nop

    .line 638
    .end local v3    # "$this$moveCursorUpByLine_u24lambda_u2420":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v4    # "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorUpByLine$1":I
    nop

    .line 640
    :cond_1
    nop

    .line 304
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final moveCursorUpByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 6

    .line 114
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v2, 0x0

    .line 444
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 447
    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 448
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v3, "$this$moveCursorUpByPage_u24lambda_u242":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v4, 0x0

    .line 115
    .local v4, "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorUpByPage$1":I
    const/4 v5, -0x1

    invoke-direct {v3, v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->jumpByPagesOffset(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->setCursor(I)V

    .line 116
    nop

    .line 448
    .end local v3    # "$this$moveCursorUpByPage_u24lambda_u242":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v4    # "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$moveCursorUpByPage$1":I
    nop

    .line 450
    :cond_1
    nop

    .line 116
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final selectAll()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 7

    .line 175
    nop

    .line 458
    nop

    .line 459
    const/4 v0, 0x1

    .line 458
    .local v0, "resetCachedX$iv":Z
    const/4 v1, 0x0

    .line 462
    .local v1, "$i$f$applyIfNotEmpty":I
    nop

    .line 463
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 465
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 466
    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v2, "$this$selectAll_u24lambda_u244":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v4, 0x0

    .line 176
    .local v4, "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$selectAll$1":I
    iget-object v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    .line 177
    nop

    .line 466
    .end local v2    # "$this$selectAll_u24lambda_u244":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v4    # "$i$a$-applyIfNotEmpty$default-TextFieldPreparedSelection$selectAll$1":I
    nop

    .line 468
    :cond_1
    nop

    .line 177
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "$i$f$applyIfNotEmpty":I
    return-object p0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .locals 8

    .line 339
    const/4 v0, 0x0

    .local v0, "resetCachedX$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v2, 0x0

    .line 692
    .local v2, "$i$f$applyIfNotEmpty":I
    nop

    .line 695
    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 696
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .local v3, "$this$selectMovement_u24lambda_u2426":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v4, 0x0

    .line 340
    .local v4, "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$selectMovement$1":I
    iget-object v5, v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    iget-wide v6, v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    .line 341
    nop

    .line 696
    .end local v3    # "$this$selectMovement_u24lambda_u2426":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v4    # "$i$a$-applyIfNotEmpty-TextFieldPreparedSelection$selectMovement$1":I
    nop

    .line 698
    :cond_1
    nop

    .line 341
    .end local v0    # "resetCachedX$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v2    # "$i$f$applyIfNotEmpty":I
    return-object v1
.end method

.method public final setSelection-5zc-tL8(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 92
    iput-wide p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selection:J

    return-void
.end method
