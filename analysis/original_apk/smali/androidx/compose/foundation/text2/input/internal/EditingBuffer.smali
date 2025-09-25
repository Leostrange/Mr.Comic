.class public final Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
.super Ljava/lang/Object;
.source "EditingBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditingBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditingBuffer.kt\nandroidx/compose/foundation/text2/input/internal/EditingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 92\u00020\u0001:\u00019B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011H\u0002J\u0006\u0010,\u001a\u00020)J\u0016\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011J\u0011\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0011H\u0086\u0002J\u0006\u00101\u001a\u000202J\u001e\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u000204J\u0016\u00105\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011J\u0016\u00106\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011J\u0006\u00107\u001a\u00020\u0007J\u0008\u00108\u001a\u00020\u0003H\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00058F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R$\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0014R\u0017\u0010\u0004\u001a\u00020\u00058F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010\u001aR$\u0010%\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0014\"\u0004\u0008\'\u0010\u001a\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/EditingBuffer;",
        "",
        "text",
        "",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "changeTracker",
        "Landroidx/compose/foundation/text2/input/internal/ChangeTracker;",
        "getChangeTracker",
        "()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;",
        "composition",
        "getComposition-MzsxiRA",
        "()Landroidx/compose/ui/text/TextRange;",
        "<set-?>",
        "",
        "compositionEnd",
        "getCompositionEnd",
        "()I",
        "compositionStart",
        "getCompositionStart",
        "cursor",
        "getCursor",
        "setCursor",
        "(I)V",
        "gapBuffer",
        "Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;",
        "length",
        "getLength",
        "getSelection-d9O1mEE",
        "()J",
        "value",
        "selectionEnd",
        "getSelectionEnd",
        "setSelectionEnd",
        "selectionStart",
        "getSelectionStart",
        "setSelectionStart",
        "checkRange",
        "",
        "start",
        "end",
        "commitComposition",
        "delete",
        "get",
        "",
        "index",
        "hasComposition",
        "",
        "replace",
        "",
        "setComposition",
        "setSelection",
        "toAnnotatedString",
        "toString",
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

.field public static final Companion:Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;

.field public static final NOWHERE:I = -0x1


# instance fields
.field private final changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

.field private compositionEnd:I

.field private compositionStart:I

.field private final gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

.field private selectionEnd:I

