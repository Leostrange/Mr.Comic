.class final Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1;
.super Ljava/lang/Object;
.source "TimePicker.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->VerticalPeriodToggle(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1843:1\n544#2,2:1844\n33#2,6:1846\n546#2:1852\n235#2,3:1853\n33#2,4:1856\n238#2,2:1860\n38#2:1862\n240#2:1863\n151#2,3:1864\n33#2,4:1867\n154#2,2:1871\n38#2:1873\n156#2:1874\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1\n*L\n1051#1:1844,2\n1051#1:1846,6\n1051#1:1852\n1059#1:1853,3\n1059#1:1856,4\n1059#1:1860,2\n1059#1:1862\n1059#1:1863\n1059#1:1864,3\n1059#1:1867,4\n1059#1:1871,2\n1059#1:1873\n1059#1:1874\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1;

    invoke-direct {v0}, Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1;->INSTANCE:Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 29
    .param p1, "$this$MeasurePolicy"    # Landroidx/compose/ui/layout/MeasureScope;
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

    .line 1051
    move-object/from16 v0, p2

    .local v0, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1844
    .local v1, "$i$f$fastFirst":I
    nop

    .line 1845
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1846
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1847
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_4

    .line 1848
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1849
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1845
    .local v8, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .local v9, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v10, 0x0

    .line 1051
    .local v10, "$i$a$-fastFirst-TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$spacer$1":I
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v12, "Spacer"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1845
    .end local v9    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v10    # "$i$a$-fastFirst-TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$spacer$1":I
    if-eqz v9, :cond_3

    .line 1051
    .end local v0    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirst":I
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    .end local v4    # "index$iv$iv":I
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v0, v7

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 1052
    .local v0, "spacer":Landroidx/compose/ui/layout/Measurable;
    nop

    .line 1053
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1054
    const/4 v5, 0x0

    .line 1055
    sget-object v1, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/TimePickerTokens;->getPeriodSelectorOutlineWidth-D9Ej5fM()F

    move-result v1

    move-object/from16 v9, p1

    invoke-interface {v9, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    .line 1053
    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 1052
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 1059
    .local v1, "spacerPlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v2, p2

    .local v2, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1853
    .local v3, "$i$f$fastFilter":I
    nop

    .line 1854
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1855
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1856
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1857
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_1

    .line 1858
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1859
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1860
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .local v14, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v15, 0x0

    .line 1059
    .local v15, "$i$a$-fastFilter-TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$items$1":I
    move-object/from16 v20, v0

    .end local v0    # "spacer":Landroidx/compose/ui/layout/Measurable;
    .local v20, "spacer":Landroidx/compose/ui/layout/Measurable;
    invoke-static {v14}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1860
    .end local v14    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v15    # "$i$a$-fastFilter-TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$items$1":I
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1861
    :cond_0
    nop

    .line 1859
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$2$iv":I
    nop

    .line 1857
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    goto :goto_1

    .end local v20    # "spacer":Landroidx/compose/ui/layout/Measurable;
    .restart local v0    # "spacer":Landroidx/compose/ui/layout/Measurable;
    :cond_1
    move-object/from16 v20, v0

    .line 1862
    .end local v0    # "spacer":Landroidx/compose/ui/layout/Measurable;
    .end local v7    # "index$iv$iv":I
    .restart local v20    # "spacer":Landroidx/compose/ui/layout/Measurable;
    nop

    .line 1863
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 1059
    .end local v2    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFilter":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    nop

    .local v0, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1864
    .local v2, "$i$f$fastMap":I
    nop

    .line 1865
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1866
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1867
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1868
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_2

    .line 1869
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1870
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1871
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "item":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 1060
    .local v14, "$i$a$-fastMap-TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$items$2":I
    nop

    .line 1061
    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1062
    const/16 v25, 0x0

    .line 1063
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v15

    div-int/lit8 v26, v15, 0x2

    .line 1061
    const/16 v27, 0x3

    const/16 v28, 0x0

    move-wide/from16 v21, p3

    move-object v15, v4

    move/from16 v16, v5

    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .local v15, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v16, "$i$f$fastForEach":I
    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    .line 1060
    invoke-interface {v13, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 1871
    .end local v13    # "item":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastMap-TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$items$2":I
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1872
    nop

    .line 1870
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1868
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object v4, v15

    move/from16 v5, v16

    goto :goto_2

    .line 1873
    .end local v6    # "index$iv$iv":I
    .end local v15    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastForEach":I
    :cond_2
    nop

    .line 1874
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 1059
    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 1068
    .local v0, "items":Ljava/util/List;
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v15

    const/16 v16, 0x0

    new-instance v2, Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/material3/TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/Placeable;)V

    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    return-object v2

    .line 1845
    .end local v20    # "spacer":Landroidx/compose/ui/layout/Measurable;
    .local v0, "$this$fastFirst$iv":Ljava/util/List;
    .local v1, "$i$f$fastFirst":I
    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v3, "$i$f$fastForEach":I
    .local v4, "index$iv$iv":I
    .local v6, "item$iv$iv":Ljava/lang/Object;
    .local v7, "it$iv":Ljava/lang/Object;
    .local v8, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    :cond_3
    move-object/from16 v9, p1

    .line 1849
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    nop

    .line 1847
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v9, p1

    .line 1851
    .end local v4    # "index$iv$iv":I
    nop

    .line 1852
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Collection contains no element matching the predicate."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
