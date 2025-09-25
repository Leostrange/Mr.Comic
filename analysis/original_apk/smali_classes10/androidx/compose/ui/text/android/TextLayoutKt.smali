.class public final Landroidx/compose/ui/text/android/TextLayoutKt;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n+ 2 InlineClassUtils.kt\nandroidx/compose/ui/text/android/InlineClassUtilsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,1031:1\n25#2:1032\n26#3:1033\n26#3:1034\n*S KotlinDebug\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n*L\n884#1:1032\n1022#1:1033\n1026#1:1034\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001d\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0010\t\u001a\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0000\u001a1\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00a2\u0006\u0002\u0010\u0016\u001a\u001f\u0010\u0017\u001a\u00020\u0003*\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00a2\u0006\u0002\u0010\u0018\u001a\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u000fH\u0002\u00a2\u0006\u0002\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u00020\u0003*\u00020\u000fH\u0002\u00a2\u0006\u0002\u0010\u001c\u001a\u0014\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\u00a8\u0006!"
    }
    d2 = {
        "SharedTextAndroidCanvas",
        "Landroidx/compose/ui/text/android/TextAndroidCanvas;",
        "ZeroVerticalPadding",
        "Landroidx/compose/ui/text/android/VerticalPaddings;",
        "J",
        "VerticalPaddings",
        "topPadding",
        "",
        "bottomPadding",
        "(II)J",
        "getTextDirectionHeuristic",
        "Landroid/text/TextDirectionHeuristic;",
        "textDirectionHeuristic",
        "getLastLineMetrics",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "Landroidx/compose/ui/text/android/TextLayout;",
        "textPaint",
        "Landroid/text/TextPaint;",
        "frameworkTextDir",
        "lineHeightSpans",
        "",
        "Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;",
        "getLineHeightPaddings",
        "(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J",
        "getLineHeightSpans",
        "(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "getVerticalPaddings",
        "(Landroidx/compose/ui/text/android/TextLayout;)J",
        "isLineEllipsized",
        "",
        "Landroid/text/Layout;",
        "lineIndex",
        "ui-text_release"
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
.field private static final SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

.field private static final ZeroVerticalPadding:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    .line 942
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    return-void
.end method

.method public static final VerticalPaddings(II)J
    .locals 7
    .param p0, "topPadding"    # I
    .param p1, "bottomPadding"    # I

    .line 884
    const/4 v0, 0x0

    .line 1032
    .local v0, "$i$f$packInts":I
    int-to-long v1, p0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    .line 884
    .end local v0    # "$i$f$packInts":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/VerticalPaddings;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "frameworkTextDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .locals 2
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSharedTextAndroidCanvas$p()Landroidx/compose/ui/text/android/TextAndroidCanvas;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    return-object v0
.end method

.method public static final synthetic access$getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .locals 2
    .param p0, "$receiver"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 32
    .param p0, "$this$getLastLineMetrics"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "frameworkTextDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 973
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 975
    .local v0, "lastLine":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 976
    move-object/from16 v2, p3

    array-length v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 978
    new-instance v1, Landroid/text/SpannableString;

    const-string/jumbo v3, "\u200b"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 979
    .local v1, "emptyText":Landroid/text/SpannableString;
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 980
    .local v3, "lineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    nop

    .line 981
    nop

    .line 982
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 983
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 984
    move v6, v4

    goto :goto_1

    .line 986
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v6

    .line 980
    :goto_1
    invoke-virtual {v3, v4, v5, v6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->copy$ui_text_release(IIZ)Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object v5

    .line 990
    .local v5, "newLineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    nop

    .line 991
    nop

    .line 992
    nop

    .line 993
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 994
    nop

    .line 990
    const/16 v7, 0x21

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 997
    sget-object v8, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 998
    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    .line 999
    nop

    .line 1000
    const v11, 0x7fffffff

    .line 1001
    const/4 v12, 0x0

    .line 1002
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v13

    .line 1003
    nop

    .line 997
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v22

    .line 1005
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getFallbackLineSpacing()Z

    move-result v23

    .line 997
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x1f9fc0

    const/16 v31, 0x0

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v31}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create$default(Landroidx/compose/ui/text/android/StaticLayoutFactory;Ljava/lang/CharSequence;Landroid/text/TextPaint;IIILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[IILjava/lang/Object;)Landroid/text/StaticLayout;

    move-result-object v6

    .line 1008
    .local v6, "tmpLayout":Landroid/text/StaticLayout;
    new-instance v7, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v7}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v8, v7

    .local v8, "$this$getLastLineMetrics_u24lambda_u240":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v9, 0x0

    .line 1009
    .local v9, "$i$a$-apply-TextLayoutKt$getLastLineMetrics$lastLineFontMetrics$1":I
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1010
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1011
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v10

    iput v10, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1012
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    iput v4, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1013
    nop

    .line 1008
    .end local v8    # "$this$getLastLineMetrics_u24lambda_u240":Landroid/graphics/Paint$FontMetricsInt;
    .end local v9    # "$i$a$-apply-TextLayoutKt$getLastLineMetrics$lastLineFontMetrics$1":I
    move-object v4, v7

    .line 1015
    .local v4, "lastLineFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    return-object v4

    .line 975
    .end local v1    # "emptyText":Landroid/text/SpannableString;
    .end local v3    # "lineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .end local v4    # "lastLineFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "newLineHeightSpan":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .end local v6    # "tmpLayout":Landroid/text/StaticLayout;
    :cond_2
    move-object/from16 v2, p3

    .line 1017
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private static final getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .locals 6
    .param p0, "$this$getLineHeightPaddings"    # Landroidx/compose/ui/text/android/TextLayout;
    .param p1, "lineHeightSpans"    # [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 948
    const/4 v0, 0x0

    .line 949
    .local v0, "firstAscentDiff":I
    const/4 v1, 0x0

    .line 951
    .local v1, "lastDescentDiff":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 952
    .local v4, "span":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v5

    if-gez v5, :cond_0

    .line 953
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 955
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v5

    if-gez v5, :cond_1

    .line 956
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 951
    .end local v4    # "span":Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 960
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 961
    sget-wide v2, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    goto :goto_1

    .line 963
    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v2

    .line 960
    :goto_1
    return-wide v2
.end method

.method private static final getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 4
    .param p0, "$this$getLineHeightSpans"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 1022
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1033
    .local v0, "$i$f$emptyArray":I
    new-array v0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1022
    .end local v0    # "$i$f$emptyArray":I
    return-object v0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    .line 1024
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1023
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1026
    .local v0, "lineHeightStyleSpans":[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    array-length v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 1034
    .local v2, "$i$f$emptyArray":I
    new-array v1, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1026
    .end local v2    # "$i$f$emptyArray":I
    return-object v1

    .line 1027
    :cond_2
    return-object v0
.end method

.method public static final getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;
    .locals 1
    .param p0, "textDirectionHeuristic"    # I

    .line 833
    packed-switch p0, :pswitch_data_0

    .line 840
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 835
    :pswitch_0
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 838
    :pswitch_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 837
    :pswitch_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 839
    :pswitch_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 836
    :pswitch_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 834
    :pswitch_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 833
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .locals 10
    .param p0, "$this$getVerticalPaddings"    # Landroidx/compose/ui/text/android/TextLayout;

    .line 898
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->isFallbackLinespacingApplied$ui_text_release()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 900
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 901
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 903
    .local v1, "text":Ljava/lang/CharSequence;
    nop

    .line 904
    nop

    .line 905
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 906
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 903
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 908
    .local v2, "firstLineTextBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    .line 912
    .local v3, "ascent":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v4, v3, :cond_1

    .line 913
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v4

    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getTopPadding()I

    move-result v4

    .line 912
    :goto_0
    nop

    .line 918
    .local v4, "topPadding":I
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 920
    move-object v7, v2

    goto :goto_1

    .line 922
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v6

    .line 923
    .local v5, "line":I
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v7

    .line 918
    .end local v5    # "line":I
    :goto_1
    move-object v5, v7

    .line 925
    .local v5, "lastLineTextBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v6

    .line 929
    .local v6, "descent":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v7, v6, :cond_3

    .line 930
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    goto :goto_2

    .line 932
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/Layout;->getBottomPadding()I

    move-result v7

    .line 929
    :goto_2
    nop

    .line 935
    .local v7, "bottomPadding":I
    if-nez v4, :cond_4

    if-nez v7, :cond_4

    .line 936
    sget-wide v8, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    goto :goto_3

    .line 938
    :cond_4
    invoke-static {v4, v7}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v8

    .line 935
    :goto_3
    return-wide v8

    .line 898
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "firstLineTextBounds":Landroid/graphics/Rect;
    .end local v3    # "ascent":I
    .end local v4    # "topPadding":I
    .end local v5    # "lastLineTextBounds":Landroid/graphics/Rect;
    .end local v6    # "descent":I
    .end local v7    # "bottomPadding":I
    :cond_5
    :goto_4
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    return-wide v0
.end method

.method public static final isLineEllipsized(Landroid/text/Layout;I)Z
    .locals 1
    .param p0, "$this$isLineEllipsized"    # Landroid/text/Layout;
    .param p1, "lineIndex"    # I

    .line 1030
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
