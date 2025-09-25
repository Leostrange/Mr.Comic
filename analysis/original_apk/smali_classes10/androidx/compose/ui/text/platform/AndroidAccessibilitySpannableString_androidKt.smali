.class public final Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;
.super Ljava/lang/Object;
.source "AndroidAccessibilitySpannableString.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAccessibilitySpannableString.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAccessibilitySpannableString.android.kt\nandroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,182:1\n33#2,6:183\n33#2,6:189\n33#2,6:195\n*S KotlinDebug\n*F\n+ 1 AndroidAccessibilitySpannableString.android.kt\nandroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt\n*L\n59#1:183,6\n66#1:189,6\n75#1:195,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a$\u0010\u000c\u001a\u00020\u0002*\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "setSpanStyle",
        "",
        "Landroid/text/SpannableString;",
        "spanStyle",
        "Landroidx/compose/ui/text/SpanStyle;",
        "start",
        "",
        "end",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "toAccessibilitySpannableString",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "urlSpanCache",
        "Landroidx/compose/ui/text/platform/URLSpanCache;",
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


# direct methods
.method private static final setSpanStyle(Landroid/text/SpannableString;Landroidx/compose/ui/text/SpanStyle;IILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 10
    .param p0, "$this$setSpanStyle"    # Landroid/text/SpannableString;
    .param p1, "spanStyle"    # Landroidx/compose/ui/text/SpanStyle;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;
    .param p5, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 97
    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v4

    move-object v6, p4

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    const/16 v1, 0x21

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    .line 104
    .local v0, "fontWeight":Landroidx/compose/ui/text/font/FontWeight;
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v2

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v2

    .line 105
    .local v2, "fontStyle":I
    :goto_0
    nop

    .line 106
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-static {v0, v2}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 105
    invoke-virtual {p0, v3, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .end local v0    # "fontWeight":Landroidx/compose/ui/text/font/FontWeight;
    .end local v2    # "fontStyle":I
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    if-eqz v0, :cond_4

    .line 118
    nop

    .line 119
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/GenericFontFamily;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 118
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 125
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_6

    .line 127
    nop

    .line 128
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v4

    .line 127
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 129
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result v0

    goto :goto_1

    :cond_5
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result v0

    :goto_1
    move v7, v0

    .line 127
    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v3, p5

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->resolve-DPcqOEQ$default(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 127
    const-string/jumbo v2, "null cannot be cast to non-null type android.graphics.Typeface"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Typeface;

    .line 131
    .local v0, "typeface":Landroid/graphics/Typeface;
    nop

    .line 132
    sget-object v2, Landroidx/compose/ui/text/platform/Api28Impl;->INSTANCE:Landroidx/compose/ui/text/platform/Api28Impl;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/platform/Api28Impl;->createTypefaceSpan(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v2

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 131
    invoke-virtual {p0, v2, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 141
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 145
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    nop

    .line 147
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 146
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 153
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    nop

    .line 155
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 154
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 164
    nop

    .line 165
    new-instance v0, Landroid/text/style/ScaleXSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 164
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 172
    :cond_9
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 174
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setBackground-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 175
    return-void
.end method

.method public static final toAccessibilitySpannableString(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;
    .locals 40
    .param p0, "$this$toAccessibilitySpannableString"    # Landroidx/compose/ui/text/AnnotatedString;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p3, "urlSpanCache"    # Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 58
    move-object/from16 v0, p0

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v1, "spannableString":Landroid/text/SpannableString;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 183
    .local v9, "$i$f$fastForEach":I
    nop

    .line 184
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    move v11, v3

    .end local v3    # "index$iv":I
    .local v11, "index$iv":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 185
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 186
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v3, v12

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    const/4 v13, 0x0

    .line 59
    .local v13, "$i$a$-fastForEach-AndroidAccessibilitySpannableString_androidKt$toAccessibilitySpannableString$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/text/SpanStyle;

    .local v37, "style":Landroidx/compose/ui/text/SpanStyle;
    move-object/from16 v14, v37

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    move-result v38

    .local v38, "start":I
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    move-result v39

    .line 62
    .local v39, "end":I
    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0xffdf

    const/16 v36, 0x0

    invoke-static/range {v14 .. v36}, Landroidx/compose/ui/text/SpanStyle;->copy-GSF8kmg$default(Landroidx/compose/ui/text/SpanStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILjava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v14

    .line 63
    .local v14, "noFontStyle":Landroidx/compose/ui/text/SpanStyle;
    move-object v3, v1

    move-object v4, v14

    move/from16 v5, v38

    move/from16 v6, v39

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->setSpanStyle(Landroid/text/SpannableString;Landroidx/compose/ui/text/SpanStyle;IILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 64
    nop

    .line 186
    .end local v13    # "$i$a$-fastForEach-AndroidAccessibilitySpannableString_androidKt$toAccessibilitySpannableString$1":I
    .end local v14    # "noFontStyle":Landroidx/compose/ui/text/SpanStyle;
    .end local v37    # "style":Landroidx/compose/ui/text/SpanStyle;
    .end local v38    # "start":I
    .end local v39    # "end":I
    nop

    .line 184
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 188
    .end local v11    # "index$iv":I
    :cond_0
    nop

    .line 66
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/text/AnnotatedString;->getTtsAnnotations(II)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 189
    .local v4, "$i$f$fastForEach":I
    nop

    .line 190
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    const/16 v7, 0x21

    if-ge v5, v6, :cond_2

    .line 191
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 192
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    const/4 v10, 0x0

    .line 66
    .local v10, "$i$a$-fastForEach-AndroidAccessibilitySpannableString_androidKt$toAccessibilitySpannableString$2":I
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/TtsAnnotation;

    .local v11, "ttsAnnotation":Landroidx/compose/ui/text/TtsAnnotation;
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    move-result v12

    .local v12, "start":I
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    move-result v9

    .line 67
    .local v9, "end":I
    nop

    .line 68
    invoke-static {v11}, Landroidx/compose/ui/text/platform/extensions/TtsAnnotationExtensions_androidKt;->toSpan(Landroidx/compose/ui/text/TtsAnnotation;)Landroid/text/style/TtsSpan;

    move-result-object v13

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 67
    invoke-virtual {v1, v13, v12, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 73
    nop

    .line 192
    .end local v9    # "end":I
    .end local v10    # "$i$a$-fastForEach-AndroidAccessibilitySpannableString_androidKt$toAccessibilitySpannableString$2":I
    .end local v11    # "ttsAnnotation":Landroidx/compose/ui/text/TtsAnnotation;
    .end local v12    # "start":I
    nop

    .line 190
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 194
    .end local v5    # "index$iv":I
    :cond_2
    nop

    .line 75
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/text/AnnotatedString;->getUrlAnnotations(II)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 195
    .local v3, "$i$f$fastForEach":I
    nop

    .line 196
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_3

    .line 197
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 198
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    const/4 v9, 0x0

    .line 75
    .local v9, "$i$a$-fastForEach-AndroidAccessibilitySpannableString_androidKt$toAccessibilitySpannableString$3":I
    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/UrlAnnotation;

    .local v10, "urlAnnotation":Landroidx/compose/ui/text/UrlAnnotation;
    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    move-result v11

    .local v11, "start":I
    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    move-result v8

    .line 76
    .local v8, "end":I
    nop

    .line 77
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroidx/compose/ui/text/platform/URLSpanCache;->toURLSpan(Landroidx/compose/ui/text/UrlAnnotation;)Landroid/text/style/URLSpan;

    move-result-object v13

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 76
    invoke-virtual {v1, v13, v11, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    nop

    .line 198
    .end local v8    # "end":I
    .end local v9    # "$i$a$-fastForEach-AndroidAccessibilitySpannableString_androidKt$toAccessibilitySpannableString$3":I
    .end local v10    # "urlAnnotation":Landroidx/compose/ui/text/UrlAnnotation;
    .end local v11    # "start":I
    nop

    .line 196
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v12, p3

    .line 200
    .end local v4    # "index$iv":I
    nop

    .line 84
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    return-object v1
.end method
