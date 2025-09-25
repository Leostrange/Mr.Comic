.class public final Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
.super Ljava/lang/Object;
.source "TransformedTextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;,
        Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformedTextFieldState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformedTextFieldState.kt\nandroidx/compose/foundation/text2/input/internal/TransformedTextFieldState\n+ 2 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,393:1\n186#2,20:394\n186#2,20:414\n186#2,20:434\n186#2,20:454\n186#2,20:474\n186#2,20:494\n186#2,20:514\n186#2,20:534\n186#2,20:554\n314#3,11:574\n*S KotlinDebug\n*F\n+ 1 TransformedTextFieldState.kt\nandroidx/compose/foundation/text2/input/internal/TransformedTextFieldState\n*L\n93#1:394,20\n99#1:414,20\n106#1:434,20\n112#1:454,20\n131#1:474,20\n148#1:494,20\n166#1:514,20\n173#1:534,20\n201#1:554,20\n277#1:574,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 H2\u00020\u0001:\u0002HIB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u0013J,\u0010\u001b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0017\u0010\u001e\u001a\u0013\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00130\u001f\u00a2\u0006\u0002\u0008!H\u0086\u0008J\u0013\u0010\"\u001a\u00020\u001d2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J\u000e\u0010&\u001a\u00020%2\u0006\u0010+\u001a\u00020%J\u0018\u0010,\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010*J\u001b\u0010,\u001a\u00020\'2\u0006\u0010+\u001a\u00020%\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/J\u000e\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020%J\u0006\u00102\u001a\u00020\u0013J\u000e\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u000205J\"\u00106\u001a\u00020\u00132\u0006\u00104\u001a\u0002052\u0008\u0008\u0002\u00107\u001a\u00020\u001d2\u0008\u0008\u0002\u00108\u001a\u000209J*\u0010:\u001a\u00020\u00132\u0006\u00104\u001a\u0002052\u0006\u0010(\u001a\u00020\'2\u0008\u0008\u0002\u00108\u001a\u000209\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010<J\u0006\u0010=\u001a\u00020\u0013J\u0018\u0010>\u001a\u00020\u00132\u0006\u0010?\u001a\u00020\'\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010AJ\u0018\u0010B\u001a\u00020\u00132\u0006\u0010C\u001a\u00020\'\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010AJ\u0008\u0010E\u001a\u00020FH\u0016J\u0006\u0010G\u001a\u00020\u0013R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006J"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "inputTransformation",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "codepointTransformation",
        "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V",
        "text",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "getText",
        "()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "transformedText",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;",
        "untransformedText",
        "getUntransformedText",
        "collapseSelectionToEnd",
        "",
        "collapseSelectionToMax",
        "collectImeNotifications",
        "",
        "notifyImeListener",
        "Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;",
        "(Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteSelectedText",
        "editUntransformedTextAsUser",
        "notifyImeOfChanges",
        "",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "Lkotlin/ExtensionFunctionType;",
        "equals",
        "other",
        "hashCode",
        "",
        "mapFromTransformed",
        "Landroidx/compose/ui/text/TextRange;",
        "range",
        "mapFromTransformed-GEjPoXI",
        "(J)J",
        "offset",
        "mapToTransformed",
        "mapToTransformed-GEjPoXI",
        "mapToTransformed--jx7JFs",
        "(I)J",
        "placeCursorBeforeCharAt",
        "transformedOffset",
        "redo",
        "replaceAll",
        "newText",
        "",
        "replaceSelectedText",
        "clearComposition",
        "undoBehavior",
        "Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;",
        "replaceText",
        "replaceText-Sb-Bc2M",
        "(Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V",
        "selectAll",
        "selectCharsIn",
        "transformedRange",
        "selectCharsIn-5zc-tL8",
        "(J)V",
        "selectUntransformedCharsIn",
        "untransformedRange",
        "selectUntransformedCharsIn-5zc-tL8",
        "toString",
        "",
        "undo",
        "Companion",
        "TransformedText",
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

