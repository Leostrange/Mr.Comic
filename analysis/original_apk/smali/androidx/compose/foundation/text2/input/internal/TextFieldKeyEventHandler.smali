.class public abstract Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
.super Ljava/lang/Object;
.source "TextFieldKeyEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldKeyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldKeyEventHandler.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler\n+ 2 TransformedTextFieldState.kt\nandroidx/compose/foundation/text2/input/internal/TransformedTextFieldState\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n+ 4 TextPreparedSelection.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n229#1,9:284\n238#1,5:384\n197#2,6:257\n206#2:283\n197#2,6:330\n206#2:356\n197#2,6:357\n206#2:383\n186#3,20:263\n186#3,20:336\n186#3,20:363\n104#4,4:293\n109#4:299\n104#4,4:300\n109#4:305\n104#4,4:306\n109#4:311\n104#4,4:312\n109#4:317\n104#4,4:318\n109#4:323\n104#4,4:324\n109#4:329\n1#5:297\n1#5:298\n1#5:304\n1#5:310\n1#5:316\n1#5:322\n1#5:328\n*S KotlinDebug\n*F\n+ 1 TextFieldKeyEventHandler.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler\n*L\n105#1:284,9\n105#1:384,5\n88#1:257,6\n88#1:283\n170#1:330,6\n170#1:356\n181#1:357,6\n181#1:383\n88#1:263,20\n170#1:336,20\n181#1:363,20\n127#1:293,4\n127#1:299\n137#1:300,4\n137#1:305\n145#1:306,4\n145#1:311\n151#1:312,4\n151#1:317\n157#1:318,4\n157#1:323\n163#1:324,4\n163#1:329\n127#1:298\n137#1:304\n145#1:310\n151#1:316\n157#1:322\n163#1:328\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JP\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J:\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J2\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00170$\u00a2\u0006\u0002\u0008&H\u0082\u0008J\u0013\u0010\'\u001a\u0004\u0018\u00010(*\u00020\u0010H\u0002\u00a2\u0006\u0002\u0010)R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;",
        "",
        "()V",
        "deadKeyCombiner",
        "Landroidx/compose/foundation/text/DeadKeyCombiner;",
        "keyMapping",
        "Landroidx/compose/foundation/text/KeyMapping;",
        "preparedSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;",
        "onKeyEvent",
        "",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textLayoutState",
        "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
        "textFieldSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "editable",
        "singleLine",
        "onSubmit",
        "Lkotlin/Function0;",
        "",
        "onKeyEvent-6ptp14s",
        "(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;ZZLkotlin/jvm/functions/Function0;)Z",
        "onPreKeyEvent",
        "focusManager",
        "Landroidx/compose/ui/focus/FocusManager;",
        "keyboardController",
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "onPreKeyEvent-MyFupTE",
        "(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z",
        "preparedSelectionContext",
        "state",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
        "Lkotlin/ExtensionFunctionType;",
        "getVisibleTextLayoutHeight",
        "",
        "(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)Ljava/lang/Float;",
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
.field private final deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

.field private final keyMapping:Landroidx/compose/foundation/text/KeyMapping;

.field private final preparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    .line 51
    new-instance v0, Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-direct {v0}, Landroidx/compose/foundation/text/DeadKeyCombiner;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    .line 52
    invoke-static {}, Landroidx/compose/foundation/text/KeyMapping_androidKt;->getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->keyMapping:Landroidx/compose/foundation/text/KeyMapping;

    .line 49
    return-void
.end method

.method private final getVisibleTextLayoutHeight(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)Ljava/lang/Float;
    .locals 7
    .param p1, "$this$getVisibleTextLayoutHeight"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 249
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v2, v0

    .line 297
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 249
    .local v3, "$i$a$-takeIf-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "$i$a$-takeIf-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .local v0, "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v2, 0x0

    .line 250
    .local v2, "$i$a$-let-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$2":I
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getDecoratorNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, v3

    .line 297
    .local v4, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v5, 0x0

    .line 250
    .local v5, "$i$a$-takeIf-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$2$1":I
    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    .end local v4    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v5    # "$i$a$-takeIf-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$2$1":I
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .local v3, "decoratorCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v4, 0x0

    .line 251
    .local v4, "$i$a$-let-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$2$2":I
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v0, v5, v6, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 250
    .end local v3    # "decoratorCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v4    # "$i$a$-let-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$2$2":I
    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 249
    .end local v0    # "textLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v2    # "$i$a$-let-TextFieldKeyEventHandler$getVisibleTextLayoutHeight$2":I
    :goto_2
    nop

    .line 253
    if-eqz v3, :cond_3

    .line 249
    nop

    .line 253
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_3

    .line 249
    :cond_3
    nop

    :goto_3
    return-object v1
