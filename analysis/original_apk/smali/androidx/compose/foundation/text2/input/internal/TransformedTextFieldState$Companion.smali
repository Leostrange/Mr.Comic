.class final Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;
.super Ljava/lang/Object;
.source "TransformedTextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0003J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\"\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u000f\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;",
        "",
        "()V",
        "calculateTransformedText",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;",
        "untransformedText",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "codepointTransformation",
        "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
        "mapFromTransformed",
        "Landroidx/compose/ui/text/TextRange;",
        "range",
        "mapping",
        "Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;",
        "mapFromTransformed-xdX6-G0",
        "(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J",
        "mapToTransformed",
        "mapToTransformed-xdX6-G0",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateTransformedText(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;
    .param p1, "untransformedText"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "codepointTransformation"    # Landroidx/compose/foundation/text2/input/CodepointTransformation;

    .line 310
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->calculateTransformedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;
    .param p1, "range"    # J
    .param p3, "mapping"    # Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    .line 310
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->mapFromTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$mapToTransformed-xdX6-G0(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;
    .param p1, "range"    # J
    .param p3, "mapping"    # Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    .line 310
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final calculateTransformedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;
    .locals 8
    .param p1, "untransformedText"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "codepointTransformation"    # Landroidx/compose/foundation/text2/input/CodepointTransformation;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 326
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;-><init>()V

    .line 330
    .local v0, "offsetMappingCalculator":Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/text2/input/CodepointTransformationKt;->toVisualText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    nop

    .line 333
    .local v1, "transformedText":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 334
    return-object v2

    .line 338
    :cond_0
    nop

    .line 341
    nop

    .line 342
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v3

    .line 343
    nop

    .line 341
    invoke-direct {p0, v3, v4, v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v3

    .line 345
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getCompositionInChars-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v5

    .local v5, "it":J
    const/4 v2, 0x0

    .line 346
    .local v2, "$i$a$-let-TransformedTextFieldState$Companion$calculateTransformedText$transformedTextWithSelection$1":I
    invoke-static {}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getCompanion$p()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    move-result-object v7

    invoke-direct {v7, v5, v6, v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J

    move-result-wide v5

    .end local v2    # "$i$a$-let-TransformedTextFieldState$Companion$calculateTransformedText$transformedTextWithSelection$1":I
    .end local v5    # "it":J
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    .line 345
    nop

    .line 337
    :cond_1
    invoke-static {v1, v3, v4, v2}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    .line 349
    .local v2, "transformedTextWithSelection":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    invoke-direct {v3, v2, v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;-><init>(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)V

    return-object v3
.end method

.method private final mapFromTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J
    .locals 8
    .param p1, "range"    # J
    .param p3, "mapping"    # Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 377
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapFromDest--jx7JFs(I)J

    move-result-wide v0

    .line 379
    .local v0, "untransformedStart":J
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {p3, v2}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapFromDest--jx7JFs(I)J

    move-result-wide v2

    .line 379
    :goto_0
    nop

    .line 383
    .local v2, "untransformedEnd":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 384
    .local v4, "untransformedMin":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 385
    .local v5, "untransformedMax":I
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    invoke-static {v5, v4}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    goto :goto_1

    .line 388
    :cond_1
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    .line 385
    :goto_1
    return-wide v6
.end method

.method private final mapToTransformed-xdX6-G0(JLandroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;)J
    .locals 8
    .param p1, "range"    # J
    .param p3, "mapping"    # Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 357
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapFromSource--jx7JFs(I)J

    move-result-wide v0

    .line 359
    .local v0, "transformedStart":J
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {p3, v2}, Landroidx/compose/foundation/text2/input/internal/OffsetMappingCalculator;->mapFromSource--jx7JFs(I)J

    move-result-wide v2

    .line 359
    :goto_0
    nop

    .line 363
    .local v2, "transformedEnd":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 364
    .local v4, "transformedMin":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 365
    .local v5, "transformedMax":I
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    invoke-static {v5, v4}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    goto :goto_1

    .line 368
    :cond_1
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v6

    .line 365
    :goto_1
    return-wide v6
.end method
