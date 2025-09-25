.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$Api24Impl;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 60
    new-instance v0, Landroidx/core/text/util/LinkifyCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/text/util/LinkifyCompat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .line 368
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 370
    .local v0, "m":Landroid/text/method/MovementMethod;
    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 375
    :cond_0
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 196
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 198
    return-void

    .line 200
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 201
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 220
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 222
    return-void

    .line 224
    :cond_0
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 225
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 247
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static/range {p0 .. p5}, Landroidx/core/text/util/LinkifyCompat$Api24Impl;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 253
    .local v0, "spannable":Landroid/text/SpannableString;
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    .line 255
    .local v1, "linksAdded":Z
    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 259
    :cond_1
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .line 92
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 96
    return v0

    .line 99
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 101
    .local v1, "old":[Landroid/text/style/URLSpan;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 102
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 101
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 106
    const/4 v2, 0x4

    invoke-static {p0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 109
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_4

    .line 112
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const-string v4, "https://"

    const-string/jumbo v5, "rtsp://"

    const-string v7, "http://"

    filled-new-array {v7, v4, v5}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 117
    :cond_4
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_5

    .line 118
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "mailto:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 123
    :cond_5
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_6

    .line 124
    invoke-static {v2, p0}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 127
    :cond_6
    invoke-static {v2, p0}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 130
    return v0

    .line 133
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 134
    .local v4, "link":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    iget-object v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v5, :cond_8

    .line 135
    iget-object v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v5, v6, v7, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 137
    .end local v4    # "link":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    :cond_8
    goto :goto_1

    .line 139
    :cond_9
    return v3
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 272
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 275
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 7
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 296
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0

    .line 299
    :cond_0
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 9
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 322
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static/range {p0 .. p5}, Landroidx/core/text/util/LinkifyCompat$Api24Impl;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0

    .line 327
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 328
    :cond_1
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    array-length v1, p3

    if-ge v1, v0, :cond_3

    .line 329
    :cond_2
    sget-object p3, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 332
    :cond_3
    array-length v1, p3

    add-int/2addr v1, v0

    new-array v0, v1, [Ljava/lang/String;

    .line 333
    .local v0, "schemesCopy":[Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 334
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_5

    .line 335
    aget-object v3, p3, v1

    .line 336
    .local v3, "scheme":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    if-nez v3, :cond_4

    const-string v5, ""

    goto :goto_1

    :cond_4
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v0, v4

    .line 334
    .end local v3    # "scheme":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "index":I
    :cond_5
    const/4 v1, 0x0

    .line 340
    .local v1, "hasMatches":Z
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 342
    .local v3, "m":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 343
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 344
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 345
    .local v5, "end":I
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "match":Ljava/lang/String;
    const/4 v7, 0x1

    .line 348
    .local v7, "allowed":Z
    if-eqz p4, :cond_6

    .line 349
    invoke-interface {p4, p0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v7

    .line 352
    :cond_6
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 353
    invoke-static {v6, v0, v3, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8, v4, v5, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 356
    const/4 v1, 0x1

    .line 358
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "match":Ljava/lang/String;
    .end local v7    # "allowed":Z
    .end local v8    # "url":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 360
    :cond_8
    return v1
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .line 154
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v0

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 158
    return v0

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 163
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 164
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 166
    return v3

    .line 170
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 172
    .local v2, "s":Landroid/text/SpannableString;
    invoke-static {v2, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 174
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return v3

    .line 180
    .end local v2    # "s":Landroid/text/SpannableString;
    :cond_3
    return v0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .line 428
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 431
    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/lang/String;

    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 476
    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    invoke-static {p0}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 409
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 411
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 413
    .local v1, "start":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 414
    .local v2, "end":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "match":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 417
    new-instance v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v4}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 418
    .local v4, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    invoke-static {v3, p3, v0, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 419
    iput v1, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 420
    iput v2, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 422
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "match":Ljava/lang/String;
    .end local v4    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    :cond_1
    goto :goto_0

    .line 425
    :cond_2
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 434
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 439
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "address":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 442
    .local v2, "start":I
    if-gez v2, :cond_0

    .line 443
    goto :goto_1

    .line 446
    :cond_0
    new-instance v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v4}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 447
    .local v4, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 448
    .local v5, "length":I
    add-int v6, v2, v5

    .line 450
    .local v6, "end":I
    add-int v7, v1, v2

    iput v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 451
    add-int v7, v1, v6

    iput v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 452
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v7

    .line 453
    add-int/2addr v1, v6

    .line 458
    :try_start_1
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    .local v7, "encodedAddress":Ljava/lang/String;
    nop

    .line 463
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:0,0?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 464
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    nop

    .end local v2    # "start":I
    .end local v4    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "encodedAddress":Ljava/lang/String;
    goto :goto_0

    .line 459
    .restart local v2    # "start":I
    .restart local v4    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .restart local v5    # "length":I
    .restart local v6    # "end":I
    :catch_0
    move-exception v7

    .line 460
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 470
    .end local v2    # "start":I
    .end local v4    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    goto :goto_2

    .line 466
    .end local v3    # "address":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 471
    :goto_2
    return-void
.end method

.method static synthetic lambda$static$0(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .locals 2
    .param p0, "a"    # Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .param p1, "b"    # Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 61
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-ge v0, v1, :cond_0

    .line 62
    const/4 v0, -0x1

    return v0

    .line 65
    :cond_0
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v0, v1, :cond_1

    .line 66
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_1
    iget v0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 379
    if-eqz p3, :cond_0

    .line 380
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 383
    :cond_0
    const/4 v6, 0x0

    .line 385
    .local v6, "hasPrefix":Z
    array-length v7, p1

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, p1, v9

    .line 386
    .local v10, "prefix":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const/4 v6, 0x1

    .line 390
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 385
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 398
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    :cond_3
    return-object p0
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 9
    .param p1, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 483
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 484
    .local v0, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 485
    .local v3, "urlSpan":Landroid/text/style/URLSpan;
    new-instance v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v4}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 486
    .local v4, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    iput-object v3, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 487
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 488
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 489
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v3    # "urlSpan":Landroid/text/style/URLSpan;
    .end local v4    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_0
    sget-object v1, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 495
    .local v1, "len":I
    const/4 v2, 0x0

    .line 497
    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_6

    .line 498
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 499
    .local v3, "a":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 500
    .local v4, "b":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    const/4 v5, -0x1

    .line 502
    .local v5, "remove":I
    iget v6, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v6, v7, :cond_5

    iget v6, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v6, v7, :cond_5

    .line 503
    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 504
    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    .line 505
    :cond_1
    iget v6, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v8, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 506
    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    .line 507
    :cond_2
    iget v6, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v7, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v8, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_3

    .line 508
    move v5, v2

    .line 511
    :cond_3
    :goto_2
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 512
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v6, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 513
    .local v6, "span":Landroid/text/style/URLSpan;
    if-eqz v6, :cond_4

    .line 514
    invoke-interface {p1, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 516
    :cond_4
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    add-int/lit8 v1, v1, -0x1

    .line 518
    goto :goto_1

    .line 523
    .end local v6    # "span":Landroid/text/style/URLSpan;
    :cond_5
    nop

    .end local v3    # "a":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v4    # "b":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v5    # "remove":I
    add-int/lit8 v2, v2, 0x1

    .line 524
    goto :goto_1

    .line 525
    :cond_6
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .locals 2

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
