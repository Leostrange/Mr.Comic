.class public final Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;
.super Ljava/lang/Object;
.source "LayoutUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a2\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a*\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a2\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a!\u0010\u0017\u001a\u00020\u0006*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0010\u001b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "BigConstraintValue",
        "",
        "MediumConstraintValue",
        "SmallConstraintValue",
        "TinyConstraintValue",
        "finalConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "constraints",
        "softWrap",
        "",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "maxIntrinsicWidth",
        "",
        "finalConstraints-tfFHcEY",
        "(JZIF)J",
        "finalMaxLines",
        "maxLinesIn",
        "finalMaxLines-xdlQI24",
        "(ZII)I",
        "finalMaxWidth",
        "finalMaxWidth-tfFHcEY",
        "(JZIF)I",
        "fixedCoerceHeightAndWidthForBits",
        "Landroidx/compose/ui/unit/Constraints$Companion;",
        "width",
        "height",
        "(Landroidx/compose/ui/unit/Constraints$Companion;II)J",
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
.field private static final BigConstraintValue:I = 0x3ffff

.field private static final MediumConstraintValue:I = 0xffff

.field private static final SmallConstraintValue:I = 0x7fff

.field private static final TinyConstraintValue:I = 0x1fff


# direct methods
.method public static final finalConstraints-tfFHcEY(JZIF)J
    .locals 6
    .param p0, "constraints"    # J
    .param p2, "softWrap"    # Z
    .param p3, "overflow"    # I
    .param p4, "maxIntrinsicWidth"    # F

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalMaxWidth-tfFHcEY(JZIF)I

    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    .line 31
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 34
    return-wide v0
.end method

.method public static final finalMaxLines-xdlQI24(ZII)I
    .locals 2
    .param p0, "softWrap"    # Z
    .param p1, "overflow"    # I
    .param p2, "maxLinesIn"    # I

    .line 86
    const/4 v0, 0x1

    if-nez p0, :cond_0

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 87
    .local v1, "overwriteMaxLines":Z
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_1
    return v0
.end method

.method public static final finalMaxWidth-tfFHcEY(JZIF)I
    .locals 4
    .param p0, "constraints"    # J
    .param p2, "softWrap"    # Z
    .param p3, "overflow"    # I
    .param p4, "maxIntrinsicWidth"    # F

    .line 45
    if-nez p2, :cond_1

    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 46
    .local v0, "widthMatters":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    goto :goto_2

    .line 49
    :cond_2
    const v1, 0x7fffffff

    .line 46
    :goto_2
    nop

    .line 61
    .local v1, "maxWidth":I
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 62
    move v2, v1

    goto :goto_3

    .line 64
    :cond_3
    invoke-static {p4}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-static {v2, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .line 61
    :goto_3
    return v2
.end method

.method public static final fixedCoerceHeightAndWidthForBits(Landroidx/compose/ui/unit/Constraints$Companion;II)J
    .locals 4
    .param p0, "$this$fixedCoerceHeightAndWidthForBits"    # Landroidx/compose/ui/unit/Constraints$Companion;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 114
    const v0, 0x3fffe

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    .local v1, "safeWidth":I
    nop

    .line 116
    const/16 v2, 0x1fff

    if-ge v1, v2, :cond_0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 117
    :cond_0
    const/16 v0, 0x7fff

    if-ge v1, v0, :cond_1

    const v0, 0xfffe

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 118
    :cond_1
    const v0, 0xffff

    if-ge v1, v0, :cond_2

    const/16 v0, 0x7ffe

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 119
    :cond_2
    const/16 v0, 0x1ffe

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    :goto_0
    nop

    .line 121
    .local v0, "safeHeight":I
    invoke-virtual {p0, v1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v2

    return-wide v2
.end method
