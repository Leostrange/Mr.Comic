.class public final Landroidx/compose/ui/text/MultiParagraphKt;
.super Ljava/lang/Object;
.source "MultiParagraph.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraph.kt\nandroidx/compose/ui/text/MultiParagraphKt\n*L\n1#1,1055:1\n924#1,16:1056\n924#1,16:1072\n924#1,16:1088\n*S KotlinDebug\n*F\n+ 1 MultiParagraph.kt\nandroidx/compose/ui/text/MultiParagraphKt\n*L\n860#1:1056,16\n880#1:1072,16\n914#1:1088,16\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a\u001e\u0010\u0006\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u001e\u0010\u0008\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\nH\u0000\u001a<\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u0010H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a-\u0010\u0013\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0014*\u0008\u0012\u0004\u0012\u0002H\u00140\u00032\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u00010\u0010H\u0082\u0008\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "findParagraphByIndex",
        "",
        "paragraphInfoList",
        "",
        "Landroidx/compose/ui/text/ParagraphInfo;",
        "index",
        "findParagraphByLineIndex",
        "lineIndex",
        "findParagraphByY",
        "y",
        "",
        "findParagraphsByRange",
        "",
        "range",
        "Landroidx/compose/ui/text/TextRange;",
        "action",
        "Lkotlin/Function1;",
        "findParagraphsByRange-Sb-Bc2M",
        "(Ljava/util/List;JLkotlin/jvm/functions/Function1;)V",
        "fastBinarySearch",
        "T",
        "comparison",
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
.method private static final fastBinarySearch(Ljava/util/List;Lkotlin/jvm/functions/Function1;)I
    .locals 6
    .param p0, "$this$fastBinarySearch"    # Ljava/util/List;
    .param p1, "comparison"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 924
    .local v0, "$i$f$fastBinarySearch":I
    const/4 v1, 0x0

    .line 925
    .local v1, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 927
    .local v2, "high":I
    :goto_0
    if-gt v1, v2, :cond_2

    .line 928
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 929
    .local v3, "mid":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 930
    .local v4, "midVal":Ljava/lang/Object;
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 932
    .local v5, "cmp":I
    if-gez v5, :cond_0

    .line 933
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 934
    :cond_0
    if-lez v5, :cond_1

    .line 935
    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 937
    :cond_1
    return v3

    .line 939
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;
    .end local v5    # "cmp":I
    :cond_2
    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3
.end method

.method public static final findParagraphByIndex(Ljava/util/List;I)I
    .locals 10
    .param p0, "paragraphInfoList"    # Ljava/util/List;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;I)I"
        }
    .end annotation

    .line 860
    move-object v0, p0

    .local v0, "$this$fastBinarySearch$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1056
    .local v1, "$i$f$fastBinarySearch":I
    const/4 v2, 0x0

    .line 1057
    .local v2, "low$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1059
    .local v3, "high$iv":I
    :goto_0
    if-gt v2, v3, :cond_4

    .line 1060
    add-int v5, v2, v3

    ushr-int/2addr v5, v4

    .line 1061
    .local v5, "mid$iv":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1062
    .local v6, "midVal$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/ParagraphInfo;

    .local v7, "paragraphInfo":Landroidx/compose/ui/text/ParagraphInfo;
    const/4 v8, 0x0

    .line 861
    .local v8, "$i$a$-fastBinarySearch-MultiParagraphKt$findParagraphByIndex$1":I
    nop

    .line 862
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getStartIndex()I

    move-result v9

    if-le v9, p1, :cond_0

    move v9, v4

    goto :goto_1

    .line 863
    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getEndIndex()I

    move-result v9

    if-gt v9, p1, :cond_1

    const/4 v9, -0x1

    goto :goto_1

    .line 864
    :cond_1
    const/4 v9, 0x0

    .line 861
    :goto_1
    nop

    .line 1062
    .end local v7    # "paragraphInfo":Landroidx/compose/ui/text/ParagraphInfo;
    .end local v8    # "$i$a$-fastBinarySearch-MultiParagraphKt$findParagraphByIndex$1":I
    move v7, v9

    .line 1064
    .local v7, "cmp$iv":I
    if-gez v7, :cond_2

    .line 1065
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 1066
    :cond_2
    if-lez v7, :cond_3

    .line 1067
    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1069
    :cond_3
    goto :goto_2

    .line 1071
    .end local v5    # "mid$iv":I
    .end local v6    # "midVal$iv":Ljava/lang/Object;
    .end local v7    # "cmp$iv":I
    :cond_4
    add-int/lit8 v4, v2, 0x1

    neg-int v5, v4

    .line 860
    .end local v0    # "$this$fastBinarySearch$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastBinarySearch":I
    .end local v2    # "low$iv":I
    .end local v3    # "high$iv":I
    :goto_2
    return v5
.end method

