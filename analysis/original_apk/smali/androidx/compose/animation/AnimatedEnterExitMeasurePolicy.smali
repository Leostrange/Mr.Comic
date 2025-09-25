.class final Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;
.super Ljava/lang/Object;
.source "AnimatedVisibility.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedEnterExitMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,919:1\n151#2,3:920\n33#2,4:923\n154#2,2:927\n38#2:929\n156#2:930\n171#2,13:931\n171#2,13:944\n317#2,8:957\n317#2,8:965\n317#2,8:973\n317#2,8:981\n*S KotlinDebug\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedEnterExitMeasurePolicy\n*L\n851#1:920,3\n851#1:923,4\n851#1:927,2\n851#1:929\n851#1:930\n852#1:931,13\n853#1:944,13\n866#1:957,8\n871#1:965,8\n876#1:973,8\n881#1:981,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0016J\"\u0010\u000e\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J,\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\"\u0010\u0018\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0016J\"\u0010\u0019\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "scope",
        "Landroidx/compose/animation/AnimatedVisibilityScopeImpl;",
        "(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V",
        "getScope",
        "()Landroidx/compose/animation/AnimatedVisibilityScopeImpl;",
        "maxIntrinsicHeight",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "width",
        "maxIntrinsicWidth",
        "height",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "animation_release"
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
.field private final scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V
    .locals 0
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object p1, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 844
    return-void
.end method


# virtual methods
.method public final getScope()Landroidx/compose/animation/AnimatedVisibilityScopeImpl;
    .locals 1

    .line 845
    iget-object v0, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    return-object v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 8
    .param p1, "$this$maxIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 881
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 981
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 982
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 983
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 881
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 983
    check-cast v2, Ljava/lang/Comparable;

    .line 984
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 985
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 881
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 985
    check-cast v6, Ljava/lang/Comparable;

    .line 986
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 984
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 988
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 881
    .end local v0    # "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMaxOfOrNull":I
    .end local v2    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_1
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_3
    return v3
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 8
    .param p1, "$this$maxIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 876
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 973
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 974
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 975
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 876
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 975
    check-cast v2, Ljava/lang/Comparable;

    .line 976
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 977
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 876
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 977
    check-cast v6, Ljava/lang/Comparable;

    .line 978
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 976
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 980
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 876
    .end local v0    # "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMaxOfOrNull":I
    .end local v2    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_1
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_3
    return v3
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 851
    move-object/from16 v0, p2

    .local v0, "$this$fastMap$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 920
    .local v1, "$i$f$fastMap":I
    nop

    .line 921
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 922
    .local v2, "target$iv":Ljava/util/ArrayList;
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 923
    .local v4, "$i$f$fastForEach":I
    nop

    .line 924
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 925
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 926
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 927
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .local v11, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v12, 0x0

    .line 851
    .local v12, "$i$a$-fastMap-AnimatedEnterExitMeasurePolicy$measure$placeables$1":I
    move-wide/from16 v13, p3

    invoke-interface {v11, v13, v14}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    .line 927
    .end local v11    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v12    # "$i$a$-fastMap-AnimatedEnterExitMeasurePolicy$measure$placeables$1":I
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 928
    nop

    .line 926
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 924
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p3

    .line 929
    .end local v5    # "index$iv$iv":I
    nop

    .line 930
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 851
    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMap":I
    .end local v2    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 852
    .local v0, "placeables":Ljava/util/List;
    move-object v1, v0

    .local v1, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 931
    .local v2, "$i$f$fastMaxBy":I
    nop

    .line 932
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_2

    .line 933
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 934
    .local v3, "maxElem$iv":Ljava/lang/Object;
    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .local v6, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v7, 0x0

    .line 852
    .local v7, "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxWidth$1":I
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    .line 934
    .end local v6    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v7    # "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxWidth$1":I
    nop

    .line 935
    .local v6, "maxValue$iv":I
    const/4 v7, 0x1

    .local v7, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v7, v8, :cond_3

    .line 936
    :goto_1
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 937
    .local v9, "e$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .local v10, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v11, 0x0

    .line 852
    .local v11, "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxWidth$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v10

    .line 937
    .end local v10    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v11    # "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxWidth$1":I
    nop

    .line 938
    .local v10, "v$iv":I
    if-ge v6, v10, :cond_2

    .line 939
    move-object v3, v9

    .line 940
    move v6, v10

    .line 935
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "v$iv":I
    :cond_2
    if-eq v7, v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 943
    .end local v7    # "i$iv":I
    :cond_3
    nop

    .line 852
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v3    # "maxElem$iv":Ljava/lang/Object;
    .end local v6    # "maxValue$iv":I
    :goto_2
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v5

    .line 853
    .local v1, "maxWidth":I
    :goto_3
    move-object v2, v0

    .local v2, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 944
    .local v3, "$i$f$fastMaxBy":I
    nop

    .line 945
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    .line 946
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 947
    .local v4, "maxElem$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .local v6, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v7, 0x0

    .line 853
    .local v7, "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxHeight$1":I
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    .line 947
    .end local v6    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v7    # "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxHeight$1":I
    nop

    .line 948
    .local v6, "maxValue$iv":I
    const/4 v7, 0x1

    .local v7, "i$iv":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 949
    :goto_4
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 950
    .restart local v9    # "e$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .local v10, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v11, 0x0

    .line 853
    .local v11, "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxHeight$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v10

    .line 950
    .end local v10    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v11    # "$i$a$-fastMaxBy-AnimatedEnterExitMeasurePolicy$measure$maxHeight$1":I
    nop

    .line 951
    .local v10, "v$iv":I
    if-ge v6, v10, :cond_6

    .line 952
    move-object v4, v9

    .line 953
    move v6, v10

    .line 948
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "v$iv":I
    :cond_6
    if-eq v7, v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 956
    .end local v7    # "i$iv":I
    :cond_7
    nop

    .line 853
    .end local v2    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMaxBy":I
    .end local v4    # "maxElem$iv":Ljava/lang/Object;
    .end local v6    # "maxValue$iv":I
    :goto_5
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    :cond_8
    move v2, v5

    .line 855
    .local v2, "maxHeight":I
    move-object v3, p0

    iget-object v4, v3, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    invoke-virtual {v4}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;->getTargetSize$animation_release()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 856
    const/4 v9, 0x0

    new-instance v4, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$measure$1;

    invoke-direct {v4, v0}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$measure$1;-><init>(Ljava/util/List;)V

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    return-object v4
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 8
    .param p1, "$this$minIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 871
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 965
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 966
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 967
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 871
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 967
    check-cast v2, Ljava/lang/Comparable;

    .line 968
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 969
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 871
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 969
    check-cast v6, Ljava/lang/Comparable;

    .line 970
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 968
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 972
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 871
    .end local v0    # "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMaxOfOrNull":I
    .end local v2    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_1
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_3
    return v3
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 8
    .param p1, "$this$minIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 866
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 957
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 958
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 959
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 866
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 959
    check-cast v2, Ljava/lang/Comparable;

    .line 960
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 961
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 866
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 961
    check-cast v6, Ljava/lang/Comparable;

    .line 962
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 960
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 964
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 866
    .end local v0    # "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMaxOfOrNull":I
    .end local v2    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_1
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_3
    return v3
.end method
