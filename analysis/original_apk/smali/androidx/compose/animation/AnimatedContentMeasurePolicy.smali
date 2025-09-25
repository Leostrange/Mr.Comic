.class final Landroidx/compose/animation/AnimatedContentMeasurePolicy;
.super Ljava/lang/Object;
.source "AnimatedContent.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,831:1\n69#2,6:832\n69#2,6:838\n317#2,8:872\n317#2,8:880\n317#2,8:888\n317#2,8:896\n14166#3,14:844\n14166#3,14:858\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentMeasurePolicy\n*L\n783#1:832,6\n792#1:838,6\n817#1:872,8\n821#1:880,8\n825#1:888,8\n829#1:896,8\n797#1:844,14\n798#1:858,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0016J\"\u0010\u000e\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J,\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\"\u0010\u0018\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0016J\"\u0010\u0019\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/animation/AnimatedContentMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "rootScope",
        "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;",
        "(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V",
        "getRootScope",
        "()Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;",
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
.field private final rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0
    .param p1, "rootScope"    # Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "*>;)V"
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-void
.end method


# virtual methods
.method public final getRootScope()Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl<",
            "*>;"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

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

    .line 829
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 896
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 897
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 898
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 829
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 898
    check-cast v2, Ljava/lang/Comparable;

    .line 899
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 900
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 829
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicHeight$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 900
    check-cast v6, Ljava/lang/Comparable;

    .line 901
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 899
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 829
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

    .line 825
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 888
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 889
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 890
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 825
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 890
    check-cast v2, Ljava/lang/Comparable;

    .line 891
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 892
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 825
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$maxIntrinsicWidth$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 892
    check-cast v6, Ljava/lang/Comparable;

    .line 893
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 891
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 895
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 825
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
    .locals 24
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

    .line 781
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/compose/ui/layout/Placeable;

    .line 783
    .local v3, "placeables":[Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v4, p2

    .local v4, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 832
    .local v5, "$i$f$fastForEachIndexed":I
    nop

    .line 833
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v6, v7, :cond_4

    .line 834
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 835
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .local v12, "measurable":Landroidx/compose/ui/layout/Measurable;
    move v13, v6

    .local v13, "index":I
    const/4 v14, 0x0

    .line 784
    .local v14, "$i$a$-fastForEachIndexed-AnimatedContentMeasurePolicy$measure$1":I
    nop

    .line 785
    nop

    .line 784
    invoke-interface {v12}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v15

    instance-of v8, v15, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    if-eqz v8, :cond_0

    move-object v8, v15

    check-cast v8, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 785
    :goto_1
    if-eqz v8, :cond_2

    .line 784
    nop

    .line 785
    invoke-virtual {v8}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;->isTarget()Z

    move-result v8

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    move v9, v10

    goto :goto_2

    .line 784
    :cond_2
    move v9, v10

    :goto_2
    if-eqz v9, :cond_3

    .line 787
    invoke-interface {v12, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    aput-object v8, v3, v13

    .line 789
    :cond_3
    nop

    .line 835
    .end local v12    # "measurable":Landroidx/compose/ui/layout/Measurable;
    .end local v13    # "index":I
    .end local v14    # "$i$a$-fastForEachIndexed-AnimatedContentMeasurePolicy$measure$1":I
    nop

    .line 833
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 837
    .end local v6    # "index$iv":I
    :cond_4
    nop

    .line 792
    .end local v4    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEachIndexed":I
    move-object/from16 v4, p2

    .restart local v4    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 838
    .restart local v5    # "$i$f$fastForEachIndexed":I
    nop

    .line 839
    const/4 v6, 0x0

    .restart local v6    # "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_6

    .line 840
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 841
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .local v11, "measurable":Landroidx/compose/ui/layout/Measurable;
    move v12, v6

    .local v12, "index":I
    const/4 v13, 0x0

    .line 793
    .local v13, "$i$a$-fastForEachIndexed-AnimatedContentMeasurePolicy$measure$2":I
    aget-object v14, v3, v12

    if-nez v14, :cond_5

    .line 794
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v14

    aput-object v14, v3, v12

    .line 796
    :cond_5
    nop

    .line 841
    .end local v11    # "measurable":Landroidx/compose/ui/layout/Measurable;
    .end local v12    # "index":I
    .end local v13    # "$i$a$-fastForEachIndexed-AnimatedContentMeasurePolicy$measure$2":I
    nop

    .line 839
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 843
    .end local v6    # "index$iv":I
    :cond_6
    nop

    .line 797
    .end local v4    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEachIndexed":I
    move-object v4, v3

    .local v4, "$this$maxByOrNull$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 844
    .local v5, "$i$f$maxByOrNull":I
    array-length v6, v4

    if-nez v6, :cond_7

    move v6, v9

    goto :goto_4

    :cond_7
    move v6, v10

    :goto_4
    if-eqz v6, :cond_8

    const/4 v6, 0x0

    goto :goto_8

    .line 845
    :cond_8
    aget-object v6, v4, v10

    .line 846
    .local v6, "maxElem$iv":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v7

    .line 847
    .local v7, "lastIndex$iv":I
    if-nez v7, :cond_9

    goto :goto_8

    .line 848
    :cond_9
    move-object v8, v6

    .local v8, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v11, 0x0

    .line 797
    .local v11, "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxWidth$1":I
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    goto :goto_5

    :cond_a
    move v12, v10

    .line 848
    .end local v8    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v11    # "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxWidth$1":I
    :goto_5
    move v8, v12

    .line 849
    .local v8, "maxValue$iv":I
    new-instance v11, Lkotlin/ranges/IntRange;

    invoke-direct {v11, v9, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v11}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v11

    :cond_b
    :goto_6
    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    .line 850
    .local v12, "i$iv":I
    aget-object v13, v4, v12

    .line 851
    .local v13, "e$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v15, 0x0

    .line 797
    .local v15, "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxWidth$1":I
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v17

    goto :goto_7

    :cond_c
    move/from16 v17, v10

    .line 851
    .end local v14    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v15    # "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxWidth$1":I
    :goto_7
    move/from16 v14, v17

    .line 852
    .local v14, "v$iv":I
    if-ge v8, v14, :cond_b

    .line 853
    move-object v6, v13

    .line 854
    move v8, v14

    .end local v12    # "i$iv":I
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v14    # "v$iv":I
    goto :goto_6

    .line 857
    :cond_d
    nop

    .line 797
    .end local v4    # "$this$maxByOrNull$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$maxByOrNull":I
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "lastIndex$iv":I
    .end local v8    # "maxValue$iv":I
    :goto_8
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    goto :goto_9

    :cond_e
    move v4, v10

    .line 798
    .local v4, "maxWidth":I
    :goto_9
    move-object v5, v3

    .local v5, "$this$maxByOrNull$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 858
    .local v6, "$i$f$maxByOrNull":I
    array-length v7, v5

    if-nez v7, :cond_f

    move v7, v9

    goto :goto_a

    :cond_f
    move v7, v10

    :goto_a
    if-eqz v7, :cond_10

    const/4 v8, 0x0

    goto :goto_e

    .line 859
    :cond_10
    aget-object v8, v5, v10

    .line 860
    .local v8, "maxElem$iv":Ljava/lang/Object;
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v7

    .line 861
    .restart local v7    # "lastIndex$iv":I
    if-nez v7, :cond_11

    goto :goto_e

    .line 862
    :cond_11
    move-object v11, v8

    .local v11, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v12, 0x0

    .line 798
    .local v12, "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxHeight$1":I
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    goto :goto_b

    :cond_12
    move v13, v10

    .line 862
    .end local v11    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxHeight$1":I
    :goto_b
    move v11, v13

    .line 863
    .local v11, "maxValue$iv":I
    new-instance v12, Lkotlin/ranges/IntRange;

    invoke-direct {v12, v9, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v12}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v9

    :cond_13
    :goto_c
    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    .line 864
    .local v12, "i$iv":I
    aget-object v13, v5, v12

    .line 865
    .restart local v13    # "e$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v15, 0x0

    .line 798
    .local v15, "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxHeight$1":I
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v16

    goto :goto_d

    :cond_14
    move/from16 v16, v10

    .line 865
    .end local v14    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v15    # "$i$a$-maxByOrNull-AnimatedContentMeasurePolicy$measure$maxHeight$1":I
    :goto_d
    move/from16 v14, v16

    .line 866
    .local v14, "v$iv":I
    if-ge v11, v14, :cond_13

    .line 867
    move-object v8, v13

    .line 868
    move v11, v14

    .end local v12    # "i$iv":I
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v14    # "v$iv":I
    goto :goto_c

    .line 871
    :cond_15
    nop

    .line 798
    .end local v5    # "$this$maxByOrNull$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$maxByOrNull":I
    .end local v7    # "lastIndex$iv":I
    .end local v8    # "maxElem$iv":Ljava/lang/Object;
    .end local v11    # "maxValue$iv":I
    :goto_e
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v10

    :cond_16
    move v5, v10

    .line 799
    .local v5, "maxHeight":I
    iget-object v6, v0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->setMeasuredSize-ozmzZPI$animation_release(J)V

    .line 801
    const/16 v20, 0x0

    new-instance v6, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;

    invoke-direct {v6, v3, v0, v4, v5}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;-><init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/AnimatedContentMeasurePolicy;II)V

    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v17, p1

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v6

    return-object v6
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

    .line 821
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 880
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 881
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 882
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 821
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicHeight$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicHeight$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 882
    check-cast v2, Ljava/lang/Comparable;

    .line 883
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 884
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 821
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicHeight$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicHeight$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 884
    check-cast v6, Ljava/lang/Comparable;

    .line 885
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 883
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 887
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 821
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

    .line 817
    move-object v0, p2

    .local v0, "$this$fastMaxOfOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 872
    .local v1, "$i$f$fastMaxOfOrNull":I
    nop

    .line 873
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 874
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 817
    .local v4, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicWidth$1":I
    invoke-interface {v2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicWidth$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 874
    check-cast v2, Ljava/lang/Comparable;

    .line 875
    .local v2, "maxValue$iv":Ljava/lang/Comparable;
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 876
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v6, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 817
    .local v7, "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicWidth$1":I
    invoke-interface {v6, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v6

    .end local v6    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-fastMaxOfOrNull-AnimatedContentMeasurePolicy$minIntrinsicWidth$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 876
    check-cast v6, Ljava/lang/Comparable;

    .line 877
    .local v6, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v6, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_1

    move-object v2, v6

    .line 875
    .end local v6    # "v$iv":Ljava/lang/Comparable;
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 879
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 817
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