.method public static final findParagraphByLineIndex(Ljava/util/List;I)I
    .locals 10
    .param p0, "paragraphInfoList"    # Ljava/util/List;
    .param p1, "lineIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;I)I"
        }
    .end annotation

    .line 914
    move-object v0, p0

    .local v0, "$this$fastBinarySearch$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1088
    .local v1, "$i$f$fastBinarySearch":I
    const/4 v2, 0x0

    .line 1089
    .local v2, "low$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1091
    .local v3, "high$iv":I
    :goto_0
    if-gt v2, v3, :cond_4

    .line 1092
    add-int v5, v2, v3

    ushr-int/2addr v5, v4

    .line 1093
    .local v5, "mid$iv":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1094
    .local v6, "midVal$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/ParagraphInfo;

    .local v7, "paragraphInfo":Landroidx/compose/ui/text/ParagraphInfo;
    const/4 v8, 0x0

    .line 915
    .local v8, "$i$a$-fastBinarySearch-MultiParagraphKt$findParagraphByLineIndex$1":I
    nop

    .line 916
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getStartLineIndex()I

    move-result v9

    if-le v9, p1, :cond_0

    move v9, v4

    goto :goto_1

    .line 917
    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getEndLineIndex()I

    move-result v9

    if-gt v9, p1, :cond_1

    const/4 v9, -0x1

    goto :goto_1

    .line 918
    :cond_1
    const/4 v9, 0x0

    .line 915
    :goto_1
    nop

    .line 1094
    .end local v7    # "paragraphInfo":Landroidx/compose/ui/text/ParagraphInfo;
    .end local v8    # "$i$a$-fastBinarySearch-MultiParagraphKt$findParagraphByLineIndex$1":I
    move v7, v9

    .line 1096
    .local v7, "cmp$iv":I
    if-gez v7, :cond_2

    .line 1097
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 1098
    :cond_2
    if-lez v7, :cond_3

    .line 1099
    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1101
    :cond_3
    goto :goto_2

    .line 1103
    .end local v5    # "mid$iv":I
    .end local v6    # "midVal$iv":Ljava/lang/Object;
    .end local v7    # "cmp$iv":I
    :cond_4
    add-int/lit8 v4, v2, 0x1

    neg-int v5, v4

    .line 914
    .end local v0    # "$this$fastBinarySearch$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastBinarySearch":I
    .end local v2    # "low$iv":I
    .end local v3    # "high$iv":I
    :goto_2
    return v5
.end method

.method public static final findParagraphByY(Ljava/util/List;F)I
    .locals 10
    .param p0, "paragraphInfoList"    # Ljava/util/List;
    .param p1, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;F)I"
        }
    .end annotation

    .line 880
    move-object v0, p0

    .local v0, "$this$fastBinarySearch$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1072
    .local v1, "$i$f$fastBinarySearch":I
    const/4 v2, 0x0

    .line 1073
    .local v2, "low$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1075
    .local v3, "high$iv":I
    :goto_0
    if-gt v2, v3, :cond_4

    .line 1076
    add-int v5, v2, v3

    ushr-int/2addr v5, v4

    .line 1077
    .local v5, "mid$iv":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1078
    .local v6, "midVal$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/ParagraphInfo;

    .local v7, "paragraphInfo":Landroidx/compose/ui/text/ParagraphInfo;
    const/4 v8, 0x0

    .line 881
    .local v8, "$i$a$-fastBinarySearch-MultiParagraphKt$findParagraphByY$1":I
    nop

    .line 882
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getTop()F

    move-result v9

    cmpl-float v9, v9, p1

    if-lez v9, :cond_0

    move v9, v4

    goto :goto_1

    .line 883
    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getBottom()F

    move-result v9

    cmpg-float v9, v9, p1

    if-gtz v9, :cond_1

    const/4 v9, -0x1

    goto :goto_1

    .line 884
    :cond_1
    const/4 v9, 0x0

    .line 881
    :goto_1
    nop

    .line 1078
    .end local v7    # "paragraphInfo":Landroidx/compose/ui/text/ParagraphInfo;
    .end local v8    # "$i$a$-fastBinarySearch-MultiParagraphKt$findParagraphByY$1":I
    move v7, v9

    .line 1080
    .local v7, "cmp$iv":I
    if-gez v7, :cond_2

    .line 1081
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 1082
    :cond_2
    if-lez v7, :cond_3

    .line 1083
    add-int/lit8 v3, v5, -0x1

    goto :goto_0

    .line 1085
    :cond_3
    goto :goto_2

    .line 1087
    .end local v5    # "mid$iv":I
    .end local v6    # "midVal$iv":Ljava/lang/Object;
    .end local v7    # "cmp$iv":I
    :cond_4
    add-int/lit8 v4, v2, 0x1

    neg-int v5, v4

    .line 880
    .end local v0    # "$this$fastBinarySearch$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastBinarySearch":I
    .end local v2    # "low$iv":I
    .end local v3    # "high$iv":I
    :goto_2
    return v5
.end method

.method public static final findParagraphsByRange-Sb-Bc2M(Ljava/util/List;JLkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p0, "paragraphInfoList"    # Ljava/util/List;
    .param p1, "range"    # J
    .param p3, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 894
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/MultiParagraphKt;->findParagraphByIndex(Ljava/util/List;I)I

    move-result v0

    .line 895
    .local v0, "paragraphIndex":I
    move v1, v0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 896
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/ParagraphInfo;

    .line 897
    .local v3, "paragraph":Landroidx/compose/ui/text/ParagraphInfo;
    invoke-virtual {v3}, Landroidx/compose/ui/text/ParagraphInfo;->getStartIndex()I

    move-result v4

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 898
    invoke-virtual {v3}, Landroidx/compose/ui/text/ParagraphInfo;->getStartIndex()I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/ParagraphInfo;->getEndIndex()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 899
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v3    # "paragraph":Landroidx/compose/ui/text/ParagraphInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
