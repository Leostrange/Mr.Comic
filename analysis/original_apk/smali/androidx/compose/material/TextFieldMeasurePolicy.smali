.class final Landroidx/compose/material/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "TextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextField.kt\nandroidx/compose/material/TextFieldMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,940:1\n116#2,2:941\n33#2,6:943\n118#2:949\n116#2,2:950\n33#2,6:952\n118#2:958\n116#2,2:959\n33#2,6:961\n118#2:967\n544#2,2:968\n33#2,6:970\n546#2:976\n116#2,2:977\n33#2,6:979\n118#2:985\n544#2,2:986\n33#2,6:988\n546#2:994\n116#2,2:995\n33#2,6:997\n118#2:1003\n116#2,2:1004\n33#2,6:1006\n118#2:1012\n116#2,2:1013\n33#2,6:1015\n118#2:1021\n116#2,2:1022\n33#2,6:1024\n118#2:1030\n116#2,2:1031\n33#2,6:1033\n118#2:1039\n116#2,2:1040\n33#2,6:1042\n118#2:1048\n116#2,2:1049\n33#2,6:1051\n118#2:1057\n544#2,2:1058\n33#2,6:1060\n546#2:1066\n116#2,2:1067\n33#2,6:1069\n118#2:1075\n*S KotlinDebug\n*F\n+ 1 TextField.kt\nandroidx/compose/material/TextFieldMeasurePolicy\n*L\n564#1:941,2\n564#1:943,6\n564#1:949\n570#1:950,2\n570#1:952,6\n570#1:958\n583#1:959,2\n583#1:961,6\n583#1:967\n603#1:968,2\n603#1:970,6\n603#1:976\n609#1:977,2\n609#1:979,6\n609#1:985\n708#1:986,2\n708#1:988,6\n708#1:994\n709#1:995,2\n709#1:997,6\n709#1:1003\n712#1:1004,2\n712#1:1006,6\n712#1:1012\n715#1:1013,2\n715#1:1015,6\n715#1:1021\n718#1:1022,2\n718#1:1024,6\n718#1:1030\n737#1:1031,2\n737#1:1033,6\n737#1:1039\n741#1:1040,2\n741#1:1042,6\n741#1:1048\n746#1:1049,2\n746#1:1051,6\n746#1:1057\n751#1:1058,2\n751#1:1060,6\n751#1:1066\n752#1:1067,2\n752#1:1069,6\n752#1:1075\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J8\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J<\u0010\u0011\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\"\u0010\u0014\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u0015\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016J,\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000c2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\"\u0010\u001e\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u001f\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/material/TextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "singleLine",
        "",
        "animationProgress",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "(ZFLandroidx/compose/foundation/layout/PaddingValues;)V",
        "intrinsicWidth",
        "",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "intrinsicMeasurer",
        "Lkotlin/Function2;",
        "intrinsicHeight",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "width",
        "maxIntrinsicHeight",
        "maxIntrinsicWidth",
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
        "material_release"
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
.field private final animationProgress:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0
    .param p1, "singleLine"    # Z
    .param p2, "animationProgress"    # F
    .param p3, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-boolean p1, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    .line 547
    iput p2, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    .line 548
    iput-object p3, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 545
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material/TextFieldMeasurePolicy;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 545
    iget v0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    return v0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 545
    iget-object v0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 545
    iget-boolean v0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    return v0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 21
    .param p1, "$this$intrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .param p4, "intrinsicMeasurer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 736
    move-object/from16 v0, p4

    const/4 v1, 0x0

    .local v1, "remainingWidth":I
    move/from16 v1, p3

    .line 737
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1031
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1032
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1033
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1034
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 1035
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1036
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1032
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 737
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "Leading"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1032
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    if-eqz v12, :cond_0

    goto :goto_1

    .line 1036
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1034
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1038
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1039
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 737
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v2, 0x7fffffff

    if-eqz v10, :cond_2

    move-object v4, v10

    .local v4, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v5, 0x0

    .line 738
    .local v5, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    invoke-interface {v4, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    sub-int/2addr v1, v6

    .line 739
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 737
    .end local v4    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v5    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    move v12, v4

    goto :goto_2

    .line 740
    :cond_2
    const/4 v12, 0x0

    .line 737
    :goto_2
    nop

    .line 741
    .local v12, "leadingHeight":I
    move-object/from16 v4, p2

    .local v4, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1040
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1041
    move-object v6, v4

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1042
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1043
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_4

    .line 1044
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1045
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v11

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1041
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 741
    .local v16, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    invoke-static {v15}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v8, "Trailing"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1041
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    if-eqz v3, :cond_3

    goto :goto_4

    .line 1045
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1043
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1047
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1048
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .line 741
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_5

    move-object v3, v13

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 742
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    invoke-interface {v3, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 743
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 741
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    move v13, v2

    goto :goto_5

    .line 744
    :cond_5
    const/4 v13, 0x0

    .line 741
    :goto_5
    nop

    .line 746
    .local v13, "trailingHeight":I
    move-object/from16 v2, p2

    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1049
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1050
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1051
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1052
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_6
    if-ge v6, v7, :cond_7

    .line 1053
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1054
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1050
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v11, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 746
    .local v14, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    invoke-static {v11}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string v2, "Label"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1050
    .end local v11    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    if-eqz v2, :cond_6

    goto :goto_7

    .line 1054
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1052
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto :goto_6

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_7
    move-object/from16 v16, v2

    .line 1056
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1057
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 746
    .end local v3    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_7
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_8

    move-object v2, v9

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 747
    .local v3, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 746
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    goto :goto_8

    .line 748
    :cond_8
    const/4 v2, 0x0

    .line 746
    :goto_8
    nop

    .line 751
    .local v2, "labelHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1058
    .local v4, "$i$f$fastFirst":I
    nop

    .line 1059
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1060
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1061
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_9
    if-ge v7, v8, :cond_e

    .line 1062
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1063
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1059
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 751
    .local v15, "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    move-object/from16 v16, v3

    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v19, v4

    .end local v4    # "$i$f$fastFirst":I
    .local v19, "$i$f$fastFirst":I
    const-string/jumbo v4, "TextField"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1059
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    if-eqz v3, :cond_d

    .line 751
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v7    # "index$iv$iv":I
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirst":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v10, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 750
    nop

    .line 752
    .local v9, "textFieldHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1067
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1068
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1069
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1070
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_a
    if-ge v7, v8, :cond_a

    .line 1071
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1072
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1068
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v11

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 752
    .local v16, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    move-object/from16 v19, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v15}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v20, v4

    .end local v4    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string v4, "Hint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1068
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    if-eqz v3, :cond_9

    move-object v8, v11

    goto :goto_b

    .line 1072
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1070
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_a

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v19, v3

    move/from16 v20, v4

    .line 1074
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v7    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 1075
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 752
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_b

    move-object v3, v8

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 753
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 752
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    move v14, v3

    goto :goto_c

    .line 754
    :cond_b
    const/4 v14, 0x0

    .line 752
    :goto_c
    nop

    .line 757
    .local v14, "placeholderHeight":I
    nop

    .line 758
    if-lez v2, :cond_c

    const/4 v3, 0x1

    move v10, v3

    goto :goto_d

    :cond_c
    const/4 v10, 0x0

    .line 759
    :goto_d
    nop

    .line 760
    nop

    .line 761
    nop

    .line 762
    nop

    .line 763
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v15

    .line 764
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v17

    .line 765
    move-object/from16 v3, p0

    iget-object v4, v3, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 756
    move v11, v2

    move-object/from16 v18, v4

    invoke-static/range {v9 .. v18}, Landroidx/compose/material/TextFieldKt;->access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v4

    return v4

    .line 1059
    .end local v14    # "placeholderHeight":I
    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEach":I
    .restart local v7    # "index$iv$iv":I
    .local v9, "item$iv$iv":Ljava/lang/Object;
    .local v10, "it$iv":Ljava/lang/Object;
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    .local v19, "$i$f$fastFirst":I
    :cond_d
    move-object/from16 v3, p0

    .line 1063
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    nop

    .line 1061
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v19

    goto/16 :goto_9

    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirst":I
    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    .local v4, "$i$f$fastFirst":I
    :cond_e
    move/from16 v19, v4

    .line 1065
    .end local v4    # "$i$f$fastFirst":I
    .end local v7    # "index$iv$iv":I
    .restart local v19    # "$i$f$fastFirst":I
    nop

    .line 1066
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    new-instance v4, Ljava/util/NoSuchElementException;

    const-string v5, "Collection contains no element matching the predicate."

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 18
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "height"    # I
    .param p3, "intrinsicMeasurer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 708
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 986
    .local v2, "$i$f$fastFirst":I
    nop

    .line 987
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 988
    .local v4, "$i$f$fastForEach":I
    nop

    .line 989
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_d

    .line 990
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 991
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 987
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v10, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v11, 0x0

    .line 708
    .local v11, "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    invoke-static {v10}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "TextField"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 987
    .end local v10    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v11    # "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    if-eqz v10, :cond_c

    .line 708
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 707
    nop

    .line 709
    .local v4, "textFieldWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 995
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 996
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 997
    .local v5, "$i$f$fastForEach":I
    nop

    .line 998
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_1

    .line 999
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1000
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 996
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 709
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Label"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 996
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    if-eqz v12, :cond_0

    goto :goto_2

    .line 1000
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 998
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1002
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1003
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 709
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_2

    move-object v2, v10

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 710
    .local v3, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 709
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    move v5, v2

    goto :goto_3

    .line 711
    :cond_2
    const/4 v5, 0x0

    .line 709
    :goto_3
    nop

    .line 712
    .local v5, "labelWidth":I
    move-object/from16 v2, p1

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1004
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1005
    move-object v6, v2

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1006
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1007
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    if-ge v9, v10, :cond_4

    .line 1008
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1009
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1005
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 712
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v8, "Trailing"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1005
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    if-eqz v1, :cond_3

    goto :goto_5

    .line 1009
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1007
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1011
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1012
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 712
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_5
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    move-object v1, v12

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 713
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 712
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    move v3, v1

    goto :goto_6

    .line 714
    :cond_5
    const/4 v3, 0x0

    .line 712
    :goto_6
    nop

    .line 715
    .local v3, "trailingWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1013
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1014
    move-object v6, v1

    .restart local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1015
    .restart local v7    # "$i$f$fastForEach":I
    nop

    .line 1016
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_7
    if-ge v8, v9, :cond_7

    .line 1017
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1018
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1014
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 715
    .local v14, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    invoke-static {v13}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v1, "Leading"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1014
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    if-eqz v1, :cond_6

    goto :goto_8

    .line 1018
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1016
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    goto :goto_7

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_7
    move-object/from16 v16, v1

    .line 1020
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1021
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 715
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_8
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_8

    move-object v1, v11

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 716
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 715
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    move v2, v1

    goto :goto_9

    .line 717
    :cond_8
    const/4 v2, 0x0

    .line 715
    :goto_9
    nop

    .line 718
    .local v2, "leadingWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1022
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 1023
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1024
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1025
    const/4 v9, 0x0

    .restart local v9    # "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_a
    if-ge v9, v10, :cond_a

    .line 1026
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1027
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1023
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 718
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v17, v6

    .end local v6    # "$i$f$fastFirstOrNull":I
    .local v17, "$i$f$fastFirstOrNull":I
    const-string v6, "Hint"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1023
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    if-eqz v1, :cond_9

    move-object v8, v12

    goto :goto_b

    .line 1027
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1025
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v6, v17

    goto :goto_a

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v6

    .line 1029
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastFirstOrNull":I
    nop

    .line 1030
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 718
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_b

    move-object v1, v8

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v6, 0x0

    .line 719
    .local v6, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 718
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v6    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    move v6, v1

    goto :goto_c

    .line 720
    :cond_b
    const/4 v6, 0x0

    .line 718
    :goto_c
    nop

    .line 722
    .local v6, "placeholderWidth":I
    nop

    .line 723
    nop

    .line 724
    nop

    .line 725
    nop

    .line 726
    nop

    .line 727
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v7

    .line 721
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/TextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    move-result v1

    return v1

    .line 991
    .end local v6    # "placeholderWidth":I
    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    .local v2, "$i$f$fastFirst":I
    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v4, "$i$f$fastForEach":I
    .local v5, "index$iv$iv":I
    .local v7, "item$iv$iv":Ljava/lang/Object;
    :cond_c
    nop

    .line 989
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 993
    .end local v5    # "index$iv$iv":I
    :cond_d
    nop

    .line 994
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Collection contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
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

    .line 670
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
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

    .line 688
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 42
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

    .line 554
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v0, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v13

    .line 555
    .local v13, "topPaddingValue":I
    iget-object v0, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v12

    .line 558
    .local v12, "bottomPaddingValue":I
    invoke-static {}, Landroidx/compose/material/TextFieldKt;->getTextFieldTopPadding()F

    move-result v0

    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v22

    .line 559
    .local v22, "topPadding":I
    const/4 v0, 0x0

    .line 562
    .local v0, "occupiedSpaceHorizontally":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 564
    .local v10, "looseConstraints":J
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 941
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 942
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 943
    .local v4, "$i$f$fastForEach":I
    nop

    .line 944
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 945
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 946
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 942
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v9

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .local v17, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 564
    .local v18, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v1, "Leading"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 942
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    if-eqz v1, :cond_0

    goto :goto_1

    .line 946
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 944
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v19

    goto :goto_0

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_1
    move-object/from16 v19, v1

    .line 948
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 949
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 564
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_2

    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 563
    :goto_2
    nop

    .line 565
    .local v8, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 566
    nop

    .line 565
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    nop

    .line 570
    move-object/from16 v1, p2

    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 950
    .restart local v2    # "$i$f$fastFirstOrNull":I
    nop

    .line 951
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 952
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 953
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_3
    if-ge v5, v6, :cond_4

    .line 954
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 955
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v7

    .restart local v9    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 951
    .restart local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v9

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .restart local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 570
    .local v18, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    move-object/from16 v19, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v20, v2

    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string/jumbo v2, "Trailing"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 951
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    if-eqz v1, :cond_3

    goto :goto_4

    .line 955
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 953
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v19

    move/from16 v2, v20

    goto :goto_3

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_4
    move-object/from16 v19, v1

    move/from16 v20, v2

    .line 957
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v5    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 958
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 570
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 571
    if-eqz v9, :cond_5

    .line 570
    nop

    .line 571
    neg-int v1, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v10

    move/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v9, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object v9, v1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    .line 570
    :goto_5
    nop

    .line 572
    .local v9, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 573
    nop

    .line 572
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int v5, v0, v1

    .line 579
    .end local v0    # "occupiedSpaceHorizontally":I
    .local v5, "occupiedSpaceHorizontally":I
    neg-int v0, v12

    .line 580
    neg-int v1, v5

    .line 577
    nop

    .line 580
    nop

    .line 579
    nop

    .line 578
    invoke-static {v10, v11, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v0

    .line 577
    move-wide v3, v0

    .line 583
    .local v3, "labelConstraints":J
    move-object/from16 v0, p2

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 959
    .local v1, "$i$f$fastFirstOrNull":I
    nop

    .line 960
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 961
    .local v6, "$i$f$fastForEach":I
    nop

    .line 962
    const/4 v7, 0x0

    move-object/from16 v16, v0

    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v7, "index$iv$iv":I
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v7, v0, :cond_7

    .line 963
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 964
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 960
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/ui/layout/Measurable;

    .local v20, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 583
    .local v21, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$labelPlaceable$1":I
    move/from16 v24, v0

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v25, v1

    .end local v1    # "$i$f$fastFirstOrNull":I
    .local v25, "$i$f$fastFirstOrNull":I
    const-string v1, "Label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 960
    .end local v20    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$labelPlaceable$1":I
    if-eqz v0, :cond_6

    goto :goto_7

    .line 964
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 962
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    goto :goto_6

    .end local v25    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$i$f$fastFirstOrNull":I
    :cond_7
    move/from16 v25, v1

    .line 966
    .end local v1    # "$i$f$fastFirstOrNull":I
    .end local v7    # "index$iv$iv":I
    .restart local v25    # "$i$f$fastFirstOrNull":I
    nop

    .line 967
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/16 v18, 0x0

    .line 583
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v25    # "$i$f$fastFirstOrNull":I
    :goto_7
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 582
    :goto_8
    move-object v2, v0

    .line 584
    .local v2, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    if-eqz v2, :cond_a

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v1

    .local v1, "it":I
    const/4 v6, 0x0

    .line 585
    .local v6, "$i$a$-let-TextFieldMeasurePolicy$measure$lastBaseline$1":I
    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    move v1, v7

    .line 584
    .end local v1    # "it":I
    .end local v6    # "$i$a$-let-TextFieldMeasurePolicy$measure$lastBaseline$1":I
    :goto_9
    goto :goto_a

    .line 586
    :cond_a
    const/4 v1, 0x0

    .line 584
    :goto_a
    nop

    .line 587
    .local v1, "lastBaseline":I
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 591
    .local v34, "effectiveLabelBaseline":I
    if-eqz v2, :cond_b

    .line 592
    neg-int v6, v12

    sub-int v6, v6, v22

    sub-int v6, v6, v34

    goto :goto_b

    .line 594
    :cond_b
    neg-int v6, v13

    sub-int/2addr v6, v12

    .line 591
    :goto_b
    move v7, v6

    .line 596
    .local v7, "verticalConstraintOffset":I
    nop

    .line 597
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0xb

    const/16 v31, 0x0

    move-wide/from16 v24, p3

    move/from16 v17, v1

    .end local v1    # "lastBaseline":I
    .local v17, "lastBaseline":I
    invoke-static/range {v24 .. v31}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 600
    neg-int v6, v5

    .line 597
    nop

    .line 600
    nop

    .line 599
    nop

    .line 598
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v0

    .line 596
    nop

    .line 602
    .local v0, "textFieldConstraints":J
    nop

    .line 603
    move-object/from16 v6, p2

    .local v6, "$this$fastFirst$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 968
    .local v18, "$i$f$fastFirst":I
    nop

    .line 969
    move-object/from16 v19, v6

    .local v19, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 970
    .local v20, "$i$f$fastForEach":I
    nop

    .line 971
    const/16 v21, 0x0

    move-wide/from16 v35, v3

    .end local v3    # "labelConstraints":J
    .local v21, "index$iv$iv":I
    .local v35, "labelConstraints":J
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, v21

    .end local v21    # "index$iv$iv":I
    .local v4, "index$iv$iv":I
    :goto_c
    if-ge v4, v3, :cond_11

    .line 972
    move/from16 v21, v3

    move-object/from16 v3, v19

    .end local v19    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 973
    .local v19, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v24, v19

    .local v24, "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 969
    .local v25, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v26, v24

    check-cast v26, Landroidx/compose/ui/layout/Measurable;

    .local v26, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v27, 0x0

    .line 603
    .local v27, "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    move-object/from16 v28, v3

    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v28, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v37, v5

    .end local v5    # "occupiedSpaceHorizontally":I
    .local v37, "occupiedSpaceHorizontally":I
    const-string/jumbo v5, "TextField"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 969
    .end local v26    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v27    # "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    if-eqz v3, :cond_10

    .line 976
    .end local v4    # "index$iv$iv":I
    .end local v6    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirst":I
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$fastForEach":I
    .end local v24    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v3, v24

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 604
    invoke-interface {v3, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    .line 602
    nop

    .line 607
    .local v6, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0xe

    const/16 v31, 0x0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v31}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    .line 610
    .local v4, "placeholderConstraints":J
    nop

    .line 608
    nop

    .line 609
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 977
    .local v18, "$i$f$fastFirstOrNull":I
    nop

    .line 978
    move-object/from16 v19, v3

    .local v19, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 979
    .restart local v20    # "$i$f$fastForEach":I
    nop

    .line 980
    const/16 v21, 0x0

    move-wide/from16 v38, v0

    .end local v0    # "textFieldConstraints":J
    .restart local v21    # "index$iv$iv":I
    .local v38, "textFieldConstraints":J
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v21

    .end local v21    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    :goto_d
    if-ge v1, v0, :cond_d

    .line 981
    move/from16 v21, v0

    move-object/from16 v0, v19

    .end local v19    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 982
    .local v19, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v24, v19

    .restart local v24    # "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 978
    .local v25, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v26, v24

    check-cast v26, Landroidx/compose/ui/layout/Measurable;

    .restart local v26    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v27, 0x0

    .line 609
    .local v27, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    move-object/from16 v28, v0

    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v29, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string v3, "Hint"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 978
    .end local v26    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v27    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    if-eqz v0, :cond_c

    goto :goto_e

    .line 982
    .end local v24    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 980
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v21

    move-object/from16 v19, v28

    move-object/from16 v3, v29

    goto :goto_d

    .end local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v29    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_d
    move-object/from16 v29, v3

    move-object/from16 v28, v19

    .line 984
    .end local v1    # "index$iv$iv":I
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v29    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 985
    .end local v20    # "$i$f$fastForEach":I
    .end local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v24, 0x0

    .line 609
    .end local v18    # "$i$f$fastFirstOrNull":I
    .end local v29    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_e
    move-object/from16 v0, v24

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 610
    if-eqz v0, :cond_e

    .line 609
    nop

    .line 610
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 608
    :goto_f
    move/from16 v40, v7

    .end local v7    # "verticalConstraintOffset":I
    .local v40, "verticalConstraintOffset":I
    move-object v7, v0

    .line 613
    .local v7, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v23

    .line 614
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v24

    .line 615
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v25

    .line 616
    invoke-static {v2}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v26

    .line 617
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v27

    .line 618
    nop

    .line 612
    move-wide/from16 v28, p3

    invoke-static/range {v23 .. v29}, Landroidx/compose/material/TextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    move-result v23

    .line 621
    .local v23, "width":I
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v24

    .line 622
    if-eqz v2, :cond_f

    const/4 v0, 0x1

    move/from16 v25, v0

    goto :goto_10

    :cond_f
    const/16 v25, 0x0

    .line 623
    :goto_10
    nop

    .line 624
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v27

    .line 625
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v28

    .line 626
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v29

    .line 627
    nop

    .line 628
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v32

    .line 629
    iget-object v0, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 620
    move/from16 v26, v34

    move-wide/from16 v30, p3

    move-object/from16 v33, v0

    invoke-static/range {v24 .. v33}, Landroidx/compose/material/TextFieldKt;->access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v24

    .line 632
    .local v24, "height":I
    const/16 v18, 0x0

    new-instance v16, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;

    move-wide/from16 v26, v38

    .end local v38    # "textFieldConstraints":J
    .local v26, "textFieldConstraints":J
    move-object/from16 v0, v16

    move/from16 v29, v17

    .end local v17    # "lastBaseline":I
    .local v29, "lastBaseline":I
    move-object v1, v2

    move-object/from16 v30, v2

    .end local v2    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v30, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    move v2, v13

    move-wide/from16 v31, v35

    .end local v35    # "labelConstraints":J
    .local v31, "labelConstraints":J
    move/from16 v3, v29

    move-wide/from16 v35, v4

    .end local v4    # "placeholderConstraints":J
    .local v35, "placeholderConstraints":J
    move/from16 v4, v23

    move/from16 v33, v37

    .end local v37    # "occupiedSpaceHorizontally":I
    .local v33, "occupiedSpaceHorizontally":I
    move/from16 v5, v24

    move-wide/from16 v37, v10

    .end local v10    # "looseConstraints":J
    .local v37, "looseConstraints":J
    move-object/from16 v10, p0

    move/from16 v11, v34

    move/from16 v39, v12

    .end local v12    # "bottomPaddingValue":I
    .local v39, "bottomPaddingValue":I
    move/from16 v12, v22

    move/from16 v41, v13

    .end local v13    # "topPaddingValue":I
    .local v41, "topPaddingValue":I
    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v19, v16

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v15, p1

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-static/range {v15 .. v21}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 969
    .end local v23    # "width":I
    .end local v26    # "textFieldConstraints":J
    .end local v29    # "lastBaseline":I
    .end local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v31    # "labelConstraints":J
    .end local v33    # "occupiedSpaceHorizontally":I
    .end local v39    # "bottomPaddingValue":I
    .end local v40    # "verticalConstraintOffset":I
    .end local v41    # "topPaddingValue":I
    .local v0, "textFieldConstraints":J
    .restart local v2    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v4, "index$iv$iv":I
    .local v6, "$this$fastFirst$iv":Ljava/util/List;
    .local v7, "verticalConstraintOffset":I
    .restart local v10    # "looseConstraints":J
    .restart local v12    # "bottomPaddingValue":I
    .restart local v13    # "topPaddingValue":I
    .restart local v17    # "lastBaseline":I
    .local v18, "$i$f$fastFirst":I
    .local v19, "item$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$fastForEach":I
    .local v24, "it$iv":Ljava/lang/Object;
    .local v25, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v35, "labelConstraints":J
    .local v37, "occupiedSpaceHorizontally":I
    :cond_10
    move-wide/from16 v26, v0

    move-object/from16 v30, v2

    move/from16 v40, v7

    move/from16 v39, v12

    move/from16 v41, v13

    move/from16 v29, v17

    move-wide/from16 v31, v35

    move/from16 v33, v37

    move-wide/from16 v37, v10

    .line 973
    .end local v0    # "textFieldConstraints":J
    .end local v2    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v7    # "verticalConstraintOffset":I
    .end local v10    # "looseConstraints":J
    .end local v12    # "bottomPaddingValue":I
    .end local v13    # "topPaddingValue":I
    .end local v17    # "lastBaseline":I
    .end local v24    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v35    # "labelConstraints":J
    .restart local v26    # "textFieldConstraints":J
    .restart local v29    # "lastBaseline":I
    .restart local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v31    # "labelConstraints":J
    .restart local v33    # "occupiedSpaceHorizontally":I
    .local v37, "looseConstraints":J
    .restart local v39    # "bottomPaddingValue":I
    .restart local v40    # "verticalConstraintOffset":I
    .restart local v41    # "topPaddingValue":I
    nop

    .line 971
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, p1

    move/from16 v3, v21

    move-object/from16 v19, v28

    move/from16 v5, v33

    goto/16 :goto_c

    .end local v26    # "textFieldConstraints":J
    .end local v28    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v29    # "lastBaseline":I
    .end local v30    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v31    # "labelConstraints":J
    .end local v33    # "occupiedSpaceHorizontally":I
    .end local v37    # "looseConstraints":J
    .end local v39    # "bottomPaddingValue":I
    .end local v40    # "verticalConstraintOffset":I
    .end local v41    # "topPaddingValue":I
    .restart local v0    # "textFieldConstraints":J
    .restart local v2    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v5    # "occupiedSpaceHorizontally":I
    .restart local v7    # "verticalConstraintOffset":I
    .restart local v10    # "looseConstraints":J
    .restart local v12    # "bottomPaddingValue":I
    .restart local v13    # "topPaddingValue":I
    .restart local v17    # "lastBaseline":I
    .local v19, "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v35    # "labelConstraints":J
    :cond_11
    move-wide/from16 v26, v0

    .line 975
    .end local v0    # "textFieldConstraints":J
    .end local v4    # "index$iv$iv":I
    .restart local v26    # "textFieldConstraints":J
    nop

    .line 976
    .end local v19    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
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

    .line 679
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
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

    .line 697
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
