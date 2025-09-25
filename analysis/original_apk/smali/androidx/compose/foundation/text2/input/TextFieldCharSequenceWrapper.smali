.class final Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;
.super Ljava/lang/Object;
.source "TextFieldCharSequence.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/TextFieldCharSequence;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0013\u0010\u0016\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0011\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u000cH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u000cH\u0016J&\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000cJ\u0008\u0010&\u001a\u00020\'H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u00020\u0005X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "text",
        "",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "composition",
        "(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "compositionInChars",
        "getCompositionInChars-MzsxiRA",
        "()Landroidx/compose/ui/text/TextRange;",
        "length",
        "",
        "getLength",
        "()I",
        "selectionInChars",
        "getSelectionInChars-d9O1mEE",
        "()J",
        "J",
        "contentEquals",
        "",
        "other",
        "equals",
        "",
        "get",
        "",
        "index",
        "hashCode",
        "subSequence",
        "startIndex",
        "endIndex",
        "toCharArray",
        "",
        "destination",
        "",
        "destinationOffset",
        "sourceStartIndex",
        "sourceEndIndex",
        "toString",
        "",
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
.field private final compositionInChars:Landroidx/compose/ui/text/TextRange;

.field private final selectionInChars:J

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selection"    # J
    .param p4, "composition"    # Landroidx/compose/ui/text/TextRange;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Landroidx/compose/ui/text/TextRangeKt;->coerceIn-8ffj60Q(JII)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->selectionInChars:J

    .line 109
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v2, v3, v1, v0}, Landroidx/compose/ui/text/TextRangeKt;->coerceIn-8ffj60Q(JII)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->compositionInChars:Landroidx/compose/ui/text/TextRange;

    .line 98
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)V

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 97
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->get(I)C

    move-result v0

    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/CharSequence;

    .line 118
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 135
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 138
    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    .line 140
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getSelectionInChars-d9O1mEE()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 141
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 142
    :cond_4
    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    iget-object v2, v2, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 144
    :cond_5
    return v0
.end method

.method public get(I)C
    .locals 1
    .param p1, "index"    # I

    .line 111
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->compositionInChars:Landroidx/compose/ui/text/TextRange;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getSelectionInChars-d9O1mEE()J
    .locals 2

    .line 107
    iget-wide v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->selectionInChars:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 148
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 149
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->hashCode-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->hashCode-impl(J)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 151
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final bridge length()I
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->getLength()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 114
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final toCharArray([CIII)V
    .locals 1
    .param p1, "destination"    # [C
    .param p2, "destinationOffset"    # I
    .param p3, "sourceStartIndex"    # I
    .param p4, "sourceEndIndex"    # I

    .line 126
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/ToCharArray_androidKt;->toCharArray(Ljava/lang/CharSequence;[CIII)V

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