.end method

.method private final preparedSelectionContext(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "state"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    .local v0, "$i$f$preparedSelectionContext":I
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 230
    .local v1, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->getVisibleTextLayoutHeight(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 231
    .local v2, "visibleTextLayoutHeight":F
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    .line 231
    invoke-direct {v3, p1, v1, v2, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;FLandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;)V

    .line 237
    .local v3, "preparedSelection":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getInitialValue()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    .line 242
    :cond_1
    return-void

    .line 230
    .end local v2    # "visibleTextLayoutHeight":F
    .end local v3    # "preparedSelection":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    :cond_2
    return-void
.end method


# virtual methods
.method public onKeyEvent-6ptp14s(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;ZZLkotlin/jvm/functions/Function0;)Z
    .locals 30
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p3, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p4, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p5, "editable"    # Z
    .param p6, "singleLine"    # Z
    .param p7, "onSubmit"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
            "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v3

    sget-object v4, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 80
    return v4

    .line 83
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/TextFieldKeyInput_androidKt;->isTypedEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 84
    iget-object v3, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-virtual {v3, v1}, Landroidx/compose/foundation/text/DeadKeyCombiner;->consume-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Integer;

    move-result-object v3

    .line 85
    .local v3, "codePoint":Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/StringHelpers_jvmKt;->appendCodePointX(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "text":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 88
    nop

    .line 257
    nop

    .line 258
    const/4 v4, 0x1

    .line 257
    .local v4, "notifyImeOfChanges$iv":Z
    const/4 v7, 0x0

    .line 261
    .local v7, "$i$f$editUntransformedTextAsUser":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v8

    .line 262
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v9

    .line 261
    nop

    .line 263
    .local v8, "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .local v9, "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 266
    sget-object v10, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 263
    .local v10, "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v11, 0x0

    .line 269
    .local v11, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v12

    .line 271
    .local v12, "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 272
    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v13

    .local v13, "$this$onKeyEvent_6ptp14s_u24lambda_u240":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v14, 0x0

    .line 89
    .local v14, "$i$a$-editUntransformedTextAsUser$default-TextFieldKeyEventHandler$onKeyEvent$1":I
    invoke-virtual {v13}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 90
    invoke-static {v13, v6, v5}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 91
    nop

    .line 272
    .end local v13    # "$this$onKeyEvent_6ptp14s_u24lambda_u240":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v14    # "$i$a$-editUntransformedTextAsUser$default-TextFieldKeyEventHandler$onKeyEvent$1":I
    nop

    .line 274
    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v13

    if-nez v13, :cond_1

    .line 275
    invoke-interface {v12}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v13

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v15

    move-object/from16 v16, v6

    .end local v6    # "text":Ljava/lang/String;
    .local v16, "text":Ljava/lang/String;
    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    invoke-interface {v12}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    goto :goto_0

    .line 274
    .end local v16    # "text":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v6

    .line 281
    .end local v6    # "text":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_2
    invoke-static {v8, v12, v9, v4, v10}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 282
    nop

    .line 283
    .end local v8    # "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v9    # "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v10    # "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v11    # "$i$f$editAsUser$foundation_release":I
    .end local v12    # "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    nop

    .line 92
    .end local v4    # "notifyImeOfChanges$iv":Z
    .end local v7    # "$i$f$editUntransformedTextAsUser":I
    iget-object v4, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 93
    const/4 v4, 0x1

    goto :goto_1

    .line 95
    .end local v16    # "text":Ljava/lang/String;
    .restart local v6    # "text":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v6

    .line 87
    .end local v6    # "text":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :goto_1
    return v4

    .line 100
    .end local v3    # "codePoint":Ljava/lang/Integer;
    .end local v16    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->keyMapping:Landroidx/compose/foundation/text/KeyMapping;

    invoke-interface {v3, v1}, Landroidx/compose/foundation/text/KeyMapping;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    move-result-object v3

    .line 101
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroidx/compose/foundation/text/KeyCommand;->getEditsText()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p5, :cond_5

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    goto/16 :goto_10

    .line 104
    :cond_5
    const/4 v5, 0x0

    .local v5, "consumed":Z
    const/4 v5, 0x1

    .line 105
    move-object/from16 v6, p0

    .local v6, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    const/4 v7, 0x0

    .line 284
    .local v7, "$i$f$preparedSelectionContext":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v8

    if-nez v8, :cond_6

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    goto/16 :goto_e

    .line 285
    .local v8, "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_6
    move-object/from16 v9, p3

    invoke-direct {v6, v9}, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->getVisibleTextLayoutHeight(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 286
    .local v10, "visibleTextLayoutHeight$iv":F
    new-instance v11, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 290
    iget-object v12, v6, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;

    .line 286
    invoke-direct {v11, v2, v8, v10, v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;FLandroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelectionState;)V

    .line 292
    .local v11, "preparedSelection$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    move-object v12, v11

    .local v12, "$this$onKeyEvent_6ptp14s_u24lambda_u2413":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v13, 0x0

    .line 106
    .local v13, "$i$a$-preparedSelectionContext-TextFieldKeyEventHandler$onKeyEvent$2":I
    sget-object v14, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/foundation/text/KeyCommand;->ordinal()I

    move-result v15

    aget v14, v14, v15

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-string v17, ""

    packed-switch v14, :pswitch_data_0

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v18, "command":Landroidx/compose/foundation/text/KeyCommand;
    .local v19, "$i$f$preparedSelectionContext":I
    .local v20, "consumed":Z
    .local v21, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .local v22, "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    goto/16 :goto_c

    .line 217
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_0
    invoke-static {}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->showCharacterPalette()V

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 213
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->redo()V

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 209
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->undo()V

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 207
    :pswitch_3
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->deselect()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 206
    :pswitch_4
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 205
    :pswitch_5
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToHome()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 204
    :pswitch_6
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorDownByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 203
    :pswitch_7
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorUpByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 202
    :pswitch_8
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorDownByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 201
    :pswitch_9
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorUpByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 200
    :pswitch_a
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineRightSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 199
    :pswitch_b
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 198
    :pswitch_c
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 197
    :pswitch_d
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 196
    :pswitch_e
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNextByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 195
    :pswitch_f
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 194
    :pswitch_10
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorRightByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 193
    :pswitch_11
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorLeftByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 192
    :pswitch_12
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorRight()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 191
    :pswitch_13
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorLeft()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 190
    :pswitch_14
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->selectAll()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    goto/16 :goto_c

    .line 180
    :pswitch_15
    if-nez p6, :cond_9

    .line 181
    nop

    .line 357
    nop

    .line 358
    const/4 v4, 0x1

    .line 357
    .restart local v4    # "notifyImeOfChanges$iv":Z
    const/4 v14, 0x0

    .line 361
    .local v14, "$i$f$editUntransformedTextAsUser":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v15

    .line 362
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v16

    .line 361
    nop

    .local v15, "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    move-object/from16 v17, v16

    .line 363
    .local v17, "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 366
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 363
    .local v0, "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/16 v16, 0x0

    .line 369
    .local v16, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 371
    .local v1, "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 372
    move-object/from16 v18, v3

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    .local v3, "$this$onKeyEvent_6ptp14s_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/16 v19, 0x0

    .line 182
    .local v19, "$i$a$-editUntransformedTextAsUser$default-TextFieldKeyEventHandler$onKeyEvent$2$10":I
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 183
    move/from16 v20, v5

    .end local v5    # "consumed":Z
    .restart local v20    # "consumed":Z
    const-string v5, "\t"

    move-object/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    invoke-static {v3, v5, v6}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 184
    nop

    .line 372
    .end local v3    # "$this$onKeyEvent_6ptp14s_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v19    # "$i$a$-editUntransformedTextAsUser$default-TextFieldKeyEventHandler$onKeyEvent$2$10":I
    nop

    .line 374
    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 375
    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v19, "$i$f$preparedSelectionContext":I
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 376
    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    invoke-virtual {v15}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 378
    goto :goto_2

    .line 374
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_7
    move/from16 v19, v7

    move-object/from16 v22, v8

    .line 381
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_8
    move-object/from16 v3, v17

    .end local v17    # "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v3, "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    invoke-static {v15, v1, v3, v4, v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 382
    nop

    .line 383
    .end local v0    # "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v1    # "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local v3    # "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v15    # "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v16    # "$i$f$editAsUser$foundation_release":I
    :goto_2
    move-object/from16 v0, p4

    .end local v4    # "notifyImeOfChanges$iv":Z
    .end local v14    # "$i$f$editUntransformedTextAsUser":I
    goto/16 :goto_c

    .line 186
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_9
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v0, 0x0

    move v5, v0

    move-object/from16 v0, p4

    .end local v20    # "consumed":Z
    .local v0, "consumed":Z
    goto/16 :goto_d

    .line 169
    .end local v0    # "consumed":Z
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_16
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    if-nez p6, :cond_b

    .line 170
    nop

    .line 330
    nop

    .line 331
    const/4 v0, 0x1

    .line 330
    .local v0, "notifyImeOfChanges$iv":Z
    const/4 v1, 0x0

    .line 334
    .local v1, "$i$f$editUntransformedTextAsUser":I
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v3

    .line 335
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v4

    .line 334
    nop

    .line 336
    .local v3, "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .local v4, "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 339
    sget-object v5, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 336
    .local v5, "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v6, 0x0

    .line 342
    .local v6, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v7

    .line 344
    .local v7, "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 345
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    .local v8, "$this$onKeyEvent_6ptp14s_u24lambda_u2413_u24lambda_u2411":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v14, 0x0

    .line 171
    .local v14, "$i$a$-editUntransformedTextAsUser$default-TextFieldKeyEventHandler$onKeyEvent$2$9":I
    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 172
    const-string v15, "\n"

    move/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "$i$f$editUntransformedTextAsUser":I
    .local v16, "$i$f$editUntransformedTextAsUser":I
    invoke-static {v8, v15, v1}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 173
    nop

    .line 345
    .end local v8    # "$this$onKeyEvent_6ptp14s_u24lambda_u2413_u24lambda_u2411":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v14    # "$i$a$-editUntransformedTextAsUser$default-TextFieldKeyEventHandler$onKeyEvent$2$9":I
    nop

    .line 347
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 348
    invoke-interface {v7}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v14

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v14, v15, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 349
    invoke-interface {v7}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 351
    goto :goto_3

    .line 354
    :cond_a
    invoke-static {v3, v7, v4, v0, v5}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 355
    nop

    .line 356
    .end local v3    # "$this$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v4    # "inputTransformation$iv$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v5    # "undoBehavior$iv$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v6    # "$i$f$editAsUser$foundation_release":I
    .end local v7    # "previousValue$iv$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_3
    move-object/from16 v0, p4

    .end local v0    # "notifyImeOfChanges$iv":Z
    .end local v16    # "$i$f$editUntransformedTextAsUser":I
    goto/16 :goto_c

    .line 175
    :cond_b
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 163
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .local v5, "consumed":Z
    .local v6, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .local v7, "$i$f$preparedSelectionContext":I
    .local v8, "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_17
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object v0, v12

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$f$deleteIfSelectedOr":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 325
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_4

    .line 327
    :cond_c
    const/4 v3, 0x0

    .line 164
    .local v3, "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$8":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineEndByOffset()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v25

    .line 327
    .end local v3    # "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$8":I
    nop

    .line 328
    .local v25, "it$iv":J
    const/4 v3, 0x0

    .line 327
    .local v3, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 329
    .end local v3    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    .end local v25    # "it$iv":J
    :goto_4
    move-object/from16 v0, p4

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v1    # "$i$f$deleteIfSelectedOr":I
    goto/16 :goto_c

    .line 157
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_18
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object v0, v12

    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v1, 0x0

    .line 318
    .restart local v1    # "$i$f$deleteIfSelectedOr":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-nez v3, :cond_d

    .line 319
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_5

    .line 321
    :cond_d
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$7":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getLineStartByOffset()I

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v25

    .line 321
    .end local v3    # "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$7":I
    nop

    .line 322
    .restart local v25    # "it$iv":J
    const/4 v3, 0x0

    .line 321
    .local v3, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 323
    .end local v3    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    .end local v25    # "it$iv":J
    :goto_5
    move-object/from16 v0, p4

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v1    # "$i$f$deleteIfSelectedOr":I
    goto/16 :goto_c

    .line 151
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_19
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object v0, v12

    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v1, 0x0

    .line 312
    .restart local v1    # "$i$f$deleteIfSelectedOr":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-nez v3, :cond_e

    .line 313
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_6

    .line 315
    :cond_e
    const/4 v3, 0x0

    .line 152
    .local v3, "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$6":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextWordOffset()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v25

    .line 315
    .end local v3    # "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$6":I
    nop

    .line 316
    .restart local v25    # "it$iv":J
    const/4 v3, 0x0

    .line 315
    .local v3, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 317
    .end local v3    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    .end local v25    # "it$iv":J
    :goto_6
    move-object/from16 v0, p4

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v1    # "$i$f$deleteIfSelectedOr":I
    goto/16 :goto_c

    .line 145
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_1a
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object v0, v12

    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v1, 0x0

    .line 306
    .restart local v1    # "$i$f$deleteIfSelectedOr":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 307
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_7

    .line 309
    :cond_f
    const/4 v3, 0x0

    .line 146
    .local v3, "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$5":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPreviousWordOffset()I

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v25

    .line 309
    .end local v3    # "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$5":I
    nop

    .line 310
    .restart local v25    # "it$iv":J
    const/4 v3, 0x0

    .line 309
    .local v3, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 311
    .end local v3    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    .end local v25    # "it$iv":J
    :goto_7
    move-object/from16 v0, p4

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v1    # "$i$f$deleteIfSelectedOr":I
    goto/16 :goto_c

    .line 137
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_1b
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    const/4 v1, 0x1

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object v0, v12

    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 300
    .local v3, "$i$f$deleteIfSelectedOr":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-nez v5, :cond_10

    .line 301
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_9

    .line 303
    :cond_10
    const/4 v5, 0x0

    .line 138
    .local v5, "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$4":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getNextCharacterIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 297
    .local v7, "it":I
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$a$-takeIf-TextFieldKeyEventHandler$onKeyEvent$2$4$1":I
    if-eq v7, v15, :cond_11

    move v4, v1

    .end local v7    # "it":I
    .end local v8    # "$i$a$-takeIf-TextFieldKeyEventHandler$onKeyEvent$2$4$1":I
    :cond_11
    if-eqz v4, :cond_12

    goto :goto_8

    :cond_12
    move-object/from16 v6, v16

    :goto_8
    if-eqz v6, :cond_13

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1

    .local v1, "it":I
    const/4 v4, 0x0

    .line 139
    .local v4, "$i$a$-let-TextFieldKeyEventHandler$onKeyEvent$2$4$2":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v6

    invoke-static {v6, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    .end local v1    # "it":I
    .end local v4    # "$i$a$-let-TextFieldKeyEventHandler$onKeyEvent$2$4$2":I
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v16

    .line 138
    nop

    .line 303
    .end local v5    # "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$4":I
    :cond_13
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    .line 304
    .local v4, "it$iv":J
    const/4 v1, 0x0

    .line 303
    .local v1, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-wide/from16 v25, v4

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 305
    .end local v1    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    .end local v4    # "it$iv":J
    :cond_14
    :goto_9
    move-object/from16 v0, p4

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$f$deleteIfSelectedOr":I
    goto/16 :goto_c

    .line 127
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .local v5, "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .local v7, "$i$f$preparedSelectionContext":I
    .local v8, "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_1c
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    const/4 v1, 0x1

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object v0, v12

    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$f$deleteIfSelectedOr":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-nez v5, :cond_15

    .line 294
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    goto :goto_b

    .line 296
    :cond_15
    const/4 v5, 0x0

    .line 128
    .local v5, "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$3":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 297
    .local v7, "it":I
    const/4 v8, 0x0

    .line 128
    .local v8, "$i$a$-takeIf-TextFieldKeyEventHandler$onKeyEvent$2$3$1":I
    if-eq v7, v15, :cond_16

    move v4, v1

    .end local v7    # "it":I
    .end local v8    # "$i$a$-takeIf-TextFieldKeyEventHandler$onKeyEvent$2$3$1":I
    :cond_16
    if-eqz v4, :cond_17

    goto :goto_a

    :cond_17
    move-object/from16 v6, v16

    :goto_a
    if-eqz v6, :cond_18

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1

    .local v1, "it":I
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$a$-let-TextFieldKeyEventHandler$onKeyEvent$2$3$2":I
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-static {v1, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    .end local v1    # "it":I
    .end local v4    # "$i$a$-let-TextFieldKeyEventHandler$onKeyEvent$2$3$2":I
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v16

    .line 128
    nop

    .line 296
    .end local v5    # "$i$a$-deleteIfSelectedOr-TextFieldKeyEventHandler$onKeyEvent$2$3":I
    :cond_18
    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    .line 298
    .local v4, "it$iv":J
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v23

    move-object/from16 v24, v17

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-wide/from16 v25, v4

    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 299
    .end local v1    # "$i$a$-let-TextFieldPreparedSelection$deleteIfSelectedOr$1$iv":I
    .end local v4    # "it$iv":J
    :cond_19
    :goto_b
    move-object/from16 v0, p4

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v3    # "$i$f$deleteIfSelectedOr":I
    goto/16 :goto_c

    .line 125
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .local v3, "command":Landroidx/compose/foundation/text/KeyCommand;
    .local v5, "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .local v7, "$i$f$preparedSelectionContext":I
    .local v8, "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_1d
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 124
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_1e
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToHome()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 123
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_1f
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineRightSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 122
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_20
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 121
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_21
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 120
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_22
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 119
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_23
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorDownByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 118
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_24
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorUpByPage()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 117
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_25
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorDownByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 116
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_26
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorUpByLine()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 115
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_27
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorNextByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 114
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_28
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 113
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_29
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorRightByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 112
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_2a
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v12}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->moveCursorLeftByWord()Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto/16 :goto_c

    .line 111
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_2b
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$2;->INSTANCE:Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto :goto_c

    .line 110
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_2c
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$1;->INSTANCE:Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;

    move-object/from16 v0, p4

    goto :goto_c

    .line 109
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_2d
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cut()V

    move-object/from16 v0, p4

    goto :goto_c

    .line 108
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_2e
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->paste()V

    move-object/from16 v0, p4

    goto :goto_c

    .line 107
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v20    # "consumed":Z
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v5    # "consumed":Z
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :pswitch_2f
    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v5    # "consumed":Z
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v19    # "$i$f$preparedSelectionContext":I
    .restart local v20    # "consumed":Z
    .restart local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->copy(Z)V

    .line 220
    :goto_c
    move/from16 v5, v20

    .end local v20    # "consumed":Z
    .restart local v5    # "consumed":Z
    :goto_d
    nop

    .line 292
    .end local v12    # "$this$onKeyEvent_6ptp14s_u24lambda_u2413":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v13    # "$i$a$-preparedSelectionContext-TextFieldKeyEventHandler$onKeyEvent$2":I
    nop

    .line 384
    invoke-virtual {v11}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-virtual {v11}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getInitialValue()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 386
    invoke-virtual {v11}, Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    .line 388
    :cond_1a
    goto :goto_f

    .line 285
    .end local v10    # "visibleTextLayoutHeight$iv":F
    .end local v11    # "preparedSelection$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldPreparedSelection;
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .end local v19    # "$i$f$preparedSelectionContext":I
    .end local v21    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v22    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .restart local v7    # "$i$f$preparedSelectionContext":I
    .restart local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_1b
    move-object/from16 v0, p4

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v22, v8

    .line 221
    .end local v6    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldKeyEventHandler;
    .end local v7    # "$i$f$preparedSelectionContext":I
    .end local v8    # "layoutResult$iv":Landroidx/compose/ui/text/TextLayoutResult;
    :goto_e
    move/from16 v5, v20

    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    :goto_f
    return v5

    .line 101
    .end local v5    # "consumed":Z
    .end local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    :cond_1c
    move-object/from16 v0, p4

    move-object/from16 v18, v3

    .line 102
    .end local v3    # "command":Landroidx/compose/foundation/text/KeyCommand;
    .restart local v18    # "command":Landroidx/compose/foundation/text/KeyCommand;
    :goto_10
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreKeyEvent-MyFupTE(Landroid/view/KeyEvent;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p3, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p4, "focusManager"    # Landroidx/compose/ui/focus/FocusManager;
    .param p5, "keyboardController"    # Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 61
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    .line 62
    .local v0, "selection":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->cancelsTextSelection-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->deselect()V

    .line 64
    const/4 v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    return v2
.end method
