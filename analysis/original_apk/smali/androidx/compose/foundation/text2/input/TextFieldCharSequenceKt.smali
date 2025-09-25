.class public final Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;
.super Ljava/lang/Object;
.source "TextFieldCharSequence.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0004\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a&\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u000c\u0010\u000c\u001a\u00020\u0003*\u00020\u0001H\u0000\u001a\u0014\u0010\r\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a\u0014\u0010\u0010\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a,\u0010\u0011\u001a\u00020\u0012*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "TextFieldCharSequence",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "text",
        "",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "composition",
        "TextFieldCharSequence-3r_uNRQ",
        "(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "",
        "TextFieldCharSequence-FDrldGo",
        "(Ljava/lang/String;J)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "getSelectedText",
        "getTextAfterSelection",
        "maxChars",
        "",
        "getTextBeforeSelection",
        "toCharArray",
        "",
        "destination",
        "",
        "destinationOffset",
        "sourceStartIndex",
        "sourceEndIndex",
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


# direct methods
.method public static final TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "selection"    # J
    .param p3, "composition"    # Landroidx/compose/ui/text/TextRange;

    .line 78
    new-instance v6, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    return-object v6
.end method

.method public static synthetic TextFieldCharSequence-3r_uNRQ$default(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 0

    .line 74
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 77
    const/4 p3, 0x0

    .line 74
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final TextFieldCharSequence-FDrldGo(Ljava/lang/String;J)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "selection"    # J

    .line 71
    new-instance v6, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    return-object v6
.end method

.method public static synthetic TextFieldCharSequence-FDrldGo$default(Ljava/lang/String;JILjava/lang/Object;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .locals 0

    .line 68
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 69
    const-string p0, ""

    .line 68
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 70
    sget-object p1, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p1

    .line 68
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-FDrldGo(Ljava/lang/String;J)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final getSelectedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "$this$getSelectedText"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    .line 184
    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTextAfterSelection(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "$this$getTextAfterSelection"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p1, "maxChars"    # I

    .line 177
    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTextBeforeSelection(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "$this$getTextBeforeSelection"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p1, "maxChars"    # I

    .line 165
    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final toCharArray(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;[CIII)V
    .locals 1
    .param p0, "$this$toCharArray"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p1, "destination"    # [C
    .param p2, "destinationOffset"    # I
    .param p3, "sourceStartIndex"    # I
    .param p4, "sourceEndIndex"    # I

    .line 90
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.foundation.text2.input.TextFieldCharSequenceWrapper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 90
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceWrapper;->toCharArray([CIII)V

    .line 95
    return-void
.end method