.field private selectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->Companion:Landroidx/compose/foundation/text2/input/internal/EditingBuffer$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;J)V
    .locals 3
    .param p1, "text"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p2, "selection"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    .line 47
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text2/input/internal/ChangeTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    .line 52
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    .line 61
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 80
    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    .line 137
    nop

    .line 138
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->checkRange(II)V

    .line 139
    nop

    .line 27
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selection"    # J

    .line 135
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-direct {p0, v6, p2, p3, v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method private final checkRange(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 285
    const-string v0, ") offset is outside of text region "

    if-ltz p1, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 291
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 296
    return-void

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "end ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final setSelectionEnd(I)V
    .locals 3
    .param p1, "value"    # I

    .line 63
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 64
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    .line 65
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    .line 63
    .local v0, "$i$a$-require-EditingBuffer$selectionEnd$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set selectionEnd to a negative value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-EditingBuffer$selectionEnd$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final setSelectionStart(I)V
    .locals 3
    .param p1, "value"    # I

    .line 54
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    .line 56
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    .line 54
    .local v0, "$i$a$-require-EditingBuffer$selectionStart$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set selectionStart to a negative value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-EditingBuffer$selectionStart$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final commitComposition()V
    .locals 1

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 277
    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    .line 278
    return-void
.end method

.method public final delete(II)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 198
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->checkRange(II)V

    .line 199
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    .line 201
    .local v0, "deleteRange":J
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->trackChange(III)V

    .line 203
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v6

    const-string v2, ""

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 206
    iget v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    iget v3, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    .line 207
    nop

    .line 205
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBufferKt;->updateRangeAfterDelete-pWDy79M(JJ)J

    move-result-wide v2

    .line 209
    .local v2, "newSelection":J
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionStart(I)V

    .line 210
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionEnd(I)V

    .line 212
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    iget v4, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    iget v5, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v4

    .line 214
    .local v4, "compositionRange":J
    invoke-static {v4, v5, v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBufferKt;->updateRangeAfterDelete-pWDy79M(JJ)J

    move-result-wide v6

    .line 215
    .local v6, "newComposition":J
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->commitComposition()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v8

    iput v8, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 219
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    iput v8, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    .line 222
    .end local v4    # "compositionRange":J
    .end local v6    # "newComposition":J
    :cond_1
    :goto_0
    return-void
.end method

.method public final get(I)C
    .locals 1
    .param p1, "index"    # I

    .line 125
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    return-object v0
.end method

.method public final getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->hasComposition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCompositionEnd()I
    .locals 1

    .line 80
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    return v0
.end method

.method public final getCompositionStart()I
    .locals 1

    .line 72
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    return v0
.end method

.method public final getCursor()I
    .locals 2

    .line 114
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v0

    return v0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 101
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    iget v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSelectionEnd()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionEnd:I

    return v0
.end method

.method public final getSelectionStart()I
    .locals 1

    .line 52
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->selectionStart:I

    return v0
.end method

.method public final hasComposition()Z
    .locals 2

    .line 86
    iget v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final replace(IILjava/lang/CharSequence;)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p2}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->checkRange(II)V

    .line 150
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 151
    .local v10, "min":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 158
    .local v11, "max":I
    const/4 v1, 0x0

    .line 159
    .local v1, "i":I
    move v2, v10

    move v12, v1

    move v13, v2

    .line 160
    .end local v1    # "i":I
    .local v12, "i":I
    .local v13, "cMin":I
    :goto_0
    if-ge v13, v11, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v12, v1, :cond_0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v2, v13}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_0

    .line 161
    add-int/lit8 v12, v12, 0x1

    .line 162
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 166
    .local v1, "j":I
    move v2, v11

    move v14, v1

    move v15, v2

    .line 167
    .end local v1    # "j":I
    .local v14, "j":I
    .local v15, "cMax":I
    :goto_1
    if-le v15, v10, :cond_1

    if-le v14, v12, :cond_1

    add-int/lit8 v1, v14, -0x1

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    add-int/lit8 v3, v15, -0x1

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 168
    add-int/lit8 v14, v14, -0x1

    .line 169
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->changeTracker:Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    sub-int v2, v14, v12

    invoke-virtual {v1, v13, v15, v2}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->trackChange(III)V

    .line 174
    iget-object v1, v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move v2, v10

    move v3, v11

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 181
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionStart(I)V

    .line 182
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionEnd(I)V

    .line 187
    const/4 v1, -0x1

    iput v1, v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 188
    iput v1, v0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    .line 189
    return-void
.end method

.method public final setComposition(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 254
    const-string v0, ") offset is outside of text region "

    if-ltz p1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_2

    .line 259
    if-ltz p2, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    .line 264
    if-ge p1, p2, :cond_0

    .line 268
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionStart:I

    .line 269
    iput p2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->compositionEnd:I

    .line 270
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not set reversed or empty range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "end ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setCursor(I)V
    .locals 0
    .param p1, "cursor"    # I

    .line 120
    invoke-virtual {p0, p1, p1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    return-void
.end method

.method public final setSelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 233
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 234
    .local v0, "clampedStart":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getLength()I

    move-result v2

    invoke-static {p2, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    .line 236
    .local v1, "clampedEnd":I
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionStart(I)V

    .line 237
    invoke-direct {p0, v1}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelectionEnd(I)V

    .line 238
    return-void
.end method

.method public final toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 7

    .line 282
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->gapBuffer:Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
