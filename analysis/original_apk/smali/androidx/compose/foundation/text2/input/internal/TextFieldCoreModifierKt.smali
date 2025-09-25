.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;
.super Ljava/lang/Object;
.source "TextFieldCoreModifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldCoreModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldCoreModifier.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,584:1\n652#2:585\n154#3:586\n*S KotlinDebug\n*F\n+ 1 TextFieldCoreModifier.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt\n*L\n535#1:585\n529#1:586\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a.\u0010\n\u001a\u00020\u000b*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000eH\u0002\u001a\u000c\u0010\u0013\u001a\u00020\u0005*\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "DefaultCursorThickness",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "cursorAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "isSpecified",
        "",
        "Landroidx/compose/ui/graphics/Brush;",
        "(Landroidx/compose/ui/graphics/Brush;)Z",
        "getCursorRectInScroller",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/unit/Density;",
        "cursorOffset",
        "",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "rtl",
        "textFieldWidth",
        "roundToNext",
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
.field private static final DefaultCursorThickness:F

.field private static final cursorAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 519
    nop

    .line 520
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt$cursorAnimationSpec$1;->INSTANCE:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt$cursorAnimationSpec$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 519
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    sput-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->cursorAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 529
    const/4 v0, 0x2

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 586
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 529
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->DefaultCursorThickness:F

    return-void
.end method

.method public static final synthetic access$getCursorAnimationSpec$p()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->cursorAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public static final synthetic access$getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/unit/Density;
    .param p1, "cursorOffset"    # I
    .param p2, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p3, "rtl"    # Z
    .param p4, "textFieldWidth"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isSpecified(Landroidx/compose/ui/graphics/Brush;)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/Brush;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->isSpecified(Landroidx/compose/ui/graphics/Brush;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$roundToNext(F)F
    .locals 1
    .param p0, "$receiver"    # F

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->roundToNext(F)F

    move-result v0

    return v0
.end method

.method private static final getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 8
    .param p0, "$this$getCursorRectInScroller"    # Landroidx/compose/ui/unit/Density;
    .param p1, "cursorOffset"    # I
    .param p2, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;
    .param p3, "rtl"    # Z
    .param p4, "textFieldWidth"    # I

    .line 556
    if-eqz p2, :cond_1

    .line 557
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Lkotlin/ranges/ClosedRange;

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result v0

    .line 556
    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 558
    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    move-object v1, v0

    .line 556
    :goto_1
    nop

    .line 559
    .local v1, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    sget v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->DefaultCursorThickness:F

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    .line 561
    .local v0, "thickness":I
    if-eqz p3, :cond_2

    .line 562
    int-to-float v2, p4

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    goto :goto_2

    .line 564
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    .line 561
    :goto_2
    nop

    .line 567
    .local v2, "cursorLeft":F
    if-eqz p3, :cond_3

    .line 568
    int-to-float v3, p4

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    move v4, v3

    goto :goto_3

    .line 570
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    int-to-float v4, v0

    add-float/2addr v3, v4

    move v4, v3

    .line 567
    :goto_3
    nop

    .line 572
    .local v4, "cursorRight":F
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/geometry/Rect;->copy$default(Landroidx/compose/ui/geometry/Rect;FFFFILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    return-object v3
.end method

.method private static final isSpecified(Landroidx/compose/ui/graphics/Brush;)Z
    .locals 6
    .param p0, "$this$isSpecified"    # Landroidx/compose/ui/graphics/Brush;

    .line 535
    instance-of v0, p0, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v2

    .local v2, "$this$isUnspecified$iv":J
    const/4 v0, 0x0

    .line 585
    .local v0, "$i$f$isUnspecified-8_81llA":I
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v5

    .end local v0    # "$i$f$isUnspecified-8_81llA":I
    .end local v2    # "$this$isUnspecified$iv":J
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 535
    :goto_2
    return v1
.end method

.method private static final roundToNext(F)F
    .locals 2
    .param p0, "$this$roundToNext"    # F

    .line 579
    nop

    .line 580
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1

    .line 582
    :cond_1
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1

    .line 580
    :cond_2
    :goto_0
    move v0, p0

    .line 583
    :goto_1
    return v0
.end method