.field private static final Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;


# instance fields
.field private final codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

.field private final inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

.field private final textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

.field private final transformedText:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V
    .locals 3
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p2, "inputTransformation"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p3, "codepointTransformation"    # Landroidx/compose/foundation/text2/input/CodepointTransformation;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 56
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 57
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    .line 61
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    if-eqz v0, :cond_0

    .local v0, "transformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-let-TransformedTextFieldState$transformedText$1":I
    new-instance v2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;

    invoke-direct {v2, p0, v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 61
    .end local v0    # "transformation":Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .end local v1    # "$i$a$-let-TransformedTextFieldState$transformedText$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    .line 54
    return-void
.end method

.method public static final synthetic access$getCompanion$p()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;
    .locals 1

    .line 52
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    return-object v0
.end method

.method public static final synthetic access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 52
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    return-object v0
.end method

.method public static final synthetic access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 52
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    return-object v0
.end method

.method private static final calculateTransformedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic editUntransformedTextAsUser$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 8
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p1, "notifyImeOfChanges"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 197
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 198
    const/4 p1, 0x1

    .line 197
    :cond_0
    const/4 p3, 0x0

    .line 201
    .local p3, "$i$f$editUntransformedTextAsUser":I
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object p4

    .line 202
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v0

    .line 201
    nop

    .line 554
    .local v0, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local p4, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    nop

    .line 557
    sget-object v1, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 554
    .local v1, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v2, 0x0

    .line 560
    .local v2, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v3

    .line 562
    .local v3, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 563
    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v4

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 566
    invoke-interface {v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v4

    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    invoke-interface {v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v4

    invoke-virtual {p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    goto :goto_0

    .line 572
    :cond_1
    invoke-static {p4, v3, v0, p1, v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 573
    nop

    .line 206
    .end local v0    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v1    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v2    # "$i$f$editAsUser$foundation_release":I
    .end local v3    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local p4    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    :goto_0
    return-void
.end method

.method private static final mapFromTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final mapToTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->access$mapToTransformed-xdX6-G0(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic replaceSelectedText$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V
    .locals 0

    .line 143
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 145
    const/4 p2, 0x0

    .line 143
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 146
    sget-object p3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 143
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceSelectedText(Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    return-void
.end method

.method public static synthetic replaceText-Sb-Bc2M$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V
    .locals 0

    .line 126
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 129
    sget-object p4, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceText-Sb-Bc2M(Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    return-void
.end method


# virtual methods
.method public final collapseSelectionToEnd()V
    .locals 11

    .line 173
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 534
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 536
    const/4 v2, 0x1

    .line 534
    .local v2, "notifyImeOfChanges$iv":Z
    nop

    .line 537
    sget-object v3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 534
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 540
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 542
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 543
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    .local v6, "$this$collapseSelectionToEnd_u24lambda_u248":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v7, 0x0

    .line 175
    .local v7, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$collapseSelectionToEnd$1":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 176
    nop

    .line 543
    .end local v6    # "$this$collapseSelectionToEnd_u24lambda_u248":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$collapseSelectionToEnd$1":I
    nop

    .line 545
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 546
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 547
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 549
    goto :goto_0

    .line 552
    :cond_0
    invoke-static {v0, v5, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 553
    nop

    .line 177
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final collapseSelectionToMax()V
    .locals 11

    .line 166
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 514
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 516
    const/4 v2, 0x1

    .line 514
    .local v2, "notifyImeOfChanges$iv":Z
    nop

    .line 517
    sget-object v3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 514
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 520
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 522
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 523
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    .local v6, "$this$collapseSelectionToMax_u24lambda_u247":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v7, 0x0

    .line 168
    .local v7, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$collapseSelectionToMax$1":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 169
    nop

    .line 523
    .end local v6    # "$this$collapseSelectionToMax_u24lambda_u247":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$collapseSelectionToMax$1":I
    nop

    .line 525
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 526
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 527
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 529
    goto :goto_0

    .line 532
    :cond_0
    invoke-static {v0, v5, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 533
    nop

    .line 170
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final collectImeNotifications(Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;

    iget v1, v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 274
    iget v2, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$suspendCancellableCoroutine":I
    iget-object v1, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;

    iget-object v1, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "$i$f$suspendCancellableCoroutine":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 277
    .local v2, "this":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .local p1, "notifyImeListener":Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;
    const/4 v3, 0x0

    .line 574
    .local v3, "$i$f$suspendCancellableCoroutine":I
    iput-object v2, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$1;->label:I

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .local v5, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 575
    .local v6, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v4, v7

    .line 581
    .local v4, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 582
    move-object v7, v4

    check-cast v7, Lkotlinx/coroutines/CancellableContinuation;

    .local v7, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v8, 0x0

    .line 278
    .local v8, "$i$a$-suspendCancellableCoroutine-TransformedTextFieldState$collectImeNotifications$2":I
    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroidx/compose/foundation/text2/input/TextFieldState;->addNotifyImeListener$foundation_release(Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;)V

    .line 279
    new-instance v9, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$2$1;

    invoke-direct {v9, v2, p1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$collectImeNotifications$2$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v9}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 282
    .end local v2    # "this":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .end local p1    # "notifyImeListener":Landroidx/compose/foundation/text2/input/TextFieldState$NotifyImeListener;
    nop

    .line 582
    .end local v7    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v8    # "$i$a$-suspendCancellableCoroutine-TransformedTextFieldState$collectImeNotifications$2":I
    nop

    .line 583
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 574
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v5    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    move-object v2, p2

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    if-ne p1, v1, :cond_2

    .line 274
    return-object v1

    .line 574
    :cond_2
    move p1, v3

    .line 584
    .end local v3    # "$i$f$suspendCancellableCoroutine":I
    .local p1, "$i$f$suspendCancellableCoroutine":I
    :goto_1
    nop

    .line 277
    .end local p1    # "$i$f$suspendCancellableCoroutine":I
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteSelectedText()V
    .locals 11

    .line 112
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 113
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 114
    sget-object v2, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->NeverMerge:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 112
    nop

    .line 454
    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .local v2, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    nop

    .line 456
    const/4 v3, 0x1

    .line 454
    .local v3, "notifyImeOfChanges$iv":Z
    const/4 v4, 0x0

    .line 460
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 462
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 463
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    .local v6, "$this$deleteSelectedText_u24lambda_u244":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v7, 0x0

    .line 117
    .local v7, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$deleteSelectedText$1":I
    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->delete(II)V

    .line 118
    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 119
    nop

    .line 463
    .end local v6    # "$this$deleteSelectedText_u24lambda_u244":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$deleteSelectedText$1":I
    nop

    .line 465
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 466
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 467
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    goto :goto_0

    .line 472
    :cond_0
    invoke-static {v0, v5, v1, v3, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 473
    nop

    .line 120
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v3    # "notifyImeOfChanges$iv":Z
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final editUntransformedTextAsUser(ZLkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1, "notifyImeOfChanges"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    .local v0, "$i$f$editUntransformedTextAsUser":I
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v1

    .line 202
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v2

    .line 201
    nop

    .line 554
    .local v1, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .local v2, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 557
    sget-object v3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 554
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 560
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 562
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 563
    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 566
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 567
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    goto :goto_0

    .line 572
    :cond_0
    invoke-static {v1, v5, v2, p1, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 573
    nop

    .line 206
    .end local v1    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v2    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 286
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 288
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    iget-object v2, v2, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 289
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    iget-object v1, v1, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getUntransformedText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 293
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->hashCode()I

    move-result v0

    .line 294
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 295
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final mapFromTransformed(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 252
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    .local v0, "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapFromDest--jx7JFs(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    return v1

    .line 252
    .end local v0    # "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_1
    :goto_0
    return p1
.end method

.method public final mapFromTransformed-GEjPoXI(J)J
    .locals 3
    .param p1, "range"    # J

    .line 265
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 266
    .local v0, "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v1, p1, p2, v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v1

    return-wide v1

    .line 265
    .end local v0    # "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_1
    :goto_0
    return-wide p1
.end method

.method public final mapToTransformed--jx7JFs(I)J
    .locals 3
    .param p1, "offset"    # I

    .line 222
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    .local v0, "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapFromSource--jx7JFs(I)J

    move-result-wide v1

    return-wide v1

    .line 222
    .end local v0    # "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final mapToTransformed-GEjPoXI(J)J
    .locals 3
    .param p1, "range"    # J

    .line 235
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;->getOffsetMapping()Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    .local v0, "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->Companion:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    invoke-static {v1, p1, p2, v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->access$mapToTransformed-xdX6-G0(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v1

    return-wide v1

    .line 235
    .end local v0    # "mapping":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    :cond_1
    :goto_0
    return-wide p1
.end method

.method public final placeCursorBeforeCharAt(I)V
    .locals 2
    .param p1, "transformedOffset"    # I

    .line 84
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    .line 85
    return-void
.end method

.method public final redo()V
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getUndoState()Landroidx/compose/foundation/text2/input/UndoState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/UndoState;->redo()V

    .line 185
    return-void
.end method

.method public final replaceAll(Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 414
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 416
    const/4 v2, 0x1

    .line 414
    .local v2, "notifyImeOfChanges$iv":Z
    nop

    .line 417
    sget-object v3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 414
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 420
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 422
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 423
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    .local v6, "$this$replaceAll_u24lambda_u242":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v7, 0x0

    .line 100
    .local v7, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$replaceAll$1":I
    invoke-static {v6}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->deleteAll(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text2/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 102
    nop

    .line 423
    .end local v6    # "$this$replaceAll_u24lambda_u242":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$replaceAll$1":I
    nop

    .line 425
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 426
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    goto :goto_0

    .line 432
    :cond_0
    invoke-static {v0, v5, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 433
    nop

    .line 103
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final replaceSelectedText(Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V
    .locals 11
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "clearComposition"    # Z
    .param p3, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 148
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 494
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 496
    const/4 v2, 0x1

    .line 494
    .local v2, "notifyImeOfChanges$iv":Z
    const/4 v3, 0x0

    .line 500
    .local v3, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v4

    .line 502
    .local v4, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 503
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    .local v5, "$this$replaceSelectedText_u24lambda_u246":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v6, 0x0

    .line 149
    .local v6, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$replaceSelectedText$1":I
    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    .line 154
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    .line 155
    .local v7, "selection":J
    nop

    .line 156
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    .line 157
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v10

    .line 158
    nop

    .line 155
    invoke-virtual {v5, v9, v10, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 160
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v9, v10

    .line 161
    .local v9, "cursor":I
    invoke-virtual {v5, v9, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 162
    nop

    .line 503
    .end local v5    # "$this$replaceSelectedText_u24lambda_u246":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$replaceSelectedText$1":I
    .end local v7    # "selection":J
    .end local v9    # "cursor":I
    nop

    .line 505
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 506
    invoke-interface {v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    invoke-interface {v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    goto :goto_0

    .line 512
    :cond_1
    invoke-static {v0, v4, v1, v2, p3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 513
    nop

    .line 163
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "$i$f$editAsUser$foundation_release":I
    .end local v4    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final replaceText-Sb-Bc2M(Ljava/lang/CharSequence;JLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V
    .locals 11
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "range"    # J
    .param p4, "undoBehavior"    # Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 131
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 474
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 476
    const/4 v2, 0x1

    .line 474
    .local v2, "notifyImeOfChanges$iv":Z
    const/4 v3, 0x0

    .line 480
    .local v3, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v4

    .line 482
    .local v4, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 483
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    .local v5, "$this$replaceText_Sb_Bc2M_u24lambda_u245":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v6, 0x0

    .line 132
    .local v6, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$replaceText$1":I
    invoke-virtual {p0, p2, p3}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v7

    .line 133
    .local v7, "selection":J
    nop

    .line 134
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    .line 135
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v10

    .line 136
    nop

    .line 133
    invoke-virtual {v5, v9, v10, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 138
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v9, v10

    .line 139
    .local v9, "cursor":I
    invoke-virtual {v5, v9, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 140
    nop

    .line 483
    .end local v5    # "$this$replaceText_Sb_Bc2M_u24lambda_u245":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v6    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$replaceText$1":I
    .end local v7    # "selection":J
    .end local v9    # "cursor":I
    nop

    .line 485
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 486
    invoke-interface {v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 487
    invoke-interface {v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 489
    goto :goto_0

    .line 492
    :cond_0
    invoke-static {v0, v4, v1, v2, p4}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 493
    nop

    .line 141
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "$i$f$editAsUser$foundation_release":I
    .end local v4    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final selectAll()V
    .locals 10

    .line 106
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 434
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 436
    const/4 v2, 0x1

    .line 434
    .local v2, "notifyImeOfChanges$iv":Z
    nop

    .line 437
    sget-object v3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 434
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 440
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 442
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 443
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    .local v6, "$this$selectAll_u24lambda_u243":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v7, 0x0

    .line 107
    .local v7, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$selectAll$1":I
    const/4 v8, 0x0

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 108
    nop

    .line 443
    .end local v6    # "$this$selectAll_u24lambda_u243":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$selectAll$1":I
    nop

    .line 445
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 446
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 449
    goto :goto_0

    .line 452
    :cond_0
    invoke-static {v0, v5, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 453
    nop

    .line 109
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public final selectCharsIn-5zc-tL8(J)V
    .locals 2
    .param p1, "transformedRange"    # J

    .line 88
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v0

    .line 89
    .local v0, "untransformedRange":J
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->selectUntransformedCharsIn-5zc-tL8(J)V

    .line 90
    return-void
.end method

.method public final selectUntransformedCharsIn-5zc-tL8(J)V
    .locals 10
    .param p1, "untransformedRange"    # J

    .line 93
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .local v0, "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 394
    .local v1, "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    nop

    .line 396
    const/4 v2, 0x1

    .line 394
    .local v2, "notifyImeOfChanges$iv":Z
    nop

    .line 397
    sget-object v3, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 394
    .local v3, "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    const/4 v4, 0x0

    .line 400
    .local v4, "$i$f$editAsUser$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v5

    .line 402
    .local v5, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 403
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    .local v6, "$this$selectUntransformedCharsIn_5zc_tL8_u24lambda_u241":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v7, 0x0

    .line 94
    .local v7, "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$selectUntransformedCharsIn$1":I
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v8

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 95
    nop

    .line 403
    .end local v6    # "$this$selectUntransformedCharsIn_5zc_tL8_u24lambda_u241":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v7    # "$i$a$-editAsUser$foundation_release$default-TransformedTextFieldState$selectUntransformedCharsIn$1":I
    nop

    .line 405
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->getChangeCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 406
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    invoke-interface {v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    goto :goto_0

    .line 412
    :cond_0
    invoke-static {v0, v5, v1, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/InputTransformation;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 413
    nop

    .line 96
    .end local v0    # "$this$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "inputTransformation$iv":Landroidx/compose/foundation/text2/input/InputTransformation;
    .end local v2    # "notifyImeOfChanges$iv":Z
    .end local v3    # "undoBehavior$iv":Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;
    .end local v4    # "$i$f$editAsUser$foundation_release":I
    .end local v5    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TransformedTextFieldState(textFieldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    nop

    .line 298
    const-string v1, ", codepointTransformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    nop

    .line 298
    const-string v1, ", transformedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->transformedText:Landroidx/compose/runtime/State;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    nop

    .line 298
    const-string v1, ", text=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    nop

    .line 298
    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method public final undo()V
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->textFieldState:Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getUndoState()Landroidx/compose/foundation/text2/input/UndoState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/UndoState;->undo()V

    .line 181
    return-void
.end method
